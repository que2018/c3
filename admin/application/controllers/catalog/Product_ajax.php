<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_ajax extends CI_Controller 
{
	public function autocomplete()
	{	
		$this->load->model('catalog/product_model');
	
		$outdata = array();
		
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
			
			$key = 'name';
						
			$products = $this->product_model->find_product_by_name($code);
			
			if(!$products)
			{
				$key = 'upc';
				
				$products = $this->product_model->find_product_by_upc($code);
			}
			
			if(!$products)
			{
				$key = 'sku';
				
				$products = $this->product_model->find_product_by_sku($code);
			}
			
			if($products) 
			{
				foreach($products as $product) 
				{
					$outdata[] = array(
						'product_id' => $product['id'],
						'label'      => $product[$key]
					);
				}
			}
		}
	
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function update_value()
	{
		$this->load->model('catalog/product_model');
		
		if($this->input->post)
		{
		
			$product_id  = $this->input->post('product_id');
			$field       = $this->input->post('field');
			$value       = $this->input->post('value');
			
			$data = array(
				'field'  => $field,
				'value'  => $value
			);
				
			$result = $this->product_model->update_product_value($product_id, $data);
				
			$outdata = array(
				'success'     => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function get_products_volume()
	{
		$this->load->model('catalog/product_model');
		$this->load->model('setting/length_class_model');

		if($this->input->post('product'))
		{
			$products = $this->input->post('product');
								
			$volume = $this->product_model->get_products_volume($products);
					
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
	
	public function get_products_weight()
	{
		$this->load->model('catalog/product_model');
		$this->load->model('setting/weight_class_model');

		if($this->input->post('product'))
		{
			$products = $this->input->post('product');
			
			$weight = $this->product_model->get_products_weight($products);

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
}


