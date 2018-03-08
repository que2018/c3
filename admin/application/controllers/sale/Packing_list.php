<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Packing_list extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
	}
	
	function index()
	{
		$this->load->model('check/checkout_model');
		
		$sale_id = $this->input->get('sale_id');
		
		$sale = $this->sale_model->get_sale($sale_id);

		$data['total']       	    = $sale['total'];			
		$data['status_id']   		= $sale['status_id'];	
		$data['tracking']   		= $sale['tracking'];
		$data['note']    		    = $sale['note'];
		$data['name']       		= $sale['name'];
		
		$data['title'] = sprintf($this->lang->line('text_packing_list_title'), $sale_id);
		
		$sale_checkout = $this->checkout_model->get_sale_checkout($sale_id);
		
		if($sale_checkout)
		{
			$checkout_id = $sale_checkout['id'];
			
			$checkout_products = $this->checkout_model->get_checkout_products($checkout_id);
			
			$sale_products_location = array();
			
			if($checkout_products)
			{
				foreach($checkout_products as $checkout_product)
				{
					$sale_products_location[$checkout_product['product_id']] = $checkout_product['location_name'];
				}
			}
		}
		
		$sale_products_data = $this->sale_model->get_sale_products($sale_id);
		
		$data['sale_products'] = array();
			
		foreach($sale_products_data as $sale_product_data)
		{
			$product_id = $sale_product_data['product_id'];
						
			$data['sale_products'][] = array(
				'product_id'         => $product_id,
				'upc'                => $sale_product_data['upc'],
				'sku'                => $sale_product_data['sku'],
				'name'               => $sale_product_data['name'],
				'quantity'           => $sale_product_data['quantity'],
				'location'           => (isset($sale_products_location[$product_id]))?$sale_products_location[$product_id]:''
			);
		}
				
		$this->load->view('sale/sale_packing_list', $data);
	}
}


