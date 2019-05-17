<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Yesterday_activity extends MX_Controller 
{
	public function index()
	{
		$this->load->library('datetimer');		

		$this->load->model('setting/activity_log_model');
		
		$yesterday_datetime = $this->datetimer->yesterday_datetime();
		
		$filter_data = array(
			'filter_date_added' => $yesterday_datetime
		);
		
		$data['total_activity'] = $this->activity_log_model->get_total_activity($filter_data); 
		
		$this->load->view('yesterday_activity', $data);
	}
}
