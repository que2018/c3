<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Recent_store_sync extends MX_Controller 
{
	public function index()
	{
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
		
		$this->load->view('recent_store_sync', $data);
	}
}
