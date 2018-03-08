<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Weight_class_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}

	public function get_weight_classes($data) 
	{			
		$this->db->select('*');
		$this->db->from('weight_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'both');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->where('value', $data['filter_value']);
		}
		
		$sort_data = array(
			'weight_class.unit',
			'weight_class.value'
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
			if(isset($data['order']))	
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
			return FALSE;
		}
	}
	
	function get_weight_class_total($data)
	{
		$this->db->select("COUNT(id) AS total", FALSE);
		$this->db->from('weight_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'both');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->where('value', $data['filter_value']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	function get_all_weight_classes() 
	{
		$this->db->select('*');
		$this->db->from('weight_class');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	function to_pound($id, $weight)
	{
		$q1 = $this->db->get_where('weight_class', array('id' => $id), 1); 
		
		$r1 = $q1->row_array();
		
		$q2 = $this->db->get_where('weight_class', array('id' => 5), 1); 
		
		$r2 = $q2->row_array();
	
		return $weight * $r2['value'] / $r1['value'];
	}
	
	function to_pound_and_ounce($weight_pound)
	{
		$pound = floor($weight_pound);
		
		$remain_pound = $weight_pound - $pound;
	
		$ounce = floor($remain_pound * 16);
		
		return array($pound, $ounce);
	}
}
