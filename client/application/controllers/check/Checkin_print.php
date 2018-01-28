<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkin_print extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
	}
	
	function index()
	{
		$id = $this->input->get('id');
		
		$this->load->library('barcoder');
		
		$checkin = $this->checkin_model->get_checkin($id);	
		
		$data['location_id']   = $checkin['location_id'];
		$data['tracking']      = $checkin['tracking'];
		$data['note']          = $checkin['note'];
		$data['status']        = $checkin['status'];

		$data['title'] = sprintf($this->lang->line('text_print_title'), $id);
		
		$params = array(
			'path' => $this->config->item('config_barcode_path')
		);
		
		$data['barcode'] = $this->barcoder->generate($id, $params);
		
		$data['checkin_products'] = array();
		
		$checkin_products = $this->checkin_model->get_checkin_products($id);	
		
		foreach($checkin_products as $checkin_product) 
		{
			$data['checkin_products'][] = array(
				'product_id'    => $checkin_product['product_id'],
				'name'          => $checkin_product['name'],
				'upc'           => $checkin_product['upc'],
				'sku'           => $checkin_product['sku'],
				'quantity'      => $checkin_product['quantity'],
				'location_name' => $checkin_product['location_name']
			);
		}
		
		$this->load->view('check/checkin_print', $data);
	}
}


