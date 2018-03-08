<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Search extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('search/search');
		
		$this->load->model('search/search_model');
	}
	
	function index()
	{
		if($this->input->get('key')) 
		{
			$key = $this->input->get('key');
			
			$this->load->model('sale/sale_model');
			$this->load->model('check/checkin_model');
			$this->load->model('check/checkout_model');
			$this->load->model('catalog/product_model');
			$this->load->model('inventory/inventory_model');
			$this->load->model('warehouse/location_model');
			$this->load->model('warehouse/warehouse_model');

			$results = array();
			
			//product
			$products = $this->product_model->search_product($key);	
	
			if($products)
			{
				foreach($products as $product)
				{
					$results[] = array(
						'type'        => 'product',  
						'product_id'  => $product['id'],
						'name'   	  => $product['name'],
						'upc'    	  => $product['upc'],
						'sku'    	  => $product['sku']
					);
				}
			}
			
			//checkin
			$checkins = $this->checkin_model->search_checkin($key);	
			
			if($checkins)
			{
				foreach($checkins as $checkin)
				{
					$results[] = array(
						'type'        => 'checkin',  
						'checkin_id'  => $checkin['id'],
						'tracking'    => $checkin['tracking'],
						'status'      => $checkin['status']
					);
				}
			}
			
			//checkout
			$checkouts = $this->checkout_model->search_checkout($key);	
			
			if($checkouts)
			{
				foreach($checkouts as $checkout)
				{
					$results[] = array(
						'type'        => 'checkout',  
						'checkout_id' => $checkout['id'],
						'tracking'    => $checkout['tracking'],
						'status'      => $checkout['status']
					);
				}
			}
			
			//inventory
			$inventories = $this->inventory_model->search_inventory($key);	
			
			if($inventories)
			{
				foreach($inventories as $inventory)
				{
					$results[] = array(
						'type'         => 'inventory',  
						'inventory_id' => $inventory['id'],
						'product'      => $inventory['product_name'],
						'location'     => $inventory['location_name'],
						'quantity'     => $inventory['quantity']
					);
				}
			}
			
			
			//order
			$sales = $this->sale_model->search_sale($key);	
			
			if($sales)
			{
				foreach($sales as $sale)
				{
					$results[] = array(
						'type'          => 'sale',  
						'sale_id'       => $sale['id'],
						'store_sale_id' => $sale['store_sale_id'],
						'tracking'      => $sale['tracking']
					);
				}
			}
		
			//location
			$locations = $this->location_model->search_location($key);	
			
			if($locations)
			{
				foreach($locations as $location)
				{
					$results[] = array(
						'type'        => 'location',  
						'location_id' => $location['id'],
						'name'        => $location['name'],
						'code'        => $location['code']
					);
				}
			}
			
			//warehouse
			$warehouses = $this->warehouse_model->search_warehouse($key);	
			
			if($warehouses)
			{
				foreach($warehouses as $warehouse)
				{
					$results[] = array(
						'type'         => 'warehouse',  
						'warehouse_id' => $warehouse['id'],
						'name'         => $warehouse['name']
					);
				}
			}
			
			if($results)
			{
				$count = count($results);
				
				$data['results'] = $results;
				
				$data['text_result'] = sprintf($this->lang->line('text_result'), $count, $key);
			}
			else
			{
				$data['results'] = '';
				
				$data['text_no_result'] = sprintf($this->lang->line('text_no_result'), $key);
			}
				
			$this->load->view('common/header');
			$this->load->view('search/search', $data);
			$this->load->view('common/footer');
		}
		else
		{
			$this->load->view('common/header');
			$this->load->view('common/footer');
		}
	}
}


