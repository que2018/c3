<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_sale extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
	}
	
	public function index()
	{
		$this->load->model('sale/sale_model');
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
				
				$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);
					
				if($inventories_data)
				{
					foreach($inventories_data as $inventory_data)
					{
						$inventories[] = array(
							'location_id'   => $inventory_data['location_id'],
							'location_name' => $inventory_data['location_name'],
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

	function get_sale()
	{
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
		
			$code = rtrim($code);
			
			$this->load->model('sale/sale_model');
			$this->load->model('inventory/inventory_model');
			
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
							$inventories[] = array(
								'location_id'   => $inventory_data['location_id'],
								'location_name' => $inventory_data['location_name'],
								'quantity'      => $inventory_data['quantity']
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
	
	function add_checkout()
	{		
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
		if($sale_id)
		{
			$result = $this->checkout_model->get_sale_checkout($sale_id);
	
			if($result && ($result['status'] == 2))
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
		if($this->input->post('checkout_product'))
		{
			$this->load->model('catalog/product_model');
			$this->load->model('warehouse/location_model');
			$this->load->model('inventory/inventory_model');

			$validated = true;
			
			$checkout_products = $this->input->post('checkout_product');
			
			$error_message = '';
			
			foreach($checkout_products as $checkout_product)
			{
				$product_id   = $checkout_product['product_id'];
				$quantity     = $checkout_product['quantity'];
				$location_id  = $checkout_product['location_id'];
				
				$product = $this->product_model->get_product($product_id);
				
				if(!$quantity || !$location_id || ($quantity < 0))
				{
					if(!$quantity)
					{
						$error_message .= sprintf($this->lang->line('error_checkout_product_quantity_required'), $product['name']);
						$error_message .= '<br>';
						
						if($validated) $validated = false;
					}
					
					if($quantity < 0)
					{
						$error_message .= sprintf($this->lang->line('error_checkout_product_quantity_negative'), $product['name']);
						$error_message .= '<br>';
						
						if($validated) $validated = false;
					}
					
					if(!$location_id)
					{
						$error_message .= $this->lang->line('error_checkout_product_location_required');
						$error_message .= '<br>';
						
						if($validated) $validated = false;
					}
				}
				else
				{
					$inventory = $this->inventory_model->get_inventory_by_location_product($location_id, $product_id);
					
					if($inventory['quantity'] < $quantity)
					{
						$location = $this->location_model->get_location($location_id);

						$error_message .= sprintf($this->lang->line('error_checkout_product_inventory_insufficient'), $product['name'], $location['name'], $inventory['quantity']);
						$error_message .= '<br>';
						
						if($validated) $validated = false;
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


