<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Dashboard extends MX_Controller  
{	
	public function index() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('currency');
		$this->load->library('datetimer');		
		
		$this->lang->load('common/dashboard');		
		
		$this->load->model('sale/sale_model');
		
		//sale income
		$this->load->module('sale_income');
		
		$data['sale_income'] = Modules::run('module/sale_income/index');
		
		//sale total
		$this->load->module('sale_total');
	
		$data['sale_total'] = Modules::run('module/sale_total/index');
		
		//activity
		$this->load->module('activity');
	
		$data['activity'] = Modules::run('module/activity/index');
		
		//total alert
		$this->load->module('total_alert');
	
		$data['total_alert'] = Modules::run('module/total_alert/index');
		
		//recent activity
		$this->load->module('recent_activity');
	
		$data['recent_activity'] = Modules::run('module/recent_activity/index');
		
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
		
		$current_datetime = $this->datetimer->current_datetime();
		
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
		
		$this->load->view('common/dashboard', $data);
	}
}
