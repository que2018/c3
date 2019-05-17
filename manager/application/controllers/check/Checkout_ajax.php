<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_ajax extends CI_Controller 
{
	public function get_product()
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
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
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
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
				$inventories = array();
				
				foreach($product_inventories as $product_inventory)
				{
					if($product_inventory['batch'])
					{
						$location_name = sprintf($this->lang->line('text_location_batch'), $product_inventory['location_name'], $product_inventory['batch']);
					}
					else
					{
						$location_name = $product_inventory['location_name'];
					}
					
					$inventories[] = array(
						'inventory_id'  => $product_inventory['id'],
						'location_name' => $location_name
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
					'inventories' => $inventories
				);
			}
		}
	
		$outdata = array(
			'success'   => true,
			'products'  => $products
		);
			
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_locations()
	{
		$this->lang->load('check/checkout');
		
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
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function get_product_inventories()
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('inventory/inventory_model');
		
		if($this->input->get('product_id'))
		{
			$product_id = $this->input->get('product_id');
			
			$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);
		
			if($inventories_data) 
			{				
				$inventories = array();
				
				foreach($inventories_data as $inventory_data)
				{
					if($inventory_data['batch'])
					{
						$location_name = sprintf($this->lang->line('text_location_batch'), $inventory_data['location_name'], $inventory_data['batch']);
					}
					else
					{
						$location_name = $inventory_data['location_name'];
					}
					
					$inventories[] = array(
						'inventory_id'  => $inventory_data['id'],
						'location_name' => $location_name,
						'quantity'      => $inventory_data['quantity'],
					);
				}
				
				$outdata = array(
					'success'     => true,
					'inventories' => $inventories
				);
			}
			else
			{
				$outdata = array(
					'success'  => false
				);
			}
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function check_inventory()
	{
		$this->lang->load('check/checkout');
				
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
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function change_status()
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
		
		if($this->input->get('checkout_id'))
		{
			$checkout_id = $this->input->get('checkout_id');
			
			$checkout = $this->checkout_model->get_checkout($checkout_id);

			if($checkout['status'] == 1) 
			{
				$checkout_products = $this->checkout_model->get_checkout_products($checkout_id);
				
				$validate_result = $this->validate_checkout_product($checkout_products);
				
				if($validate_result['success'])
				{
					$result = $this->checkout_model->complete_checkout($checkout_id);
				
					$success = ($result)?true:false;
				
					$status = 2;
					
					$message = null;
				}
				else
				{
					$success = false;
					
					$status = 1;
					
					$message = $validate_result['message'];
				}
			}
			
			if($checkout['status'] == 2)
			{
				$result = $this->checkout_model->uncomplete_checkout($checkout_id);
				
				$success = ($result)?true:false;
				
				$status = 1;
				
				$message = null;
			}

			$outdata = array(
				'success'   => $success,
				'status'    => $status,
				'message'   => $message
			);
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	private function validate_checkout_product($checkout_products)
	{	
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');

		$validated = true;
		
		$error_message = '';
		
		foreach($checkout_products as $checkout_product)
		{
			$product_id    = $checkout_product['product_id'];
			$inventory_id  = $checkout_product['inventory_id'];
			$quantity      = $checkout_product['quantity'];
			
			$product_info = $this->product_model->get_product($product_id);

			$inventory = $this->inventory_model->get_inventory($inventory_id);
			
			if($inventory['quantity'] < $quantity)
			{
				$location_id = $inventory['location_id'];
				
				$location_info = $this->location_model->get_location($location_id);
				
				if($inventory['batch'])
				{
					$error_message .= sprintf($this->lang->line('error_checkout_product_inventory_insufficient'), $product_info['name'], $location_info['name'], $inventory['batch'], $inventory['quantity']);
				}
				else
				{
					$error_message .= sprintf($this->lang->line('error_checkout_product_inventory_insufficient_non_batch'), $product_info['name'], $location_info['name'], $inventory['quantity']);
				}
				
				$error_message .= '<br>';
				
				if($validated)
					$validated = false;
			}
		}
		
		$result = array(
			'success' => ($validated)?true:false,
			'message' => $error_message
		);
		
		return $result;
	}
	
	public function upload_file() 
	{	
		$this->lang->load('check/checkout');
	
		$this->load->model('check/checkout_model');

		if(!empty($_FILES)) 
		{	
			$temp_file = $_FILES['file']['tmp_name'];      
			$target_path = FILEPATH . $_FILES['file']['name'];  
	 
			$result = move_uploaded_file($temp_file, $target_path);
			
			if($result)
			{
				$outdata = array(
					'success'  => true,
					'name'     => basename($target_path),
					'path'     => $_FILES['file']['name']
				);
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'message'  => $this->lang->line('error_file_move')
				);
			}
		}
		else
		{
			$outdata = array(
				'success'  => false,
				'message'  => $this->lang->line('error_file_upload')
			);
		}

		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));		
	}
}


