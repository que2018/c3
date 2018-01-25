<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkout_ajax extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
	}
	
	function get_product()
	{
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');
		
		//can not find product
		$code = $this->input->post('code');
		
		$code = trim($code);		
				
		$key = 'upc';
		
		$results = $this->product_model->find_product_by_upc($code);
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_sku($code);
			
			$key = 'sku';
		}
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_asin($code);
			
			$key = 'asin';
		}
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_name($code);	
			
			$key = 'name';
		}
			
		if(!$results)
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_product_not_found')
			);
			
			echo json_encode($outdata);
			die();
		}
		 
		//find product
		$products = array();
		
		foreach($results as $result)
		{
			$product = $this->product_model->get_product($result['id']);
			
			//fee
			$product_fees = $this->product_model->get_product_fees($result['id']);
			
			$fees = array();
			
			if($product_fees)
			{
				foreach($product_fees as $product_fee)
				{
					file_put_contents("log.txt", $product_fee['type'] . "\n", FILE_APPEND);
					
					if($product_fee['type'] == 2)
					{
						$fees[] = array(
							'name'   => $product_fee['name'],
							'amount' => $product_fee['amount']
						);
					}
				}
			}
			
			//locations
			$product_inventories = $this->inventory_model->get_inventories_by_product($result['id']);
			
			if($product_inventories)
			{
				$locations = array();
				
				foreach($product_inventories as $product_inventory)
				{
					$locations[] = array(
						'location_id' => $product_inventory['location_id'],
						'name'        => $product_inventory['location_name']
					);
				}
				
				$products[] = array(
					'label'       => $product[$key],
					'product_id'  => $product['id'],
					'upc'         => $product['upc'],
					'sku'         => $product['sku'],
					'asin'        => $product['asin'],
					'name'        => $product['name'],
					'fees'        => $fees,
					'locations'   => $locations
				);
			}
		}
	
		$outdata = array(
			'success'   => true,
			'products'  => $products
		);
			
		echo json_encode($outdata);
	}
	
	function get_locations()
	{
		if($this->input->get('client_id'))
		{
			$client_id = $this->input->get('client_id');
			
			$this->load->model('warehouse/location_model');

			$locations_data = $this->location_model->get_locations_by_client($client_id);
		
			if($locations_data) 
			{				
				$locations = array();
				
				foreach($locations_data as $location_data)
				{
					$locations[] = array(
						'id'    => $location_data['id'],
						'name'  => $location_data['name']
					);
				}
				
				$outdata = array(
					'success'   => true,
					'locations' => $locations
				);
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'msg'      => $this->lang->line('error_client_no_locations')
				);
			}
					
			echo json_encode($outdata);
		}
	}
	
	function check_inventory()
	{
		$this->load->model('inventory/inventory_model');
		
		$product_id   = $this->input->post('product_id');
		$location_id  = $this->input->post('location_id');
		$quantity     = $this->input->post('quantity');
		
		$inventory = $this->inventory_model->get_inventory_by_location_product($location_id, $product_id);
		
		if($inventory['quantity'] > $quantity)
		{
			$outdata = array(
				'success'   => true
			);
		}
		else
		{
			$outdata = array(
				'success'   => false,
				'quantity'  => $inventory['quantity'],
				'msg'       => sprintf($this->lang->line('error_inventory_quanatity_alert'), $inventory['quantity'])
			);
		}
		
		echo json_encode($outdata);	
	}
}


