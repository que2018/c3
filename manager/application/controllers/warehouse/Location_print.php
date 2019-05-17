<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Location_print extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->load->model('warehouse/location_model');
	}
	
	public function index()
	{	
		if($this->input->get('code')) 
		{
			$code = $this->input->get('code');
		
			$location = $this->location_model->get_location_by_code($code);

			$data['name'] = $location['name'];
			
			$data['code'] = $code;
			
			$data['location_barcode_width']      = $this->config->item('config_location_barcode_width');
			$data['location_barcode_height']     = $this->config->item('config_location_barcode_height');
			$data['location_barcode_posx']       = $this->config->item('config_location_barcode_posx');
			$data['location_barcode_posy']       = $this->config->item('config_location_barcode_posy');
			$data['location_barcode_name_size']  = $this->config->item('config_location_barcode_name_size');
			$data['location_barcode_code_size']  = $this->config->item('config_location_barcode_code_size');
			
			$this->load->view('warehouse/location_print', $data);
		}
	}
	
	public function batch()
	{	
		if($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		}
		else
		{
			$page = 0;
		}
		
		$limit = $this->config->item('config_page_limit');
		
		$filter_data = array(
			'start'   => ($page - 1) * $limit,
			'limit'   => $limit
		);
		
		$data['locations'] = array();
		
		$locations = $this->location_model->get_locations($filter_data);	
		
		if($locations)
		{
			foreach($locations as $location)
			{
				$data['locations'][] = array(
					'name'   => $location['name'],
					'code'   => $location['code']
				);
			}
		}
		
		$data['location_barcode_batch_width']      = $this->config->item('config_location_barcode_batch_width');
		$data['location_barcode_batch_height']     = $this->config->item('config_location_barcode_batch_height');
		$data['location_barcode_batch_posx']       = $this->config->item('config_location_barcode_batch_posx');
		$data['location_barcode_batch_posy']       = $this->config->item('config_location_barcode_batch_posy');
		$data['location_barcode_batch_name_size']  = $this->config->item('config_location_barcode_batch_name_size');
		$data['location_barcode_batch_code_size']  = $this->config->item('config_location_barcode_batch_code_size');
		$data['location_barcode_batch_margin']     = $this->config->item('config_location_barcode_batch_margin');
		$data['location_barcode_batch_page_item']  = $this->config->item('config_location_barcode_batch_page_item');
		
		$this->load->view('warehouse/location_print_batch', $data);
	}
}


