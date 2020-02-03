<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_warehouse_model extends CI_Model
{	
	public function add_fba_warehouse($data = array())
	{
		$fba_warehouse_data = array(		
			'name'	          => $data['name'],
			'street'	      => $data['street'],
			'city'	     	  => $data['city'],
			'state'   		  => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'date_modified'   => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('fba_warehouse', $fba_warehouse_data);
	}
	
	public function edit_fba_warehouse($fba_warehouse_id, $data)
	{
		$fba_warehouse_data = array(		
			'name'	          => $data['name'],
			'street'	      => $data['street'],
			'city'	     	  => $data['city'],
			'state'   		  => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'date_modified'   => date('Y-m-d H:i:s')
		);
		
		$this->db->where('fba_warehouse_id', $fba_warehouse_id);
		
		if($this->db->update('fba_warehouse', $fba_warehouse_data)) 
		{
			return true;
		} 
		
		return false;
	}
	
	public function get_fba_warehouse($fba_warehouse_id) 
	{
		$q = $this->db->get_where('fba_warehouse', array('fba_warehouse_id' => $fba_warehouse_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}

	public function delete_fba_warehouse($fba_warehouse_id) 
	{
		if($this->db->delete('fba_warehouse', array('fba_warehouse_id' => $fba_warehouse_id))) 
		{
			return true;
		}
		
		return false;
	}	
		
	public function get_fba_warehouses($data = array()) 
	{			
		$this->db->select("fba_warehouse.*", false);
		$this->db->from('fba_warehouse');
		
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
	
	function get_fba_warehouse_total($data = array())
	{
		$this->db->select("COUNT(fba_warehouse_id) AS total", false);
		$this->db->from('fba_warehouse');
		
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
	
	public function search_fba_warehouse($key) 
	{
		$this->db->select('*', false);
		$this->db->from('fba_warehouse'); 
		$this->db->like('name', $key, 'after');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function clear_fba_warehouses() 
	{
		$this->db->trans_begin();
		
		$this->db->empty_table('fba_warehouse');

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
