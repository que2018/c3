<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Store_model extends CI_Model
{	
	public function get_stores($data = array()) 
	{			
		$this->db->select("store.*, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->from('store');
		$this->db->join('client', 'client.id = store.client_id', 'left');
		$this->db->where('client.id', $this->auth->get_client_id());
		$this->db->group_by('store.store_id');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('store.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_platform'])) 
		{			
			$this->db->like('store.platform', $data['filter_platform'], 'both');
		}
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like('client', $data['filter_client'], 'both');
		}
		
		$sort_data = array(
			'store.name',
			'store.flatform',
			'client'
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
			return false;
		}
	}
	
	public function get_store_total($data = array())
	{
		$this->db->select('COUNT(store.store_id) AS total', false);
		$this->db->from('store');
		$this->db->where('client.id', $this->auth->get_client_id());
		$this->db->join('client', 'client.id = store.client_id', 'left');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('store.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_platform'])) 
		{			
			$this->db->like('store.platform', $data['filter_platform'], 'both');
		}
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like("CONCAT(client.firstname, ' ', client.lastname)", $data['filter_client'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}

	public function get_store($store_id) 
	{
		$this->db->select('*', false);
		$this->db->from('store');
		$this->db->where('store.store_id', $store_id);		

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
}
