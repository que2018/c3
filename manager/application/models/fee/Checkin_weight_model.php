<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin_weight_model extends CI_Model
{		
	public function install()
	{
		$this->load->model('setting/setting_model');
		
		$data = array(
			'checkin_weight_type'       => 'checkin',
			'checkin_weight_level'      => array(),
			'checkin_weight_status'     => 0,
			'checkin_weight_sort_order' => 0
		);
			
		$this->setting_model->edit_setting('checkin_weight', $data);
	}
	
	public function uninstall() 
	{
		$this->load->model('setting/setting_model');
		
		$this->setting_model->delete_setting('checkin_weight');
	}
	
	public function run($products)
	{
		$this->lang->load('fee/checkin_weight');
		
		$this->load->model('catalog/product_model');
		$this->load->model('setting/weight_class_model');
		
		$checkin_weight_levels = $this->config->item('checkin_weight_level');
		
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
		
		foreach($checkin_weight_levels as $checkin_weight_level)
		{
			if($weight_total < $checkin_weight_level['weight'])
			{
				$amount = $checkin_weight_level['amount'] * $weight_total;
				
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
			$amount = $this->config->item('checkin_weight_level_end') * $weight_total;
		}			
		
		$result = array(
			'name'   => $this->lang->line('text_description'),
			'amount' => number_format($amount, 2)
		);
		
		return $result;
	}
}
