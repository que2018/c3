<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_ajax extends CI_Controller 
{	
	public function get_product()
	{
		$this->load->model('sale/sale_model');
		
		//code empty
		if(!$this->input->post('code'))
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_code_empty')
			);
			
			echo json_encode($outdata);
			die();
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
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
		 
		//find product
		$products = array();
		
		if($results)
		{
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
}


