<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Location_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
	
	public function add_location($data)
	{
		$this->db->trans_begin();
		
		$location_data = array(
			'name' 		       => $data['name'],
			'warehouse_id' 	   => $data['warehouse_id'],
			'date_added'   	   => date('Y-m-d H:i:s'),
			'date_modified'    => date('Y-m-d H:i:s')			
		);
		
		$this->db->insert('location', $location_data); 	
		
		$location_id = $this->db->insert_id();
		
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
	
	public function edit_location($id, $data)
	{
		$this->db->trans_begin();
		
		$location_data = array(
			'name' 		       => $data['name'],
			'warehouse_id' 	   => $data['warehouse_id'],
			'date_modified'    => date('Y-m-d H:i:s')			
		);
		
		$this->db->where('id', $id);
		
		$this->db->update('location', $location_data);
		
		if(isset($data['location_clients']))
		{
			$this->db->delete('location_client', array('location_id' => $id));
			
			$location_client_data = array();
			
			foreach($data['location_clients'] as $location_client){					
				$location_client_data[] = array(
					'location_id'	=> $id,
					'client_id' 	=> $location_client['client_id'],
				);
			}
			
			$this->db->insert_batch('location_client', $location_client_data);		
		}
		
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
	
	public function get_location($id) 
	{
		$q = $this->db->get_where('location', array('id' => $id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_location_by_name($name) 
	{
		$q = $this->db->get_where('location', array('name' => $name), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_locations_by_warehouse($warehouse_id) 
	{
		$q = $this->db->get_where('location', array('warehouse_id' => $warehouse_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_location($id) 
	{
		if($this->db->delete('location', array('id' => $id))) 
		{
			return true;
		}
		
		return false;
	}	
	
	public function get_all_locations() 
	{
		$this->db->select('*', false);
		$this->db->from('location');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}	
		
	public function get_locations($data) 
	{			
		$this->db->select('location.*, warehouse.name AS warehouse', false);
		$this->db->from('location');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->group_by('location.id');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('location.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_warehouse'])) 
		{			
			$this->db->like('warehouse.name', $data['filter_warehouse'], 'both');
		}
			
		$sort_data = array(
			'location.name',
			'warehouse.name'
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
	
	function get_location_total($data)
	{
		$this->db->select("COUNT(location.id) AS total", false);
		$this->db->from('location');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('location.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_warehouse'])) 
		{			
			$this->db->like('warehouse.name', $data['filter_warehouse'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
