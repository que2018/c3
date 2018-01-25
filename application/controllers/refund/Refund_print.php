<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Refund_print extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('refund/refund');
		
		$this->load->model('refund/refund_model');
	}
	
	function index()
	{
		$refund_id = $this->input->get('refund_id');
				
		$refund = $this->refund_model->get_refund($refund_id);	
		
		$data['tracking']      = $refund['tracking'];
		$data['note']          = $refund['note'];
		$data['status']        = $refund['status'];

		$data['title'] = sprintf($this->lang->line('text_print_title'), $refund_id);
		
		$data['refund_products'] = array();
		
		$refund_products = $this->refund_model->get_refund_products($refund_id);	
		
		foreach($refund_products as $refund_product) 
		{
			$data['refund_products'][] = array(
				'product_id'    => $refund_product['product_id'],
				'name'          => $refund_product['name'],
				'upc'           => $refund_product['upc'],
				'sku'           => $refund_product['sku'],
				'quantity'      => $refund_product['quantity'],
				'location_name' => $refund_product['location_name']
			);
		}
		
		$data['refund_id'] = $refund_id;
		
		$this->load->view('refund/refund_print', $data);
	}
}


