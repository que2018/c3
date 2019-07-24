<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Sale_trend extends MX_Controller 
{
	public function index()
	{	
		$this->load->library('currency');
	
		$this->load->model('sale/sale_model');
		$this->load->model('sale/sale_report_model');
		
		$filter_date_added_to = $this->datetimer->current_datetime();
		
		$current_datetime = $this->datetimer->current_datetime();
		
		$filter_date_added_from = $this->datetimer->mins_days($current_datetime, 30);
		
		$filter_data = array(
			'filter_date_added_from' => $filter_date_added_from,
			'filter_date_added_to'   => $filter_date_added_to
		);
		
		//get total order by date
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
				
		$filter_date_added_to = $this->datetimer->current_datetime();
		
		$filter_date_added_from = $this->datetimer->mins_days($current_datetime, 30);
		
		$filter_data = array(
			'filter_date_added_from' => $filter_date_added_from,
			'filter_date_added_to'   => $filter_date_added_to
		);
		
		//get total income by date
		$data['total_incomes_by_date'] = array();
		
		$total_incomes_by_date = $this->sale_report_model->get_total_income_by_date($filter_data);
		
		if($total_incomes_by_date)
		{
			foreach($total_incomes_by_date as $total_income_by_date)
			{
				$year = $this->datetimer->get_year($total_income_by_date['date_added']);
				
				$month = $this->datetimer->get_month($total_income_by_date['date_added']);
				
				$day = $this->datetimer->get_day($total_income_by_date['date_added']);
				
				$sum = $total_income_by_date['sum'];
				
				$data['total_incomes_by_date'][] = array(
					'year'    => $year,
					'month'   => $month,
					'day'     => $day,
					'sum'     => $sum
				);
			}
		}
		
		$sale_income_num = $this->sale_model->get_period_sale_income($filter_data);
		
		$data['sale_income_num'] = $this->currency->format($sale_income_num);
		
		$data['sale_total_num'] = $this->sale_model->get_period_sale_total($filter_data);

		$this->load->view('sale_trend', $data);
	}
}
