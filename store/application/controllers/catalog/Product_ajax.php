<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Product_ajax extends CI_Controller {

	function __construct()
	{
		parent::__construct();
				
		$this->load->model('catalog/product_model');
	}
	
	public function autocomplete()
	{		
		$outdata = array();
		
		if($this->input->get('product_name'))
		{
			$product_name = $this->input->get('product_name');
			
			$products = $this->product_model->find_product_by_name($product_name);

			if($products) 
			{
				foreach($products as $product) 
				{
					$outdata[] = array(
						'id'    => $product['id'],
						'name'  => $product['name']
					);
				}
			}
		}
	
		echo json_encode($outdata);
	}
	
	function update_value()
	{
		$product_id  = $this->input->post('product_id');
		$field       = $this->input->post('field');
		$value       = $this->input->post('value');
		
		$data = array(
			'field'  => $field,
			'value'  => $value
		);
			
		$result = $this->product_model->update_product_value($product_id, $data);
		
		if($result)
		{
			$outdata = array(
				'success'  => true
			);
		}
		else
		{
			$outdata = array(
				'success'  => false
			);
		}
		
		echo json_encode($outdata);
	}
	
	function get_products_volume()
	{
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
		
		echo json_encode($outdata);
	}
	
	function get_products_weight()
	{
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
		
		echo json_encode($outdata);
	}
}


