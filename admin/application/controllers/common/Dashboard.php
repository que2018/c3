<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MX_Controller  
{	
	public function index() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
		
				$this->load->module('sale_income');


		$this->load->library('currency');
		$this->load->library('datetimer');		
		
		$this->lang->load('common/dashboard');		
		
		// -------------------------------------------- sale income --------------------------------------------
		
		$this->load->model('sale/sale_model');
		
		$first_date_this_month = $this->datetimer->first_date_this_month();
		
		$filter_data = array(
			'filter_date_added_since' => $first_date_this_month
		);
		
		$sale_income = $this->sale_model->get_period_sale_income($filter_data);
		
		$current_datetime = $this->datetimer->current_datetime();
		
		$first_date_last_month = $this->datetimer->first_date_last_month();
		
		$date_difference = $this->datetimer->diff_days($current_datetime, $first_date_this_month);
		
		$relative_date_last_month = $this->datetimer->plus_days($first_date_last_month, $date_difference);
		
		$filter_data = array(
			'filter_date_added_from' => $first_date_last_month,
			'filter_date_added_to'   => $relative_date_last_month
		);
		
		$sale_income_last_month = $this->sale_model->get_period_sale_income($filter_data);
		
		if($sale_income_last_month > 0)
		{
			$sale_income_trend = ($sale_income - $sale_income_last_month) / $sale_income_last_month * 100;
		}
		else 
		{
			$sale_income_trend  = 100;
		}
		
		$data['sale_income_trend'] = number_format($sale_income_trend);
		
		$data['sale_income'] = $this->currency->format($sale_income);
				
		// -------------------------------------------- sale total --------------------------------------------
		
		$first_date_this_month = $this->datetimer->first_date_this_month();
		
		$current_datetime = $this->datetimer->current_datetime();
		
		$filter_data = array(
			'filter_date_added_since' => $first_date_this_month
		);
		
		$sale_total = $this->sale_model->get_period_sale_total($filter_data);
		
		$first_date_last_month = $this->datetimer->first_date_last_month();
		
		$date_difference = $this->datetimer->diff_days($current_datetime, $first_date_this_month);
		
		$relative_date_last_month = $this->datetimer->plus_days($first_date_last_month, $date_difference);
		
		$filter_data = array(
			'filter_date_added_from' => $first_date_last_month,
			'filter_date_added_to'   => $relative_date_last_month
		);
		
		$sale_total_last_month = $this->sale_model->get_period_sale_total($filter_data);
		
		if($sale_total_last_month > 0)
		{
			$sale_total_trend = ($sale_total - $sale_total_last_month) / $sale_total_last_month * 100;
		}
		else 
		{
			$sale_total_trend = 100;
		}
		
		$data['sale_total_trend'] = number_format($sale_total_trend);
		
		$data['sale_total'] = $sale_total;
		
		//------------------------------------------ total activity log ----------------------------------------
		
		$this->load->model('setting/activity_log_model');
		
		$yesterday_datetime = $this->datetimer->yesterday_datetime();
		
		$filter_data = array(
			'filter_date_added' => $yesterday_datetime
		);
		
		$data['total_activity'] = $this->activity_log_model->get_total_activity($filter_data);
		
		// ------------------------------------------ total alert -----------------------------------------------
		
		$this->load->model('catalog/product_model');
		
		$this->load->model('inventory/inventory_model');
		
		$data['alert_quantity'] = 0;
		
		$products = $this->product_model->get_all_products();
		
		if($products)
		{
			foreach($products as $product)
			{
				$product_id = $product['id'];
				$alert_quantity = $product['alert_quantity'];
				
				$quantity = $this->inventory_model->get_product_quantity($product_id);

				if($quantity < $alert_quantity)
					$data['alert_quantity']++;
			}
		}
		
		// ----------------------------------------- recent activities ------------------------------------------
		
		$data['recent_activity_logs'] = array();
		
		$filter_data = array(
			'start'      => 0,
			'limit'      => $this->config->item('config_dashboard_activity_limit'),
			'sort'       => 'activity_log.date_added',
			'order'      => 'DESC'
		);
		
		$activity_logs = $this->activity_log_model->get_activity_logs($filter_data);
		
		foreach($activity_logs as $activity_log) 
		{	
			if($activity_log['user'])
				$user = $activity_log['user'];
			else 
				$user = $this->lang->line('text_a_user');
		
			$data['recent_activity_logs'][] = array(
				'user'        => $user,
				'description' => $activity_log['description'],
				'date_added'  => $activity_log['date_added']
			);
		}
		
		// ------------------------------------------ recent sales ---------------------------------------------
		
		$this->load->model('store/store_model');
		
		$filter_data = array(
			'start' => 0,
			'limit' => $this->config->item('config_dashboard_order_limit'),
			'sort'  => 'sale.date_added',
			'order' => 'DESC'
		);
		
		$sales_data = $this->sale_model->get_sales($filter_data);
		
		$recent_sale_products = array();
		
		if($sales_data)
		{
			foreach($sales_data as $sale_data)
			{
				$sale_id = $sale_data['id'];
				$store_id = $sale_data['store_id'];
				
				$store_data = $this->store_model->get_store($store_id);
				
				$sale_products = $this->sale_model->get_sale_products($sale_id);
				
				$date_added = $this->datetimer->format_display($sale_data['date_added']);

				foreach($sale_products as $sale_product)
				{					
					$total = $this->currency->format($sale_product['price'] * $sale_product['quantity']);
					
					$recent_sale_products[] = array(
						'product_id'  => $sale_product['product_id'],
						'name'    	  => $sale_product['name'],
						'date'        => $date_added,
						'store'       => $store_data['name'],
						'total'       => $total
					);
				}
			}
		}
		
		$data['recent_sale_products'] = array_slice($recent_sale_products, 0, $this->config->item('config_dashboard_order_limit'));
		
		// ------------------------------------------ recent store sync ---------------------------------------------
		
		$this->load->model('store/store_sync_history_model');
		
		$filter_data = array(
			'start' => 0,
			'limit' => $this->config->item('config_dashboard_store_sync_limit'),
			'sort'  => 'store_sync_history.date_added',
			'order' => 'DESC'
		);
		
		$store_sync_histories = $this->store_sync_history_model->get_store_sync_histories($filter_data);
		
		$data['recent_store_sync_histories'] = array();
		
		if($store_sync_histories)
		{
			foreach($store_sync_histories as $store_sync_history)
			{
				$data['recent_store_sync_histories'][] = array(
					'store_id'     => $store_sync_history['store_id'],
					'store'        => $store_sync_history['store'],
					'type'         => $store_sync_history['type'],
					'status'       => $store_sync_history['status'],
					'date_added'   => $store_sync_history['date_added'],
					'link'         => base_url() . 'store/store_sync_history/detail?store_sync_history_id=' . $store_sync_history['id']
				);
			}
		}
		
		// ------------------------------------------ recent sale total group by day ---------------------------------------------
		
		$this->load->model('sale/sale_report_model');
		
		$filter_date_added_to = $this->datetimer->current_datetime();
		
		$filter_date_added_from = $this->datetimer->mins_days($current_datetime, 30);
		
		$filter_data = array(
			'filter_date_added_from' => $filter_date_added_from,
			'filter_date_added_to'   => $filter_date_added_to
		);
		
		$data['total_sales_by_date'] = array();
		
		$total_sales_by_date = $this->sale_report_model->get_total_sales_by_date($filter_data);
		
		if($total_sales_by_date)
		{
			foreach($total_sales_by_date as $total_sale_by_date)
			{
				$year = $this->datetimer->get_year($total_sale_by_date['date_added']);
				
				$month = $this->datetimer->get_month($total_sale_by_date['date_added']);
				
				$day = $this->datetimer->get_day($total_sale_by_date['date_added']);
				
				$total = $total_sale_by_date['total'];
				
				$data['total_sales_by_date'][] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'total'   => $total
				);
			}
		}
		
		
		// ------------------------------------------ recent sale total group by day ---------------------------------------------
		
		$this->load->model('sale/sale_report_model');
		
		$filter_date_added_to = $this->datetimer->current_datetime();
		
		$filter_date_added_from = $this->datetimer->mins_days($current_datetime, 30);
		
		$filter_data = array(
			'filter_date_added_from' => $filter_date_added_from,
			'filter_date_added_to'   => $filter_date_added_to
		);
		
		$data['sum_sales_by_date'] = array();
		
		$sum_sales_by_date = $this->sale_report_model->get_sum_sales_by_date($filter_data);
		
		if($sum_sales_by_date)
		{
			foreach($sum_sales_by_date as $sum_sale_by_date)
			{
				$year = $this->datetimer->get_year($sum_sale_by_date['date_added']);
				
				$month = $this->datetimer->get_month($sum_sale_by_date['date_added']);
				
				$day = $this->datetimer->get_day($sum_sale_by_date['date_added']);
				
				$sum = $sum_sale_by_date['sum'];
				
				$data['sum_sales_by_date'][] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'sum'     => $sum
				);
			}
		}
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		Modules::run('module/sale_income/index');

		
		$this->load->view('common/dashboard', $data);
	}
}
