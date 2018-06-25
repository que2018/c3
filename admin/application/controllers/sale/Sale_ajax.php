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
}


