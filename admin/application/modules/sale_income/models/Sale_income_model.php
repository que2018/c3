<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Sale_income_model extends CI_Model
{		
	public function get_period_sale_income($data)
	{
		$this->db->select('SUM(total) AS total', false);
		$this->db->from('sale');
		
		if(!empty($data['filter_date_added_since'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_since']);
		}
		
		if(!empty($data['filter_date_added_from']) && !empty($data['filter_date_added_to'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_from']);
			$this->db->where('date_added <=', $data['filter_date_added_to']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
