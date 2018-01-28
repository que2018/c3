<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_alert_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
			
	public function get_alert_inventories($data) 
	{			
		$this->db->select('inventory.*, product.name AS product_name, location.name AS location_name, warehouse.name AS warehouse_name', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('product.client_id', $this->auth->get_client_id());
		$this->db->where('inventory.quantity <', 'product.alert_quantity');
				
		$this->db->group_by('inventory.id');
		
		if(!empty($data['filter_product'])) 
		{			
			$this->db->like('product.name', $data['filter_product'], 'both');
		}
		
		if(!empty($data['filter_location'])) 
		{			
			$this->db->where('location.name', $data['filter_location']);
		}
		
		if(!empty($data['filter_warehouse'])) 
		{			
			$this->db->where('warehouse.name', $data['filter_warehouse']);
		}
		
		if(!empty($data['filter_quantity'])) 
		{			
			$this->db->where('inventory.quantity', $data['filter_quantity']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('inventory.date_added', $data['filter_date_added']);
		}
		
		if(!empty($data['filter_date_modified'])) 
		{			
			$this->db->where('inventory.date_modified', $data['filter_date_modified']);
		}
		
		$sort_data = array(
			'product.name',
			'location.name',
			'warehouse.name',
			'inventory.quantity',
			'inventory.date_added',
			'inventory.date_modified'
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
	
	function get_alert_inventory_total($data)
	{
		$this->db->select('COUNT(inventory.id) AS total', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('product.client_id', $this->auth->get_client_id());
		
		$this->db->where('inventory.quantity <', 'product.alert_quantity');
		
		if(!empty($data['filter_product'])) 
		{			
			$this->db->like('product.name', $data['filter_product'], 'both');
		}
		
		if(!empty($data['filter_location'])) 
		{			
			$this->db->where('location.name', $data['filter_location']);
		}
		
		if(!empty($data['filter_warehouse'])) 
		{			
			$this->db->where('warehouse.name', $data['filter_warehouse']);
		}
		
		if(!empty($data['filter_quantity'])) 
		{			
			$this->db->where('inventory.quantity', $data['filter_quantity']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('inventory.date_added', $data['filter_date_added']);
		}
		
		if(!empty($data['filter_date_modified'])) 
		{			
			$this->db->where('inventory.date_modified', $data['filter_date_modified']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
