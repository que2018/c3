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
		
	public function get_weight_classes($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('weight_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'after');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->like('value', $data['filter_value'], 'after');
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

	function get_weight_class_total($data)
	{		
		$this->db->select('COUNT(weight_class.id) AS total', false);
		$this->db->from('weight_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'after');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->like('value', $data['filter_value'], 'after');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}	
}
