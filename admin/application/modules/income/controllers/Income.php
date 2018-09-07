<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Income extends MX_Controller 
{
	public function index()
	{
		$this->load->library('currency');
		$this->load->library('datetimer');		

		$this->load->model('finance/transaction_model');

		$first_date_this_month = $this->datetimer->first_date_this_month();
		
		$filter_data = array(
			'filter_date_added_since' => $first_date_this_month
		);
		
		$income = $this->transaction_model->get_total_income($filter_data);
		
		$current_datetime = $this->datetimer->current_datetime();
		
		$first_date_last_month = $this->datetimer->first_date_last_month();
		
		$date_difference = $this->datetimer->diff_days($current_datetime, $first_date_this_month);
		
		$relative_date_last_month = $this->datetimer->plus_days($first_date_last_month, $date_difference);
		
		$filter_data = array(
			'filter_date_added_from' => $first_date_last_month,
			'filter_date_added_to'   => $relative_date_last_month
		);
		
		$income_last_month = $this->transaction_model->get_total_income($filter_data);
		
		if($income_last_month > 0)
		{
			$income_trend = ($income - $income_last_month) / $income_last_month * 100;
		}
		else 
		{
			$income_trend  = 100;
		}
		
		$data['income_trend'] = number_format($income_trend);
		
		$data['income'] = $this->currency->format($income);
		
		$this->load->view('income', $data);
	}
}
