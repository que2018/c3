<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Weight_class_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_weight_class($data)
	{
		$weight_class_data = array(		
			'unit'	      => $data['unit'],
			'value'	      => $data['value']
		);
		
		$this->db->insert('weight_class', $weight_class_data);
	}
	
	public function edit_weight_class($id, $data)
	{
		$weight_class_data = array(		
			'unit'	      => $data['unit'],
			'value'	      => $data['value']
		);
		
		$this->db->where('id', $id);
		
		if($this->db->update('weight_class', $weight_class_data)) 
		{
			return true;
		} 
		
		return false;
	}
	
	public function get_weight_class($id) 
	{
		$q = $this->db->get_where('weight_class', array('id' => $id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function delete_weight_class($id) 
	{
		if($this->db->delete('weight_class', array('id' => $id))) 
		{
			return true;
		}
		
		return false;
	}		
		
	public function get_weight_classes($data = array()) 
	{	
		$this->db->select('*', false);
		$this->db->from('weight_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'left');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->like('value', $data['filter_value'], 'left');
		}
		
		$sort_data = array(
			'unit',
			'value'
		);
		
		if(isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 15;
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
			return false;
		}
	}

	public function get_weight_class_total($data = array())
	{		
		$this->db->select('COUNT(weight_class.id) AS total', false);
		$this->db->from('weight_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'left');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->like('value', $data['filter_value'], 'left');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}	
	
	public function to_config($weight_class_id, $weight)
	{
		$q1 = $this->db->get_where('weight_class', array('id' => $weight_class_id), 1); 
		
		$r1 = $q1->row_array();
		
		$q2 = $this->db->get_where('weight_class', array('id' => $this->config->item('config_weight_class_id')), 1); 
		
		$r2 = $q2->row_array();
		
		return $weight * $r2['value'] / $r1['value'];
	}
	
	public function to_pound_and_ounce($weight_class_id, $weight)
	{
		$q1 = $this->db->get_where('weight_class', array('id' => $weight_class_id), 1); 
		
		$r1 = $q1->row_array();
		
		$q2 = $this->db->get_where('weight_class', array('unit' => 'lb'), 1); 
		
		$r2 = $q2->row_array();
		
		$weight_pound = $weight * $r2['value'] / $r1['value'];
		
		$pound = floor($weight_pound);
		
		$remain = $weight_pound - $pound;
	
		$ounce = floor($remain * 16);
		
		$result = array(
			'pound'  => $pound,
			'ounce'  => $ounce
		);
		
		return $result;
	}
}
