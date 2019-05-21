<?php

class Activity 
{
    function run()	
	{
		$CI = & get_instance();

		$CI->load->helper('url');
		
		$CI->lang->load('log/activity_log');
		
		$CI->load->model('log/activity_log_model');

		$data = array(
			'user_id'     => $CI->auth->get_user_id(),
			'ip_address'  => $CI->input->ip_address(),
			'uri'         => uri_string(),
			'description' => $CI->lang->line('activity_' . str_replace('/', '_', uri_string())),
			'method'      => $CI->input->server('REQUEST_METHOD')
		);
		
		$CI->activity_log_model->add_activity_log($data);
    }
}

?>