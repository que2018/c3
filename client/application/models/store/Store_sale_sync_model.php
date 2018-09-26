<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_sale_sync_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}		
	
	public function get_stores($data) 
	{			
		$this->db->select("store.*", false);
		$this->db->from('store');
		$this->db->group_by('store.store_id');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_platform'])) 
		{			
			$this->db->like('platform', $data['filter_platform'], 'both');
		}
	
		$sort_data = array(
			'store.name',
			'store.flatform'
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
	
	function get_store_total($data)
	{
		$this->db->select("COUNT(id) AS total", false);
		$this->db->from('store');
				
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_platform'])) 
		{			
			$this->db->like('platform', $data['filter_platform'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	function get_all_download_stores()
	{
		$q = $this->db->get_where('store_sync', array('type' => 0, 'enabled' => 1));
		
		return $q->result_array();
	}
	
	function get_active_download_store()
	{
		$q = $this->db->get_where('store_sync', array('type' => 0, 'active' => 1));
		
		return $q->row_array();
	}
	
	function activate_next_download_store($store_id)
	{
		$this->db->update('store_sync', array('active' => 0), array('type' => 0));

		$this->db->update('store_sync', array('active' => 1), array('type' => 0, 'store_id' => $store_id));
	}
}
