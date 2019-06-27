<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_ajax extends CI_Controller 
{	
	public function get_product()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		
		//code empty
		if(!$this->input->post('code'))
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_code_empty')
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
		
		//can't find product
		$code = $this->input->post('code');
		
		$code = trim($code);		
		
		$this->load->model('catalog/product_model');
		
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
			$product_info = $this->product_model->get_product($result['id']);
		
			$products[] = array(
				'label'       => $product_info[$key],
				'product_id'  => $product_info['id'],
				'upc'         => $product_info['upc'],
				'sku'         => $product_info['sku'],
				'asin'        => $product_info['asin'],
				'name'        => $product_info['name']
			);
		}
	
		$outdata = array(
			'success'   => true,
			'products'  => $products
		);
			
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_sale_products_volume()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('catalog/product_model');
		$this->load->model('setting/length_class_model');

		if($this->input->post('sale_product'))
		{
			$sale_products = $this->input->post('sale_product');
							
			$volume = $this->sale_model->get_sale_products_volume($sale_products);
						
			$outdata = array(
				'length'           => $volume['length'],
				'width'            => $volume['width'],
				'height'  		   => $volume['height'],
				'length_class_id'  => $volume['length_class_id']
			);
		} 
		else
		{
			$outdata = array(
				'length'           => 0,
				'width'            => 0,
				'height'  		   => 0,
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_sale_products_weight()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('catalog/product_model');
		$this->load->model('setting/weight_class_model');

		if($this->input->post('sale_product'))
		{
			$sale_products = $this->input->post('sale_product');
			
			$weight = $this->sale_model->get_sale_products_weight($sale_products);

			$outdata = array(
				'weight'  		   => $weight['weight'],
				'weight_class_id'  => $weight['weight_class_id']
			);
		}
		else
		{			
			$outdata = array(
				'weight'  		   => 0,
				'weight_class_id'  => $this->config->item('config_weight_class_id')
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}

	public function checkout()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_model');
		$this->load->model('catalog/product_model');
		
		$sale_id = $this->input->get('sale_id');
		
		$checkout = $this->checkout_model->get_sale_checkout($sale_id);	
		
		if($checkout['status'] == 2)
		{
			$outdata = array(
				'success'   => false,
				'message'   => $this->lang->line('error_sale_checkout_completed_notice')
			);	
		}
		else 
		{
			$sale_products = $this->input->post('sale_product');
			
			$checkout_products = array();
			
			foreach($sale_products as $product_id => $location_id)
			{
				$sale_product = $this->sale_model->get_sale_product($sale_id, $product_id);	
				
				$checkout_products[] = array(	
					'product_id'    => $product_id,
					'quantity'      => $sale_product['quantity'],
					'location_id'   => $location_id
				);
			}
		
			//checkout fee
			$checkout_fees = array();
			
			foreach($sale_products as $product_id)
			{
				$product_fees = $this->product_model->get_product_fees($product_id);	
				
				if($product_fees)
				{
					foreach($product_fees as $product_fee)
					{
						if($product_fee['type'] == 2)
						{
							$checkout_fees[] = array(
								'name'    => $product_fee['name'],
								'amount'  => $product_fee['amount']
							);
						}
					}
				}
			}
			
			$checkout_data = array(
				'sale_id'           => $sale_id,
				'tracking'          => '',
				'status'            => 1,
				'note'              => $this->lang->line('text_note_sale_checkout', $sale_id),
				'checkout_products' => $checkout_products,
				'checkout_fees'     => $checkout_fees
			);
			
			if($checkout)
			{
				$this->checkout_model->edit_checkout($checkout_data);	
			}
			else
			{	
				$this->checkout_model->add_checkout($checkout_data);	
			}
			
			$outdata = array(
				'success'   => true,
				'message'   => $this->lang->line('text_checkout_record_is_generated')				
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_tracking_detail()
	{		
		$this->load->model('sale/sale_model');
		
		if($this->input->get('sale_id')) 
		{
			$sale_id = $this->input->get('sale_id');
			
			$sale = $this->sale_model->get_sale($sale_id);	
			
			$tracking = $sale['tracking'];
			
			$code = $sale['shipping_provider'];
			
			$this->load->model('tracking/'. $code .'_model');

			$tracking_details = $this->{$code . '_model'}->get_tracking_detail($tracking);
		
			$outdata['tracking_details'] = $tracking_details;
		
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function update_tracking()
	{
		$this->load->model('sale/sale_model');
		
		$sale_id  = $this->input->post('sale_id');
		$tracking = $this->input->post('tracking');
			
		$result = $this->sale_model->update_tracking($sale_id, $tracking);
			
		$outdata = array(
			'success'     => ($result)?true:false
		);
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function change_status()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');
		$this->load->model('check/checkout_model');
		
		if($this->input->get('sale_id'))
		{
			$sale_id = $this->input->get('sale_id');
			
			$checkout = $this->checkout_model->get_sale_checkout($sale_id);

			$status = 0;	
			$message = null;

			//no checkout record yet
			if(!$checkout) 
			{
				$sale_products = $this->sale_model->get_sale_products($sale_id);
				
				$inventory_validated = true;
					
				$checkout_products = array();
					
				foreach($sale_products as $sale_product)
				{
					$inventories = $this->inventory_model->get_inventories_by_product($sale_product['product_id']);
						
					if(!$inventories || (sizeof($inventories) > 1) || ($inventories[0]['quantity'] < $sale_product['quantity'])) 
					{
						$inventory_validated = false;
						
						break;
					}
					else
					{
						$checkout_products[] = array(
							'product_id'   => $sale_product['product_id'],
							'inventory_id' => $inventories[0]['id'],
							'quantity'     => $sale_product['quantity']
						);
					}
				}
			
				if($inventory_validated)
				{
					$sale = $this->sale_model->get_sale($sale_id);
							
					$data = array(
						'sale_id'            => $sale_id,
						'tracking'           => '',
						'status'             => 1,
						'length'	         => $sale['length'],
						'width'	             => $sale['width'],
						'height'	         => $sale['height'],
						'weight'	         => $sale['weight'],
						'length_class_id'	 => $sale['length_class_id'],
						'weight_class_id'	 => $sale['weight_class_id'],
						'shipping_provider'	 => $sale['shipping_provider'],
						'shipping_service'	 => $sale['shipping_service'],
						'note'               => '',
						'checkout_products'  => $checkout_products
					);
					
					$checkout_id = $this->checkout_model->add_checkout($data);

					$success = true;
					$status = 2;	
				}
				else
				{
					$success = false;
					$status = 4;	
				}
			}
			
			//there is checkout record, now change status
			else
			{
				$checkout_id = $checkout['id'];
				
				if($checkout['status'] == 1) 
				{
					$checkout_products = $this->checkout_model->get_checkout_products($checkout_id);
					
					$validate_result = $this->validate_checkout_product($checkout_products);
					
					if($validate_result['success'])
					{
						$this->checkout_model->complete_checkout($checkout_id);
					
						$success = true;
						$status = 3;	
					}
					else
					{
						$success = false;
						$status = 4;
						$message = $validate_result['message'];
					}
				}
				
				if($checkout['status'] == 2)
				{
					$result = $this->checkout_model->uncomplete_checkout($checkout_id);
					
					$success = true;
					$status = 2;
				}
			}
			
			//send mail
			$store_id = $sale['store_id'];
			$store = $this->store_model->get_store($store_id);
			
			$client_id = $store['client_id'];
			$client = $this->client_model->get_client($client_id);
			
			$this->mail->protocol = 'smtp';
			$this->mail->smtp_hostname = $this->config->item('config_smtp_hostname');
			$this->mail->smtp_username = $this->config->item('config_smtp_username');
			$this->mail->smtp_password = $this->config->item('config_smtp_password');
			$this->mail->smtp_port = $this->config->item('config_smtp_port');

			$this->mail->setTo($client['email']);
			$this->mail->setFrom($this->config->item('config_smtp_username'));
			$this->mail->setSender('HUALONGUS');
			$this->mail->setSubject(html_entity_decode($this->lang->line('text_order_status_changed'), ENT_QUOTES, 'UTF-8'));
			
			if($status == 1) 
			{
				$this->mail->setHtml('<div>'.$this->lang->line('text_checkout_record_is_generated').'</div>');
			}
			
			if($status == 2) 
			{
				$this->mail->setHtml('<div>'.$this->lang->line('text_checkout_record_is_generated').'</div>');
			}
			
			if($status == 3) 
			{
				$this->mail->setHtml('<div>'.$this->lang->line('text_checkout_record_is_generated').'</div>');
			}
			
			if($status == 4) 
			{
				$this->mail->setHtml('<div>'.$this->lang->line('text_checkout_record_is_generated').'</div>');
			}
			
			
			$this->mail->setHtml('<div>safe and sound</div>');
			$this->mail->send();
			
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
}


