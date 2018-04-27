<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Total_alert_model extends CI_Model
{		
	public function get_all_products() 
	{
		$q = $this->db->get('product');
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		else 
		{
			return false;
		}
	}
	
	public function get_product_quantity($product_id)
	{
		$this->db->select('SUM(quantity) AS quantity', false);
		$this->db->from('inventory');
		$this->db->where('product_id', $product_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			$result = $q->row_array();
			
			return $result['quantity'];
		} 
		else 
		{
			return false;
		}
	}
}
