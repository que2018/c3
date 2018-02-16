<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
			
	public function get_inventory($id) 
	{		
		$this->db->select('inventory.*, product.id AS product_id, product.name AS product_name, warehouse.name AS warehouse_name, location.name AS location_name', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('inventory.id', $id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_inventory_by_location($location_id) 
	{
		$q = $this->db->get_where('inventory', array('location_id' => $location_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_inventories_by_product($product_id) 
	{		
		$this->db->select('inventory.*, warehouse.name AS warehouse_name, location.name AS location_name', false);
		$this->db->from('inventory');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('inventory.product_id', $product_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_inventory_by_location_product($location_id, $product_id) 
	{
		$q = $this->db->get_where('inventory', array('location_id' => $location_id, 'product_id' => $product_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_inventory_by_warehouse_product($warehouse_id, $product_id) 
	{
		$this->db->select('inventory.*', false);
		$this->db->from('inventory');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('inventory.product_id', $product_id);		
		$this->db->where('warehouse.id', $warehouse_id);		
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function find_inventory_by_location_product($location_id, $product_name) 
	{
		$this->db->select('inventory.*', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->where('inventory.location_id', $location_id);		
		$this->db->like('product.name', $product_name, 'both');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_inventories($data) 
	{			
		$this->db->select('inventory.*, product.name AS product_name, location.name AS location_name, warehouse.name AS warehouse_name', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('product.client_id', $this->auth->get_client_id());
		$this->db->group_by('inventory.id');
		
		if(!empty($data['filter_product'])) 
		{			
			$this->db->like('product.name', $data['filter_product'], 'both');
		}
		
		if(!empty($data['filter_location'])) 
		{			
			$this->db->like('location.name', $data['filter_location'], 'both');
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
	
	function get_inventory_total($data)
	{
		$this->db->select('COUNT(inventory.id) AS total', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('product.client_id', $this->auth->get_client_id());
		
		if(!empty($data['filter_product'])) 
		{			
			$this->db->like('product.name', $data['filter_product'], 'both');
		}
		
		if(!empty($data['filter_location'])) 
		{			
			$this->db->like('location.name', $data['filter_location'], 'both');
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
	
	function get_product_quantity($product_id)
	{
		$this->db->select('SUM(quantity) AS quantity', false);
		$this->db->from('inventory');
		$this->db->where('product_id', $product_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			$result = $q->row_array();
			
			return $result['quantity'];
		} 
		else 
		{
			return false;
		}
	}
}