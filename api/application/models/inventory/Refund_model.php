<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Refund_model extends CI_Model
{		
	public function add_refund($data)
	{
		$this->db->trans_begin();
		
		$refund_data = array(		
			'type'	   		   => 1,
			'product_id'	   => $data['product_id'],
			'location_id'	   => $data['location_id'],
			'batch'	           => $data['batch'],
			'quantity'	       => $data['quantity'],
			'date_added'   	   => date('Y-m-d H:i:s'),
			'date_modified'    => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('inventory', $refund_data);
		
		$refund_id = $this->db->insert_id();

		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $refund_id;
		}
	}
	
	public function set_refund_quantity($refund_id, $quantity)
	{
		$this->db->trans_begin();
				
		$refund_data = array(		
			'quantity'	     => $quantity,
			'date_modified'  => date('Y-m-d H:i:s')
		);
			
		$this->db->where('id', $refund_id);
		$this->db->update('inventory', $refund_data);
		
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
	
	public function edit_refund($refund_id, $data)
	{
		$this->db->trans_begin();
				
		$refund_data = array(		
			'batch'	           => $data['batch'],
			'quantity'	       => $data['quantity'],
			'date_modified'    => date('Y-m-d H:i:s')
		);
		
		$this->db->where('id', $refund_id);
		$this->db->update('inventory', $refund_data);
		
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
		
	public function get_refund($refund_id) 
	{		
		$this->db->select('inventory.*, product.id AS product_id, product.name AS product_name, warehouse.name AS warehouse_name, location.name AS location_name', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('inventory.id', $refund_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_location($location_id) 
	{
		$q = $this->db->get_where('inventory', array('type' => 1, 'location_id' => $location_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_refunds_by_product($product_id) 
	{		
		$this->db->select('inventory.*, warehouse.name AS warehouse_name, location.id AS location_id, location.name AS location_name', false);
		$this->db->from('inventory');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('inventory.product_id', $product_id);
		$this->db->where('inventory.type', 1);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_location_product($location_id, $product_id) 
	{
		$q = $this->db->get_where('inventory', array('type' => 1, 'location_id' => $location_id, 'product_id' => $product_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_location_batch_product($location_id, $batch, $product_id) 
	{
		$q = $this->db->get_where('inventory', array('location_id' => $location_id, 'batch' => $batch, 'product_id' => $product_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_warehouse_product($warehouse_id, $product_id) 
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
		
	public function delete_refund($refund_id) 
	{
		if($this->db->delete('inventory', array('id' => $refund_id))) 
		{
			return true;
		}
		
		return false;
	}	
		
	public function get_refunds($data = array()) 
	{			
		$this->db->select("inventory.*, product.name AS product_name, product.sku, location.name AS location_name, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('client', 'client.id = product.client_id', 'left');
		$this->db->where('inventory.type', 1);
		
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
		
		if(!empty($data['filter_client_id'])) 
		{			
			$this->db->where('client.id', $data['filter_client_id']);
		}
		
		if(!empty($data['filter_batch'])) 
		{			
			$this->db->like('inventory.batch', $data['filter_batch'], 'left');
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
			'client',
			'product.name',
			'product.sku',
			'location.name',
			'warehouse.name',
			'inventory.batch',
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
		
	public function get_refund_total($data = array())
	{
		$this->db->select('COUNT(inventory.id) AS total', false);
		$this->db->from('inventory');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->join('client', 'client.id = product.client_id', 'left');
		$this->db->where('inventory.type', 1);
		
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
		
		if(!empty($data['filter_client_id'])) 
		{			
			$this->db->where('client.id', $data['filter_client_id']);
		}
		
		if(!empty($data['filter_batch'])) 
		{			
			$this->db->like('inventory.batch', $data['filter_batch'], 'left');
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
}
