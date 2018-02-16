<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_inventory($data)
	{
		$this->db->trans_begin();
		
		$result = $this->get_inventory_by_location_product($data['location_id'], $data['product_id']);
		
		if($result) 
		{
			$this->db->where('product_id', $data['product_id']);
			$this->db->where('location_id', $data['location_id']);
			$this->db->set('quantity', 'quantity+'.$data['quantity'], false);
			$this->db->set('date_modified', 'NOW()', false);
			
			$this->db->update('inventory');
		}
		else
		{
			$inventory_data = array(		
				'product_id'	   => $data['product_id'],
				'location_id'	   => $data['location_id'],
				'quantity'	       => $data['quantity'],
				'date_added'   	   => date('Y-m-d H:i:s'),
				'date_modified'    => date('Y-m-d H:i:s')
			);
			
			$this->db->insert('inventory', $inventory_data);
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
	
	public function set_inventory($data)
	{
		$this->db->trans_begin();
				
		$inventory_data = array(		
			'product_id'	   => $data['product_id'],
			'location_id'	   => $data['location_id'],
			'quantity'	       => $data['quantity'],
			'date_added'   	   => date('Y-m-d H:i:s'),
			'date_modified'    => date('Y-m-d H:i:s')
		);
			
		$this->db->insert('inventory', $inventory_data);
		
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
	
	public function set_inventory_quantity($inventory_id, $quantity)
	{
		$this->db->trans_begin();
				
		$inventory_data = array(		
			'quantity'	     => $quantity,
			'date_modified'  => date('Y-m-d H:i:s')
		);
			
		$this->db->where('id', $inventory_id);
		$this->db->update('inventory', $inventory_data);
		
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
	
	public function edit_inventory($inventory_id, $data)
	{
		$this->db->trans_begin();
				
		$result = $this->get_inventory_by_location_product($data['location_id'], $data['product_id']);
		
		if($result)
		{
			if($result['id'] != $inventory_id)
			{
				$this->db->delete('inventory', array('id' => $inventory_id));
				
				$inventory_data = array(		
					'quantity'	     => $data['quantity'],
					'date_modified'  => date('Y-m-d H:i:s')
				);
				
				$this->db->where('id', $result['id']);
				$this->db->update('inventory', $inventory_data);
			}
			else
			{
				$inventory_data = array(		
					'quantity'	       => $data['quantity'],
					'date_modified'    => date('Y-m-d H:i:s')
				);
				
				$this->db->where('id', $inventory_id);
				$this->db->update('inventory', $inventory_data);
			}
		}
		else
		{
			$inventory_data = array(		
				'product_id'	   => $data['product_id'],
				'location_id'	   => $data['location_id'],
				'quantity'	       => $data['quantity'],
				'date_added'   	   => date('Y-m-d H:i:s'),
				'date_modified'    => date('Y-m-d H:i:s')
			);
				
			$this->db->insert('inventory', $inventory_data);
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
		
	public function get_inventory($inventory_id) 
	{		
		$this->db->select('inventory.*, product.id AS product_id, product.name AS product_name, warehouse.name AS warehouse_name, location.name AS location_name', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('inventory.id', $inventory_id);
		
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
		$this->db->select('inventory.*, warehouse.name AS warehouse_name, location.name AS location_name, location.id AS location_id', false);
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
		
	public function search_inventory($key) 
	{
		$this->db->select('product.name AS product_name, location.name AS location_name, inventory.quantity, inventory.id', false);
		$this->db->from('inventory'); 
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->or_like('product.name', $key, 'left');  
		$this->db->or_like('location.name', $key, 'left');  
		$this->db->or_where('inventory.quantity', $key); 
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_inventory($id) 
	{
		if($this->db->delete('inventory', array('id' => $id))) 
		{
			return true;
		}
		
		return false;
	}	
	
	public function delete_inventory_by_location($location_id) 
	{
		if($this->db->delete('inventory', array('location_id' => $location_id))) 
		{
			return true;
		}
		
		return false;
	}	
	
	public function delete_inventory_by_location_product($location_id, $product_id) 
	{
		if($this->db->delete('inventory', array('location_id' => $location_id, 'product_id' => $product_id))) 
		{
			return true;
		}
		
		return false;
	}	
		
	public function get_inventories($data) 
	{			
		$this->db->select('inventory.*, product.name AS product_name, product.sku, location.name AS location_name, warehouse.name AS warehouse_name', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->group_by('inventory.id');
		
		if(!empty($data['filter_product'])) 
		{			
			$this->db->like('product.name', $data['filter_product'], 'left');
		}
		
		if(!empty($data['filter_upc'])) 
		{			
			$this->db->like('product.upc', $data['filter_upc'], 'left');
		}
		
		if(!empty($data['filter_sku'])) 
		{			
			$this->db->like('product.sku', $data['filter_sku'], 'left');
		}
		
		if(!empty($data['filter_asin'])) 
		{			
			$this->db->like('product.asin', $data['filter_asin'], 'left');
		}
		
		if(!empty($data['filter_location'])) 
		{			
			$this->db->like('location.name', $data['filter_location'], 'both');
		}
		
		if(!empty($data['filter_warehouse_id'])) 
		{			
			$this->db->where('warehouse.id', $data['filter_warehouse_id']);
		}
		
		if(!empty($data['filter_quantity'])) 
		{			
			$this->db->where('inventory.quantity', $data['filter_quantity']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('inventory.date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('inventory.date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		if(!empty($data['filter_date_modified'])) 
		{
			$this->db->where('inventory.date_modified >=', $data['filter_date_modified'] . ' 00:00:00');
			$this->db->where('inventory.date_modified <=', $data['filter_date_modified'] . ' 23:59:59');
		}
		
		$sort_data = array(
			'product.name',
			'product.sku',
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
		
		if(!empty($data['filter_product'])) 
		{			
			$this->db->like('product.name', $data['filter_product'], 'left');
		}
		
		if(!empty($data['filter_upc'])) 
		{			
			$this->db->like('product.upc', $data['filter_upc'], 'left');
		}
		
		if(!empty($data['filter_sku'])) 
		{			
			$this->db->like('product.sku', $data['filter_sku'], 'left');
		}
		
		if(!empty($data['filter_asin'])) 
		{			
			$this->db->like('product.asin', $data['filter_asin'], 'left');
		}
		
		if(!empty($data['filter_location'])) 
		{			
			$this->db->like('location.name', $data['filter_location'], 'both');
		}
		
		if(!empty($data['filter_warehouse_id'])) 
		{			
			$this->db->where('warehouse.id', $data['filter_warehouse_id']);
		}
		
		if(!empty($data['filter_quantity'])) 
		{			
			$this->db->where('inventory.quantity', $data['filter_quantity']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('inventory.date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('inventory.date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		if(!empty($data['filter_date_modified'])) 
		{
			$this->db->where('inventory.date_modified >=', $data['filter_date_modified'] . ' 00:00:00');
			$this->db->where('inventory.date_modified <=', $data['filter_date_modified'] . ' 23:59:59');
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