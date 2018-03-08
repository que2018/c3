<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_ajax extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('store/store');
		
		$this->load->model('store/store_model');
	}
	
	public function autocomplete()
	{
		$outdata = array();
		
		if($this->input->post('store_name'))
		{
			$store_name = $this->input->post('store_name');
			
			$stores_data = $this->store_model->find_stores_by_name($store_name);

			if($stores_data) 
			{
				$stores = array();
				
				foreach($stores_data as $store_data)
				{
					$stores[] = array(
						'store_id'  => $store_data['id'],
						'name'      => $store_data['name'],
						'label'     => $store_data['name']
					);
				}
				
				$outdata = array(
					'success'  => true,
					'stores'  => $stores
				);
			}
			else 
			{
				$outdata = array(
					'success'  => false
				);
			}
		}
		
		echo json_encode($outdata);
		die();
	}
}


