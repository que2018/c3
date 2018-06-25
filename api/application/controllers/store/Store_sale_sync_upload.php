<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Store_sale_sync_upload extends CI_Controller 
{
	public function upload($store_id)
	{
		$this->lang->load('store/store_sale_sync_upload');		
		
		$this->load->model('store/store_model');
		$this->load->model('store/store_sync_history_model');
				
		$store = $this->store_model->get_store($store_id);	
		
		$code = $store['platform'];
		
		$this->load->model('platform/' . $code . '_model');	
		
		$result = $this->{$code . '_model'}->upload($store_id);
					
		if($result['success'])	
		{
			$sync_history_data = array(
				'store_id'   => $store_id,
				'type'       => 1,
				'status'     => 1,
				'messages'   => $result['messages']
			);
			
			$this->store_sync_history_model->add_store_sync_history($sync_history_data);
			
			$outdata = array(
				'success'   => true,
				'messages'  => $result['messages']
			);
		}
		else
		{
			$sync_history_data = array(
				'store_id'   => $store_id,
				'type'       => 1,
				'status'     => 2,
				'messages'   => $result['messages']
			);
			
			$this->store_sync_history_model->add_store_sync_history($sync_history_data);
			
			$outdata = array(
				'success'   => false,
				'messages'  => $result['messages']
			);
		}
			
		return $outdata;
	}
	
	public function upload_auto()
	{		
		$this->load->model('store/store_sale_sync_model');
		
		$store = $this->store_sale_sync_model->get_active_upload_store();
			
		if($store)
		{
			$store_id = $store['store_id'];
		
			$this->upload($store_id);
					
			//get all store ids
			$stores = $this->store_sale_sync_model->get_all_upload_stores();	
			
			$store_ids = array();

			foreach($stores as $store)
			{
				$store_ids[] = $store['store_id'];
			}
						
			//find next store
			$max_index = sizeof($store_ids) - 1;
			
			$index = array_search($store_id, $store_ids);
			
			if($index == $max_index)
			{
				$next_store_id = $store_ids[0];
			}
			else 
			{
				$next_store_id = $store_ids[$index + 1];
			}
			
			$this->store_sale_sync_model->activate_next_upload_store($next_store_id);	
		}
	}
}


