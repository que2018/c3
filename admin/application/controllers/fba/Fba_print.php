<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_print extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/fba');
		
		$this->load->model('check/fba_model');
	}
	
	function index()
	{
		$fba_id = $this->input->get('fba_id');
				
		$fba = $this->fba_model->get_fba($fba_id);	
		
		$data['tracking']      = $fba['tracking'];
		$data['note']          = $fba['note'];
		$data['status']        = $fba['status'];

		$data['title'] = sprintf($this->lang->line('text_print_title'), $fba_id);
		
		$params = array(
			'path' => $this->config->item('config_barcode_path')
		);
		
		$data['fba_products'] = array();
		
		$fba_products = $this->fba_model->get_fba_products($fba_id);	
		
		foreach($fba_products as $fba_product) 
		{
			$data['fba_products'][] = array(
				'product_id'     => $fba_product['product_id'],
				'name'           => $fba_product['name'],
				'upc'            => $fba_product['upc'],
				'sku'            => $fba_product['sku'],
				'location_name'  => $fba_product['location_name'],
				'batch' 		 => $fba_product['batch'],
				'quantity_draft' => $fba_product['quantity_draft']
			);
		}
		
		$data['fba_id'] = $fba_id;
		
		$this->load->view('check/fba_print', $data);
	}
}


