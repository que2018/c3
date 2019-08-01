<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_report_model extends CI_Model
{	
	public function get_group_sales($data = array())
	{
		$this->db->select('COUNT(id) AS total, DATE(date_added) AS date_added', false);
		$this->db->from('sale');
		
		if(!empty($data['filter_date_added_from']) && !empty($data['filter_date_added_to'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_from']);
			$this->db->where('date_added <=', $data['filter_date_added_to']);
		}
		
		if(isset($data['filter_group_type']))
		{
			if($data['filter_group_type'] == 'HOUR')
			{
				$this->db->group_by('HOUR(date_added)');
			}
			
			if($data['filter_group_type'] == 'DATE')
			{
				$this->db->group_by('DATE(date_added)');
			}
			
			if($data['filter_group_type'] == 'MONTH')
			{
				$this->db->group_by('MONTH(date_added)');
			}
			
			if($data['filter_group_type'] == 'YEAR')
			{
				$this->db->group_by('YEAR(date_added)');
			}
		} 
		
		$sort_data = array(
			'store_sale_id',
			'tracking',
			'name',
			'date_added'
		);
		
		if(isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}
				
			$this->db->limit($data['limit'], $data['start']);
		}
		
		if(isset($data['sort']) && in_array($data['sort'], $sort_data)) 
		{
			if(isset($data['sale']))	
			{
				$this->db->order_by($data['sort'], $data['order']);
			}
			else
			{
				$this->db->order_by($data['sort'], 'DESC');
			}
		}
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		else 
		{
			return false;
		}
	}
	
	public function get_period_sale_total($data = array())
	{
		$this->db->select("COUNT(id) AS total", false);
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
	
	public function get_period_sale_income($data = array())
	{
		$this->db->select('SUM(amount) AS total', false);
		$this->db->from('transaction');
		
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
