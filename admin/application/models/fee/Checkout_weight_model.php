<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_weight_model extends CI_Model
{		
	public function install()
	{
		$this->load->model('setting/setting_model');
		
		$data = array(
			'checkout_weight_type'       => 'checkout',
			'checkout_weight_level'      => array(),
			'checkout_weight_status'     => 0,
			'checkout_weight_sort_order' => 0
		);
			
		$this->setting_model->edit_setting('checkout_weight', $data);
	}
	
	public function uninstall() 
	{
		$this->load->model('setting/setting_model');
		
		$this->setting_model->delete_setting('checkout_weight');
	}
	
	public function run($products)
	{
		$this->lang->load('fee/checkout_weight');
		
		$this->load->model('catalog/product_model');
		$this->load->model('setting/weight_class_model');
		
		$checkout_weight_levels = $this->config->item('checkout_weight_level');
		
		$weight_total = 0;
		
		foreach($products as $product_id => $quantity)
		{			
			$product = $this->product_model->get_product($product_id);

			$weight_pound_and_ounce = $this->weight_class_model->to_pound_and_ounce($product['weight_class_id'], $product['weight']);
			
			$pound = $weight_pound_and_ounce['pound'];
			$ounce = $weight_pound_and_ounce['ounce'];
			
			$weight = $pound + $ounce / 12;
		
			$weight_total += $weight * $quantity;
		}
		
		$amcount = 0;
		
		$weight_found = false;
		
		foreach($checkout_weight_levels as $checkout_weight_level)
		{
			if($weight_total < $checkout_weight_level['weight'])
			{
				$amount = $checkout_weight_level['amount'] * $weight_total;
				
				$weight_found = true;
				
				break;
			}
			else
			{
				continue;
			}
		}

		if(!$weight_found)
		{
			$amount = $this->config->item('checkout_weight_level_end') * $weight_total;
		}			
		
		$result = array(
			'name'   => $this->lang->line('text_description'),
			'amount' => number_format($amount, 2)
		);
		
		return $result;
	}
	
	public function run_checkout($checkout_id)
	{
		$this->load->model('check/checkout_model');
		
		$weight = $this->checkout_model->get_checkout_products_weight($checkout_id);
		
		$amount = 0;
		
		$found = false;
		
		$checkout_weight_levels = $this->config->item('checkout_weight_level');
		
		foreach($checkout_weight_levels as $checkout_weight_level)
		{
			if($weight < $checkout_weight_level['weight'])
			{
				$amount = $checkout_weight_level['amount'] * $weight;
				
				$found = true;
				
				break;
			}
		}

		if(!$found)
		{
			$amount = $this->config->item('checkout_weight_level_end') * $weight_total;
		}			
		
		return $amount;
	}
}
