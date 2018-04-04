<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkout_sale extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_model');
		$this->load->model('inventory/inventory_model');
		
		if($this->input->get('sale_id'))
		{
			$sale_id = $this->input->get('sale_id');
			
			$sale = $this->sale_model->get_sale($sale_id);
			
			$sale_products = $this->sale_model->get_sale_products($sale_id);
			
			$data['sale_id']       = $sale['id'];
			$data['store_sale_id'] = $sale['store_sale_id'];
			$data['tracking']      = $sale['tracking'];

			$data['checkout_products'] = array();
			
			foreach($sale_products as $sale_product)
			{
				$product_id = $sale_product['product_id'];
				
				$inventories = array();
				
				$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);
					
				if($inventories_data)
				{
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
							'quantity'      => $inventory_data['quantity']
						);
					}
				}
				
				$data['checkout_products'][] = array(
					'product_id'      => $sale_product['product_id'],
					'name'            => $sale_product['name'],
					'upc'             => $sale_product['upc'],
					'sku'             => $sale_product['sku'],
					'quantity'        => $sale_product['quantity'],
					'multi_location'  => (count($inventories) > 1)?true:false,
					'inventories'     => $inventories
				);
			}

			$this->load->view('common/header');
			$this->load->view('check/checkout_sale', $data);
			$this->load->view('common/footer');
		}
		else
		{
			$this->load->view('common/header');
			$this->load->view('check/checkout_sale_empty');
			$this->load->view('common/footer');	
		}
	}

	public function get_sale()
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('sale/sale_model');
		$this->load->model('inventory/inventory_model');
		
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
		
			$code = rtrim($code);
			
			
			if(is_numeric($code))
			{
				$result = $this->sale_model->get_sale($code);
			}
			else 
			{
				$result = false;
			}
				
			if(!$result) 
			{				
				$result = $this->sale_model->get_sale_by_store_sale_id($code);
			}
			
			if(!$result) 
			{
				$result = $this->sale_model->get_sale_by_tracking($code);
			}
			
			if(!$result)
			{
				$outdata = array(
					'success'  => false,
					'message'  => $this->lang->line('error_sale_not_found')
				);
			}
			else
			{
				$checkout_products = array();
				
				$sale_id = $result['id'];
										
				$sale_products = $this->sale_model->get_sale_products($sale_id);
				
				foreach($sale_products as $sale_product)
				{
					$inventories = array();
					
					$product_id = $sale_product['product_id'];
					
					$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);
					
					if($inventories_data)
					{
						foreach($inventories_data as $inventory_data)
						{
							if($inventory_data['batch'])
							{
								$location_name = sprintf($this->lang->line('text_checkout_location_name'), $inventory_data['location_name'], $inventory_data['batch']);
							}
							else
							{
								$location_name = $inventory_data['location_name'];
							}
							
							$inventories[] = array(
								'inventory_id'   => $inventory_data['id'],
								'location_id'    => $inventory_data['location_id'],
								'location_name'  => $location_name,
								'quantity'       => $inventory_data['quantity']
							);
						}
					}
					
					$checkout_products[] = array(
						'product_id'      => $sale_product['product_id'],
						'name'            => $sale_product['name'],
						'upc'             => $sale_product['upc'],
						'sku'             => $sale_product['sku'],
						'multi_location'  => (count($inventories) > 1)?true:false,
						'inventories'     => $inventories
					);
				}
				
				$outdata = array(
					'success'           => true,
					'sale_id'           => $sale_id,
					'store_sale_id'     => $result['store_sale_id'],
					'tracking'          => $result['tracking'],
					'checkout_products' => $checkout_products
				);
			}
		}
		else
		{
			$outdata = array(
				'success'   => false,
				'message'   => $this->lang->line('error_code_empty')
			);
		}

		echo json_encode($outdata);
		die();
	}
	
	public function add_checkout()
	{	
		$this->lang->load('check/checkout');
		
		$this->load->model('sale/sale_model');
		
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('sale_id', $this->lang->line('text_sale_id'), 'callback_validate_sale');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_tracking');
		$this->form_validation->set_rules('checkout_product', $this->lang->line('text_checkout_product'), 'callback_validate_checkout_product');
		
		$sale_id = $this->input->post('sale_id');
		
		$sale = $this->sale_model->get_sale($sale_id);
		
		$data = array(
			'sale_id'            => $this->input->post('sale_id'),
			'tracking'           => $this->input->post('tracking'),
			'status'             => $this->input->post('status'),
			'length'	         => $sale['length'],
			'width'	             => $sale['width'],
			'height'	         => $sale['height'],
			'weight'	         => $sale['weight'],
			'length_class_id'	 => $sale['length_class_id'],
			'weight_class_id'	 => $sale['weight_class_id'],
			'shipping_provider'	 => $sale['shipping_provider'],
			'shipping_service'	 => $sale['shipping_service'],
			'note'               => '',
			'checkout_products'  => $this->input->post('checkout_product')
		);
		
		if($this->form_validation->run() == true)
		{
			$checkout = $this->checkout_model->get_sale_checkout($sale_id);
			
			if(!$checkout)
			{
				$this->checkout_model->add_checkout($data);	
			}
			else
			{
				$checkout_id = $checkout['id'];
				
				$this->checkout_model->edit_checkout($checkout_id, $data);	
			}

			$outdata = array(
				'success'   => true,
				'message'   => $this->lang->line('text_checkout_generate_success')
			);			
		}
		else
		{
			$outdata = array(
				'success'   => false,
				'message'   => validation_errors()
			);
		}
	
		echo json_encode($outdata);
		die();
	}
	
	function validate_sale($sale_id)
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');

		if($sale_id)
		{
			$result = $this->checkout_model->get_sale_checkout($sale_id);
	
			if($result && ($result['status'] == 1))
			{
				$this->form_validation->set_message('validate_sale', sprintf($this->lang->line('error_sale_checkout_exist'), $sale_id));
			
				return false;
			}
			else if($result && ($result['status'] == 2))
			{
				$this->form_validation->set_message('validate_sale', sprintf($this->lang->line('error_sale_checkout_completed'), $sale_id));
			
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			$this->form_validation->set_message('validate_sale', $this->lang->line('error_checkout_sale_empty'));
			
			return false;
		}
	}
	
	function validate_tracking($tracking)
	{	
		$this->lang->load('check/checkout');
	
		$this->load->model('check/checkout_model');
	
		if($tracking)
		{
			$result = $this->checkout_model->get_checkout_by_tracking($tracking);
	
			if($result)
			{
				$this->form_validation->set_message('validate_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
			
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}

	function validate_checkout_product($checkout_products)
	{
		$this->lang->load('check/checkout');
	
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');
	
		if($this->input->post('checkout_product'))
		{
			$validated = true;
			
			$error_message = '';
			
			$checkout_products = $this->input->post('checkout_product');
			
			foreach($checkout_products as $i => $checkout_product)
			{
				if(empty($checkout_product['quantity']) || ($checkout_product['quantity'] < 0) || !isset($checkout_product['inventory_id']))
				{
					if(empty($checkout_product['quantity']))
					{
						$inventory = $this->inventory_model->get_inventory($checkout_product['inventory_id']);
						
						$error_message .= sprintf($this->lang->line('error_checkout_product_quantity_required'), $inventory['product_name']);
						$error_message .= '<br>';
						
						if($validated) 
							$validated = false;
					}
					
					if($checkout_product['quantity'] < 0)
					{		
						$inventory = $this->inventory_model->get_inventory($checkout_product['inventory_id']);
				
						$error_message .= sprintf($this->lang->line('error_checkout_product_quantity_negative'), $inventory['product_name']);
						$error_message .= '<br>';
						
						if($validated) 
							$validated = false;
					}
					
					if(!isset($checkout_product['inventory_id']))
					{
						$error_message .= sprintf($this->lang->line('error_checkout_product_location_required'), $i + 1);
						$error_message .= '<br>';
						
						if($validated) 
							$validated = false;
					}
				}
				else
				{	
					$inventory = $this->inventory_model->get_inventory($checkout_product['inventory_id']);
			
					if($inventory['quantity'] < $checkout_product['quantity'])
					{	
						if($inventory['batch'])
						{
							$error_message .= sprintf($this->lang->line('error_checkout_product_inventory_insufficient'), $inventory['product_name'], $inventory['location_name'], $inventory['batch'], $inventory['quantity']);
						}
						else
						{
							$error_message .= sprintf($this->lang->line('error_checkout_product_inventory_insufficient_non_batch'), $inventory['product_name'], $inventory['location_name'], $inventory['quantity']);
						}
						
						$error_message .= '<br>';
						
						if($validated) 
							$validated = false;
					}
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkout_product', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			$this->form_validation->set_message('validate_checkout_product', $this->lang->line('error_checkout_product_required'));
			
			return false;
		}	
	}
}


