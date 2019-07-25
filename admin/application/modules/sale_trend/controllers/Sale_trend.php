<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Sale_trend extends MX_Controller 
{
	public function index()
	{	
		$this->load->library('currency');
	
		$this->load->model('sale/sale_report_model');
		$this->load->model('finance/transaction_model');
		
		//this month filter
		$filter_data = array(
			'filter_date_added_from' => $this->datetimer->first_date_this_month(),
			'filter_date_added_to'   => $this->datetimer->current_datetime()
		);
		
		//last month filter
		$last_month_filter_data = array(
			'filter_date_added_from' => $this->datetimer->first_date_last_month(),
			'filter_date_added_to'   =>$this->datetimer->last_date_last_month()
		);
		
		//get total order by date
		$data['total_sales_by_date'] = array();
		
		$total_sales_by_date = $this->sale_report_model->get_total_sales_by_date($filter_data);
		
		if($total_sales_by_date)
		{
			foreach($total_sales_by_date as $total_sale_by_date)
			{
				$year   = $this->datetimer->get_year($total_sale_by_date['date_added']);
				$month  = $this->datetimer->get_month($total_sale_by_date['date_added']);
				$day    = $this->datetimer->get_day($total_sale_by_date['date_added']);
				
				$total = $total_sale_by_date['total'];
				
				$data['total_sales_by_date'][] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'total'   => $total
				);
			}
		}
				
		//get total income by date
		$data['total_incomes_by_date'] = array();
		
		$total_incomes_by_date = $this->sale_report_model->get_total_income_by_date($filter_data);
		
		if($total_incomes_by_date)
		{
			foreach($total_incomes_by_date as $total_income_by_date)
			{
				$year   = $this->datetimer->get_year($total_income_by_date['date_added']);
				$month  = $this->datetimer->get_month($total_income_by_date['date_added']);
				$day    = $this->datetimer->get_day($total_income_by_date['date_added']);
				
				$sum = $total_income_by_date['sum'];
				
				$data['total_incomes_by_date'][] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'sum'     => $sum  
				);
			}
		}
		
		//this month total
		$sale_total_month = $this->sale_report_model->get_period_sale_total($filter_data);
		$sale_income_month = $this->transaction_model->get_total_income($filter_data);
		$data['sale_income_month'] = $this->currency->format($sale_income_month);
		$data['sale_total_month'] = $sale_total_month;

		//last month total
		$sale_total_last_month = $this->sale_report_model->get_period_sale_total($last_month_filter_data);
		$sale_income_last_month = $this->transaction_model->get_total_income($last_month_filter_data);
		
		$data['sale_total_trend'] = number_format(($sale_total_month - $sale_total_last_month) / $sale_total_last_month * 100);
		$data['sale_income_trend'] = number_format(($sale_income_month - $sale_income_last_month) / $sale_income_last_month * 100);

		$this->load->view('sale_trend', $data);
	}
}
