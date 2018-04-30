<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Sale_income extends MX_Controller 
{
	public function index()
	{
		$this->load->library('currency');
		$this->load->library('datetimer');		

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
		
		$this->load->view('sale_income', $data);
	}
}
