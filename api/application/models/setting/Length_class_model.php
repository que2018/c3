<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Length_class_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_length_class($data)
	{
		$this->db->trans_begin();
		
		$length_class_data = array(		
			'unit'	      => $data['unit'],
			'unit_short'  => $data['unit_short'],
			'value'	      => $data['value']
		);
		
		$this->db->insert('length_class', $length_class_data);
		
		$length_class_id = $this->db->insert_id();
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $length_class_id;
		}
	}
	
	public function edit_length_class($length_class_id, $data)
	{
		$this->db->trans_begin();
		
		$length_class_data = array(		
			'unit'	      => $data['unit'],
			'unit_short'  => $data['unit_short'],
			'value'	      => $data['value']
		);
		
		$this->db->where('id', $length_class_id);
		
		$this->db->update('length_class', $length_class_data);
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return true;
		}
	}
	
	public function get_length_class($length_class_id) 
	{
		$q = $this->db->get_where('length_class', array('id' => $length_class_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function delete_length_class($length_class_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('length_class', array('id' => $length_class_id));
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return true;
		}
	}		
		
	public function get_length_classes($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('length_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'left');
		}
		
		if(!empty($data['filter_unit_short'])) 
		{			
			$this->db->like('unit_short', $data['filter_unit_short'], 'left');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->like('value', $data['filter_value'], 'left');
		}
		
		$sort_data = array(
			'unit',
			'unit_short',
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
	
	function get_length_class_total($data)
	{		
		$this->db->select('COUNT(length_class.id) AS total', false);
		$this->db->from('length_class');
		
		if(!empty($data['filter_unit'])) 
		{			
			$this->db->like('unit', $data['filter_unit'], 'left');
		}
		
		if(!empty($data['filter_unit_short'])) 
		{			
			$this->db->like('unit_short', $data['filter_unit_short'], 'left');
		}
		
		if(!empty($data['filter_value'])) 
		{			
			$this->db->like('value', $data['filter_value'], 'left');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	function get_all_length_classes() 
	{
		$this->db->select('*');
		$this->db->from('length_class');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		}
		
		return false;
	}
	
	function to_config($length_class_id, $length)
	{
		$q1 = $this->db->get_where('length_class', array('id' => $length_class_id), 1); 
		
		$r1 = $q1->row_array();
		
		$q2 = $this->db->get_where('length_class', array('id' => $this->config->item('config_length_class_id')), 1); 
		
		$r2 = $q2->row_array();
		
		return $length * $r2['value'] / $r1['value'];
	}
}
