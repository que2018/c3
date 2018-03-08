<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Warehouse_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
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
		
	public function get_warehouses($data) 
	{			
		$this->db->select("warehouse.*", FALSE);
		$this->db->from('warehouse');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('warehouse.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_street'])) 
		{			
			$this->db->where('warehouse.street', $data['filter_street']);
		}
		
		if(!empty($data['filter_city'])) 
		{			
			$this->db->where('warehouse.city', $data['filter_city']);
		}
		
		if(!empty($data['filter_state'])) 
		{			
			$this->db->where('warehouse.state', $data['filter_state']);
		}
		
		if(!empty($data['filter_country'])) 
		{			
			$this->db->where('warehouse.country', $data['filter_country']);
		}
		
		if(!empty($data['filter_zipcode'])) 
		{			
			$this->db->where('warehouse.zipcode', $data['filter_zipcode']);
		}
		
		$sort_data = array(
			'warehouse.name',
			'warehouse.street',
			'warehouse.city',
			'warehouse.state',
			'warehouse.country',
			'warehouse.zipcode'
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
			return FALSE;
		}
	}
	
	function get_warehouse_total($data)
	{
		$this->db->select("COUNT(warehouse.id) AS total", FALSE);
		$this->db->from('warehouse');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('warehouse.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_street'])) 
		{			
			$this->db->where('warehouse.street', $data['filter_street']);
		}
		
		if(!empty($data['filter_city'])) 
		{			
			$this->db->where('warehouse.city', $data['filter_city']);
		}
		
		if(!empty($data['filter_state'])) 
		{			
			$this->db->where('warehouse.state', $data['filter_state']);
		}
		
		if(!empty($data['filter_country'])) 
		{			
			$this->db->where('warehouse.country', $data['filter_country']);
		}
		
		if(!empty($data['filter_zipcode'])) 
		{			
			$this->db->where('warehouse.zipcode', $data['filter_zipcode']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function get_all_warehouses() 
	{
		$q = $this->db->get('warehouse');
		
		if($q->num_rows() > 0) 
		{
			return $q->result_array();
		}
		
		return false;
	}	
}
