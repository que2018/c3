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
}


