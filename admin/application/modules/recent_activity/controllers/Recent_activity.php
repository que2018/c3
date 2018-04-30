<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Recent_activity extends MX_Controller 
{
	public function index()
	{
		$this->load->model('recent_activity_model');
		
		$data['recent_activity_logs'] = array();
		
		$filter_data = array(
			'start'      => 0,
			'limit'      => $this->config->item('config_dashboard_activity_limit'),
			'sort'       => 'activity_log.date_added',
			'order'      => 'DESC'
		);
		
		$activity_logs = $this->recent_activity_model->get_activity_logs($filter_data);
		
		if($activity_logs)
		{
			foreach($activity_logs as $activity_log) 
			{	
				if($activity_log['user'])
				{
					$user = $activity_log['user'];
				}
				else 
				{
					$user = $this->lang->line('text_a_user');
				}
				
				$data['recent_activity_logs'][] = array(
					'user'        => $user,
					'description' => $activity_log['description'],
					'date_added'  => $activity_log['date_added']
				);
			}
		}
		
		$this->load->view('recent_activity', $data);
	}
}
