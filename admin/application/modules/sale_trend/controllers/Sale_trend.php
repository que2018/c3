<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Sale_trend extends MX_Controller 
{
	public function index()
	{	
		$this->load->library('currency');
		$this->load->library('datetimer');

		$this->load->language('sale_trend');

		$this->load->model('sale/sale_report_model');
		$this->load->model('finance/transaction_model');
		
		//today filter
		$filter_data_today = array(
			'filter_group_type'      => 'HOUR',
			'filter_date_added_from' => $this->datetimer->beginning_today(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//yesterday filter
		$filter_data_yesterday = array(
			'filter_group_type'      => 'HOUR',
			'filter_date_added_from' => $this->datetimer->first_date_this_month(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//month filter
		$filter_data_month = array(
			'filter_group_type'      => 'DATE',
			'filter_date_added_from' => $this->datetimer->first_date_this_month(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//last month filter
		$filter_data_last_month = array(
			'filter_group_type'      => 'DATE',
			'filter_date_added_from' => $this->datetimer->first_date_this_month(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//year filter
		$filter_data_year = array(
			'filter_group_type'      => 'MONTH',
			'filter_date_added_from' => $this->datetimer->first_date_this_year(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//last year filter
		$filter_data_last_year = array(
			'filter_group_type'      => 'MONTH',
			'filter_date_added_from' => $this->datetimer->first_date_this_month(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//get group data
		$data['group_sales_today'] = $this->group_sales($filter_data_today);
		$data['group_sales_month'] = $this->group_sales($filter_data_month);
		$data['group_sales_year']  = $this->group_sales($filter_data_year);

		$data['group_incomes_today'] = $this->group_income($filter_data_today);
		$data['group_incomes_month'] = $this->group_income($filter_data_month);
		$data['group_incomes_year']  = $this->group_income($filter_data_year);

		//get total data
		$sale_total_today      = $this->sale_report_model->get_period_sale_total($filter_data_today);
		$sale_total_yesterday  = $this->sale_report_model->get_period_sale_total($filter_data_yesterday);
		$sale_total_month      = $this->sale_report_model->get_period_sale_total($filter_data_month);
		$sale_total_last_month = $this->sale_report_model->get_period_sale_total($filter_data_last_month);
		$sale_total_year       = $this->sale_report_model->get_period_sale_total($filter_data_year);
		$sale_total_last_year  = $this->sale_report_model->get_period_sale_total($filter_data_last_year);

		$income_total_today      = $this->transaction_model->get_total_income($filter_data_today);
		$income_total_yesterday  = $this->transaction_model->get_total_income($filter_data_yesterday);
		$income_total_month      = $this->transaction_model->get_total_income($filter_data_month);
		$income_total_last_month = $this->transaction_model->get_total_income($filter_data_last_month);
		$income_total_year       = $this->transaction_model->get_total_income($filter_data_year);
		$income_total_last_year  = $this->transaction_model->get_total_income($filter_data_last_year);

		//total
		$data['sale_total_today'] = $sale_total_today;
		$data['sale_total_month'] = $sale_total_month;
		$data['sale_total_year']  = $sale_total_year;
		
		$data['income_total_today'] = $income_total_today;
		$data['income_total_month'] = $income_total_month;
		$data['income_total_year']  = $income_total_year;

		//trend
		$data['sale_total_today_trend']  = ($sale_total_yesterday)?number_format(($sale_total_today - $sale_total_yesterday) / $sale_total_yesterday * 100):100;	
		$data['sale_income_today_trend'] = ($income_total_yesterday)?number_format(($income_total_today - $income_total_yesterday) / $income_total_yesterday * 100):100;
		$data['sale_total_month_trend']  = ($sale_total_last_month)?number_format(($sale_total_month - $sale_total_last_month) / $sale_total_last_month * 100):100;
		$data['sale_income_month_trend'] = ($income_total_last_month)?number_format(($income_total_month - $income_total_last_month) / $income_total_last_month * 100):100;
		$data['sale_total_year_trend']   = ($sale_total_year)?number_format(($sale_total_year - $sale_total_year) / $sale_total_year * 100):100;
		$data['sale_income_year_trend']  = ($income_total_last_year)?number_format(($income_total_year - $income_total_last_year) / $income_total_last_year * 100):100;
		
		$this->load->view('sale_trend', $data);
	}
	
	//get group sale
	private function group_sales($filter_data)
	{
		$this->load->library('datetimer');

		$this->load->model('sale/sale_report_model');
		
		$group_sales = array();
		
		$group_sales_data = $this->sale_report_model->get_group_sales($filter_data);
		
		if($group_sales_data)
		{
			foreach($group_sales_data as $group_sale_data)
			{
				$year  = $this->datetimer->get_year($group_sale_data['date_added']);
				$month = $this->datetimer->get_month($group_sale_data['date_added']);
				$day   = $this->datetimer->get_day($group_sale_data['date_added']);
				
				$total = $group_sale_data['total'];
				
				$group_sales[] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'total'   => $total
				);
			}
		}
		
		return $group_sales;
	}
	
	//get group income
	private function group_income($filter_data)
	{
		$this->load->library('datetimer');
		
		$this->load->model('finance/transaction_model');
		
		$group_incomes = array();
		
		$group_incomes_data = $this->transaction_model->get_group_income($filter_data);
		
		if($group_incomes_data)
		{
			foreach($group_incomes_data as $group_income_data)
			{
				$year  = $this->datetimer->get_year($group_income_data['date_added']);
				$month = $this->datetimer->get_month($group_income_data['date_added']);
				$day   = $this->datetimer->get_day($group_income_data['date_added']);
				
				$sum = $group_income_data['sum'];
				
				$group_incomes[] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'sum'     => $sum  
				);
			}
		}
			
		return $group_incomes;
	}
	
	//get group sale
	private function total_sales($filter_data)
	{
		$this->load->model('sale/sale_report_model');

		$sale_total_month = $this->sale_report_model->get_period_sale_total($filter_data);
		$sale_income_month = $this->transaction_model->get_total_income($filter_data);
		
		$data['sale_income_month'] = $this->currency->format($sale_income_month);
		$data['sale_total_month'] = $sale_total_month;
	}
}
