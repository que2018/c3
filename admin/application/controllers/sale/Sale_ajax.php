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
		$this->load->library('mail');
		
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');
		$this->load->model('check/checkout_model');
		
		if($this->input->get('sale_id'))
		{
			$sale_id = $this->input->get('sale_id');
			
			$sale = $this->sale_model->get_sale($sale_id);
			
			$sale_products = $this->sale_model->get_sale_products($sale_id);
			
			$checkout = $this->checkout_model->get_sale_checkout($sale_id);

			$status = 0;	
			$message = null;

			if(!$checkout) 
			{
				$result = $this->validate_sale_checkout($sale_id);

				if($result['success'])
				{		
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
						'checkout_products'  => $result['checkout_products']
					);
					
					$checkout_id = $this->checkout_model->add_checkout($data);

					$success = true;
					$status = 2;	
				}
				else
				{
					$success = false;
					$status = 4;	
					$message = $result['message'];
				}
			}
			else
			{
				$checkout_id = $checkout['id'];
				
				if($checkout['status'] == 1) 
				{
					$result = $this->validate_sale_checkout($sale_id);
					
					if($result['success'])
					{
						$this->checkout_model->complete_checkout($checkout_id);
					
						$success = true;
						$status = 3;	
					}
					else
					{
						$success = false;
						$status = 4;
						$message = $result['message'];
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
			/* $store_id = $sale['store_id'];
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
			$this->mail->setSender($this->config->item('config_smtp_sender')); 
			
			if($status == 1) 
			{
				$this->mail->setSubject(sprintf($this->lang->line('text_checkout_record_generated'), $sale_id));
			}
			
			if($status == 2) 
			{
				$this->mail->setSubject(sprintf($this->lang->line('text_checkout_record_checking_out'), $sale_id));
			}
			
			if($status == 3) 
			{
				$this->mail->setSubject(sprintf($this->lang->line('text_checkout_record_completed'), $sale_id));
			}
						
			$html  = '<div><strong>'.$this->lang->line('text_order_detail').'</strong></div>';
			$html .= '<br>';
			
			foreach($sale_products as $sale_product)
			{
				$html .= '<div>';
				$html .= '<span><strong>'.$this->lang->line('entry_product_name').':&nbsp;</strong>'.$sale_product['name'].'</spans>&nbsp;&nbsp;';
				$html .= '<span><strong>'.$this->lang->line('entry_product_quantity').':&nbsp;</strong>'.$sale_product['quantity'].'</spans>';
				$html .= '</div>';
			}
			
			$this->mail->setHtml($html);
		
			$this->mail->send(); */
			
			$outdata = array(
				'success'   => $success,
				'status'    => $status,
				'message'   => $message
			);
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	private function validate_sale_checkout($sale_id)
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('inventory/inventory_model');

		$validated = true;
		
		$message = '';
		
		$checkout_products = array();
		
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		
		foreach($sale_products as $sale_product)
		{
			$inventories = $this->inventory_model->get_inventories_by_product($sale_product['product_id']);
				
			if(!$inventories)
			{
				$message .= sprintf($this->lang->line('error_product_no_inventory'), $sale_product['name']).'<br>';
								
				if($validated)
					$validated = false;
			}
			else if(sizeof($inventories) > 1)
			{
				$message .= sprintf($this->lang->line('error_product_multi_inventory'), $sale_product['name']).'<br>';
				
				if($validated)
					$validated = false;
			}
			else if($inventories[0]['quantity'] < $sale_product['quantity'])
			{
				$message .= sprintf($this->lang->line('error_product_inventory_insufficent'), $sale_product['name']).'<br>';
								
				if($validated)
					$validated = false;
			}
			else
			{
				$checkout_products[] = array(
					'product_id'    => $sale_product['product_id'],
					'inventory_id'  => $inventories[0]['id'],
					'quantity'      => $sale_product['quantity']
				);
			}
		}
		
		$result = array(
			'success'           => ($validated)?true:false,
			'message'           => $message,
			'checkout_products' => $checkout_products
		);
		
		return $result;
	}
}


