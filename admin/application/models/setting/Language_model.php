<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Language_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_language($data)
	{
		$this->db->trans_begin();
		
		$language_data = array(		
			'name'	    => $data['name'],
			'code'      => $data['code']
		);
		
		$this->db->insert('language', $language_data);
		
		$language_id = $this->db->insert_id();
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $language_id;
		}
	}
	
	public function edit_language($language_id, $data)
	{
		$this->db->trans_begin();
		
		$language_data = array(		
			'name'	    => $data['name'],
			'code'      => $data['code']
		);
		
		$this->db->where('language_id', $language_id);
		
		$this->db->update('language', $language_data);
		
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
	
	public function get_language($language_id) 
	{
		$q = $this->db->get_where('language', array('language_id' => $language_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function delete_language($language_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('language', array('language_id' => $language_id));
		
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
		
	public function get_languages($data = array()) 
	{	
		$this->db->select('*', false);
		$this->db->from('language');
		
		$sort_data = array(
			'name',
			'code'
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
	
	function get_language_total($data = array())
	{		
		$this->db->select('COUNT(language_id) AS total', false);
		$this->db->from('language');
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
