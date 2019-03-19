<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Warehouse_model extends CI_Model
{	
	public function add_warehouse($data = array())
	{
		$warehouse_data = array(		
			'name'	          => $data['name'],
			'street'	      => $data['street'],
			'city'	     	  => $data['city'],
			'state'   		  => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'date_modified'   => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('warehouse', $warehouse_data);
	}
	
	public function edit_warehouse($id, $data)
	{
		$warehouse_data = array(		
			'name'	          => $data['name'],
			'street'	      => $data['street'],
			'city'	     	  => $data['city'],
			'state'   		  => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'date_modified'   => date('Y-m-d H:i:s')
		);
		
		$this->db->where('id', $id);
		
		if($this->db->update('warehouse', $warehouse_data)) 
		{
			return true;
		} 
		
		return false;
	}
	
	public function get_warehouse($id) 
	{
		$q = $this->db->get_where('warehouse', array('id' => $id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}

	public function delete_warehouse($id) 
	{
		if($this->db->delete('warehouse', array('id' => $id))) 
		{
			return true;
		}
		
		return false;
	}	
		
	public function get_warehouses($data = array()) 
	{			
		$this->db->select("warehouse.*", false);
		$this->db->from('warehouse');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_street'])) 
		{			
			$this->db->where('street', $data['filter_street']);
		}
		
		if(!empty($data['filter_city'])) 
		{			
			$this->db->where('city', $data['filter_city']);
		}
		
		if(!empty($data['filter_state'])) 
		{			
			$this->db->where('state', $data['filter_state']);
		}
		
		if(!empty($data['filter_country'])) 
		{			
			$this->db->where('country', $data['filter_country']);
		}
		
		if(!empty($data['filter_zipcode'])) 
		{			
			$this->db->where('zipcode', $data['filter_zipcode']);
		}
		
		$sort_data = array(
			'name',
			'street',
			'city',
			'state',
			'country',
			'zipcode'
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
	
	function get_warehouse_total($data = array())
	{
		$this->db->select("COUNT(id) AS total", false);
		$this->db->from('warehouse');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_street'])) 
		{			
			$this->db->where('street', $data['filter_street']);
		}
		
		if(!empty($data['filter_city'])) 
		{			
			$this->db->where('city', $data['filter_city']);
		}
		
		if(!empty($data['filter_state'])) 
		{			
			$this->db->where('state', $data['filter_state']);
		}
		
		if(!empty($data['filter_country'])) 
		{			
			$this->db->where('country', $data['filter_country']);
		}
		
		if(!empty($data['filter_zipcode'])) 
		{			
			$this->db->where('zipcode', $data['filter_zipcode']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function search_warehouse($key) 
	{
		$this->db->select('*', false);
		$this->db->from('warehouse'); 
		$this->db->like('name', $key, 'after');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
}
