<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_sale_sync_upload extends CI_Controller {

	function __construct()
	{
		parent::__construct();	

		$this->lang->load('store/store_sale_sync_upload');		
	}
	
	function upload($store_id)
	{
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
	
	function upload_sale($sale_id)
	{
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('store/store_sync_history_model');
			
		$sale = $this->sale_model->get_sale($sale_id);	

		if($sale && $sale['store_id'] && $sale['store_sale_id'])
		{
			$store_id = $sale['store_id'];
			
			$store = $this->store_model->get_store($store_id);	
		
			$code = $store['platform'];
			
			$this->load->model('platform/' . $code . '_model');	
		
			$result = $this->{$code . '_model'}->upload_sale($sale_id);
			
			if($result['success'])	
			{
				$messages[] = $result['message'];
				
				$sync_history_data = array(
					'store_id'   => $store_id,
					'type'       => 1,
					'status'     => 1,
					'messages'   => $messages
				);
								
				$this->store_sync_history_model->add_store_sync_history($sync_history_data);
				
				$outdata = array(
					'success'   => true,
					'message'  => $result['message']['content']
				);
			}
			else
			{
				$sync_history_data = array(
					'store_id'   => $store_id,
					'type'       => 1,
					'status'     => 2,
					'messages'   => $result['message']['content']
				);
				
				$this->store_sync_history_model->add_store_sync_history($sync_history_data);
				
				$outdata = array(
					'success'   => false,
					'message'   => $result['message']
				);
			}
		}
		else
		{			
			$outdata = array(
				'success'   => false,
				'message'  => $this->lang->line('error_sale_or_store_sale_info_misssing')
			);
		}
			
		return $outdata;
	}
	
	function upload_ajax()
	{
		if($this->input->get('store_id')) 
		{
			$store_id = $this->input->get('store_id');
		
			$outdata = $this->upload($store_id);
		
			echo json_encode($outdata);
		}
	}
	
	function upload_sale_ajax()
	{
		if($this->input->get('sale_id')) 
		{
			$sale_id = $this->input->get('sale_id');
		
			$outdata = $this->upload_sale($sale_id);
		
			echo json_encode($outdata);
		}
	}
}


