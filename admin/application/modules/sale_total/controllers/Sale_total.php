<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Sale_total extends MX_Controller 
{
	public function index()
	{
		$this->load->library('currency');
		$this->load->library('datetimer');		

		$this->load->model('sale/sale_model');
		
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
		
		$this->load->view('sale_total', $data);
	}
}
