<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_sync_history_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
	
	public function get_store_sync_histories($data) 
	{			
		$this->db->select("store_sync_history.*, store.name AS store", false);
		$this->db->from('store_sync_history');
		$this->db->join('store', 'store.id = store_sync_history.store_id', 'left');
		$this->db->group_by('store_sync_history.id');
		
		if(!empty($data['filter_store'])) 
		{			
			$this->db->like('store.name', $data['filter_store'], 'both');
		}
		
		if(!empty($data['filter_type'])) 
		{			
			$this->db->where('store_sync_history.type', $data['filter_type']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('store_sync_history.status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('store_sync_history.date_added', $data['filter_date_added']);
		}
	
		$sort_data = array(
			'store.name',
			'store_sync_history.type',
			'store_sync_history.status',
			'store_sync_history.date_added'
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
	
	function get_store_sync_history_total($data)
	{
		$this->db->select("COUNT(store_sync_history.id) AS total", false);
		$this->db->from('store_sync_history');
		$this->db->join('store', 'store.id = store_sync_history.store_id', 'left');
		
		if(!empty($data['filter_store'])) 
		{			
			$this->db->like('store.name', $data['filter_store'], 'both');
		}
		
		if(!empty($data['filter_type'])) 
		{			
			$this->db->where('store_sync_history.type', $data['filter_type']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('store_sync_history.status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('store_sync_history.date_added', $data['filter_date_added']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function add_store_sync_history($data) 
	{
		$this->db->trans_begin();
		
		$store_sync_history_data = array(
			'store_id' 		=> $data['store_id'],
			'type' 		    => $data['type'],
			'status' 		=> $data['status'],
			'messages'      => serialize($data['messages']),
			'date_added'    => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('store_sync_history', $store_sync_history_data);
		
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
	
	public function get_store_sync_history($id) 
	{
		$this->db->select("store_sync_history.*, store.name AS store", false);
		$this->db->from('store_sync_history');
		$this->db->join('store', 'store.id = store_sync_history.store_id', 'left');
		$this->db->where('store_sync_history.id', $id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function delete_store_sync_history($id) 
	{
		if($this->db->delete('store_sync_history', array('id' => $id))) 
		{
			return true;
		}
	
		return false;
	}

	public function clear_store_sync_history() 
	{
		$this->db->trans_begin();
		
		$this->db->empty_table('store_sync_history');
		
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
}
