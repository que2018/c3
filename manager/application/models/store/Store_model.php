<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Store_model extends CI_Model
{	
	public function add_store($data)
	{
		$this->db->trans_begin();
		
		//store data
		$store_data = array(	
			'client_id'	     		         => $data['client_id'],		
			'platform'	     		         => $data['platform'],
			'name'	         		  		 => $data['name'],
			'setting'	      		  		 => serialize($data['setting']),
			'default_sale_status_id'  		 => $data['default_sale_status_id'],
			'default_sale_shipping_provider' => $data['default_sale_shipping_provider'],
			'default_sale_shipping_service'  => $data['default_sale_shipping_service']
		);
		
		$this->db->insert('store', $store_data); 
			
		$store_id = $this->db->insert_id();	
				
		//store sync data
		$store_sync_data = array(		
			'store_id'	  => $store_id,
			'enabled'	  => $data['auto_download'],
			'type'        => 0,
			'active'      => 0
		);
	
		$this->db->insert('store_sync', $store_sync_data); 
		
		$store_sync_data = array(		
			'store_id'	  => $store_id,
			'enabled'	  => $data['auto_upload'],
			'type'        => 1,
			'active'      => 0
		);
	
		$this->db->insert('store_sync', $store_sync_data); 

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
	
	public function edit_store($store_id, $data)
	{
		$this->db->trans_begin();
		
		//store data
		$store_data = array(	
			'client_id'	     		         => $data['client_id'],				
			'platform'	              		 => $data['platform'],
			'name'	                  		 => $data['name'],
			'setting'	              		 => serialize($data['setting']),
			'default_sale_status_id'  		 => $data['default_sale_status_id'],
			'default_sale_shipping_provider' => $data['default_sale_shipping_provider'],
			'default_sale_shipping_service'  => $data['default_sale_shipping_service']
		);
		
		$this->db->where('store_id', $store_id);
		$this->db->update('store', $store_data); 
		
		//store sync data
		$store_sync_data = array(		
			'enabled'	  => $data['auto_download']
		);
	
		$this->db->where('store_id', $store_id);
		$this->db->where('type', 0);
		$this->db->update('store_sync', $store_sync_data); 
		
		$store_sync_data = array(		
			'enabled'	  => $data['auto_upload']
		);
	
		$this->db->where('store_id', $store_id);
		$this->db->where('type', 1);
		$this->db->update('store_sync', $store_sync_data); 
			
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
	
	public function get_store($store_id) 
	{
		$this->db->select("store.*, CONCAT(firstname, ' ', lastname) AS client", false);
		$this->db->from('store');
		$this->db->join('client', 'client.id = store.client_id', 'left');
		$this->db->where('store.store_id', $store_id);		

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_store_download($store_id) 
	{
		$q = $this->db->get_where('store_sync', array('store_id' => $store_id, 'type' => 0), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_store_upload($store_id) 
	{
		$q = $this->db->get_where('store_sync', array('store_id' => $store_id, 'type' => 1), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function find_stores_by_name($name) 
	{
		$this->db->select("*", false);
		$this->db->from('store');
		$this->db->like('name', $name, 'both');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_stores($data = array()) 
	{			
		$this->db->select("store.*, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->from('store');
		$this->db->join('client', 'client.id = store.client_id', 'left');
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
	
	public function delete_store($store_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('store', array('store_id' => $store_id)); 
		
		$this->db->delete('store_sync', array('store_id' => $store_id)); 
		
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
