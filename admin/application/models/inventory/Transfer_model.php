<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Transfer_model extends CI_Model
{			
	public function add_transfer($data)
	{
		$this->db->trans_begin();
		
		//transfer data
		$transfer_data = array(		
			'tracking'	        => $data['tracking'],
			'note'	            => $data['note'],
			'from_location_id'  => $data['from_location_id'],
			'to_location_id'	=> $data['to_location_id'],
			'date_added'   	    => date('Y-m-d H:i:s'),
			'date_modified'     => date('Y-m-d H:i:s')
		);
			
		$this->db->insert('transfer', $transfer_data);
		
		$transfer_id = $this->db->insert_id();
		
		//tranfer product
		$transfer_products = array();
					
		foreach($data['transfer_products'] as $transfer_product){					
			$transfer_products[] = array(
				'transfer_id'	=> $transfer_id,
				'product_id' 	=> $transfer_product['product_id'],
				'quantity' 		=> $transfer_product['quantity']
			);
		}
		
		$this->db->insert_batch('transfer_product', $transfer_products);	
		
		//inventory data		
		foreach($data['transfer_products'] as $transfer_product)
		{
			$this->db->where('product_id', $transfer_product['product_id']);
			$this->db->where('location_id', $data['from_location_id']);
			$this->db->set('quantity', 'quantity-'.$transfer_product['quantity'], false);
			$this->db->update('inventory');
			
			$q = $this->db->get_where('inventory', array('product_id' => $transfer_product['product_id'], 'location_id' => $data['to_location_id']));
	
			if($q->num_rows() > 0)
			{
				$this->db->where('product_id', $transfer_product['product_id']);
				$this->db->where('location_id', $data['to_location_id']);
				$this->db->set('quantity', 'quantity+'.$transfer_product['quantity'], false);
				$this->db->update('inventory');
			} 
			else
			{
				$inventory_data = array(
					'product_id' 	 => $transfer_product['product_id'],
					'quantity' 		 => $transfer_product['quantity'],
					'location_id' 	 => $data['to_location_id'],
					'date_added'     => date('Y-m-d H:i:s'),
					'date_modified'  => date('Y-m-d H:i:s')			
				);
				
				$this->db->insert('inventory', $inventory_data);	
			}
		}
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $transfer_id;
		}
	}
	
	public function edit_transfer($transfer_id, $data)
	{
		$this->db->trans_begin();
		
		//recover inventory
		$transfer = $this->get_transfer($transfer_id);
		$transfer_products = $this->get_transfer_products($transfer_id);
		
		foreach($transfer_products as $transfer_product)
		{
			$this->db->where('product_id', $transfer_product['product_id']);
			$this->db->where('location_id', $transfer['from_location_id']);
			$this->db->set('quantity', 'quantity+'.$transfer_product['quantity'], false);
			$this->db->update('inventory');
			
			$this->db->where('product_id', $transfer_product['product_id']);
			$this->db->where('location_id', $transfer['to_location_id']);
			$this->db->set('quantity', 'quantity-'.$transfer_product['quantity'], false);
			$this->db->update('inventory');
		}
		
		//tranfer data
		$transfer_data = array(		
			'tracking'	        => $data['tracking'],
			'note'	            => $data['note'],
			'from_location_id'  => $data['from_location_id'],
			'to_location_id'	=> $data['to_location_id'],
			'date_modified'     => date('Y-m-d H:i:s')
		);
		
		$this->db->where('transfer_id', $transfer_id);
		$this->db->update('transfer', $transfer_data);
		
		//tranfer products
		$this->db->delete('transfer_product', array('transfer_id' => $transfer_id));
		
		$transfer_products = array();
					
		foreach($data['transfer_products'] as $transfer_product){					
			$transfer_products[] = array(
				'transfer_id'	=> $transfer_id,
				'product_id' 	=> $transfer_product['product_id'],
				'quantity' 		=> $transfer_product['quantity']
			);
		}
		
		$this->db->insert_batch('transfer_product', $transfer_products);
		
		//inventory data		
		foreach($data['transfer_products'] as $transfer_product)
		{
			$this->db->where('product_id', $transfer_product['product_id']);
			$this->db->where('location_id', $data['from_location_id']);
			$this->db->set('quantity', 'quantity-'.$transfer_product['quantity'], false);
			$this->db->update('inventory');
			
			$q = $this->db->get_where('inventory', array('product_id' => $transfer_product['product_id'], 'location_id' => $data['to_location_id']));
	
			if($q->num_rows() > 0)
			{
				$this->db->where('product_id', $transfer_product['product_id']);
				$this->db->where('location_id', $data['to_location_id']);
				$this->db->set('quantity', 'quantity+'.$transfer_product['quantity'], false);
				$this->db->update('inventory');
			} 
			else
			{
				$inventory_data = array(
					'product_id' 	 => $transfer_product['product_id'],
					'quantity' 		 => $transfer_product['quantity'],
					'location_id' 	 => $data['to_location_id'],
					'date_added'     => date('Y-m-d H:i:s'),
					'date_modified'  => date('Y-m-d H:i:s')			
				);
				
				$this->db->insert('inventory', $inventory_data);	
			}
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
	
	public function get_transfer($transfer_id) 
	{		
		$this->db->select('t.*, w1.id AS from_warehouse_id, w1.name AS from_warehouse, w2.id AS to_warehouse_id, w2.name AS to_warehouse, l1.name AS from_location, l2.name AS to_location', false);
		$this->db->from('transfer t');
		$this->db->join('location l1', 'l1.id = t.from_location_id', 'left');
		$this->db->join('location l2', 'l2.id = t.to_location_id', 'left');
		$this->db->join('warehouse w1', 'w1.id = l1.warehouse_id', 'left');
		$this->db->join('warehouse w2', 'w2.id = l2.warehouse_id', 'left');
		$this->db->where('t.transfer_id', $transfer_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_transfer_products($transfer_id) 
	{		
		$this->db->select('p.*, p.id AS product_id, tp.quantity', false);
		$this->db->from('transfer_product tp');
		$this->db->join('product p', 'p.id = tp.product_id', 'left');
		$this->db->where('tp.transfer_id', $transfer_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_transfer_by_product($product_id) 
	{
		$this->db->select('transfer.*', false);
		$this->db->from('transfer_product');
		$this->db->join('transfer', 'transfer.id = transfer_product.transfer_id', 'left');
		$this->db->where('transfer_product.product_id', $product_id);
			
		$q = $this->db->get();	
			
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_transfers($data = array()) 
	{			
		$this->db->select('t.*, w1.name AS from_warehouse, w2.name AS to_warehouse, l1.name AS from_location, l2.name AS to_location', false);
		$this->db->from('transfer t');
		$this->db->join('location l1', 'l1.id = t.from_location_id', 'left');
		$this->db->join('location l2', 'l2.id = t.to_location_id', 'left');
		$this->db->join('warehouse w1', 'w1.id = l1.warehouse_id', 'left');
		$this->db->join('warehouse w2', 'w2.id = l2.warehouse_id', 'left');
		$this->db->group_by('t.transfer_id');
		
		if(!empty($data['filter_from_warehouse'])) 
		{			
			$this->db->like('w1.name', $data['filter_from_warehouse'], 'both');
		}
		
		if(!empty($data['filter_to_warehouse'])) 
		{			
			$this->db->like('w2.name', $data['filter_to_warehouse'], 'both');
		}
		
		if(!empty($data['filter_from_location'])) 
		{			
			$this->db->like('l1.name', $data['filter_from_location'], 'both');
		}
		
		if(!empty($data['filter_to_location'])) 
		{			
			$this->db->like('l2.name', $data['filter_to_location'], 'both');
		}
		
		$sort_data = array(
			'from_warehouse',
			'to_warehouse',
			'from_location',
			'to_location',
			't.date_added'
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
	
	function get_transfer_total($data = array())
	{
		$this->db->select('COUNT(t.transfer_id) AS total', false);
		$this->db->from('transfer t');
		$this->db->join('location l1', 'l1.id = t.from_location_id', 'left');
		$this->db->join('location l2', 'l2.id = t.to_location_id', 'left');
		$this->db->join('warehouse w1', 'w1.id = l1.warehouse_id', 'left');
		$this->db->join('warehouse w2', 'w2.id = l2.warehouse_id', 'left');
		
		
		$this->db->group_by('t.transfer_id');
		
		if(!empty($data['filter_from_warehouse'])) 
		{			
			$this->db->like('w1.name', $data['filter_from_warehouse'], 'both');
		}
		
		if(!empty($data['filter_to_warehouse'])) 
		{			
			$this->db->like('w2.name', $data['filter_to_warehouse'], 'both');
		}
		
		if(!empty($data['filter_from_location'])) 
		{			
			$this->db->like('l1.name', $data['filter_from_location'], 'both');
		}
		
		if(!empty($data['filter_to_location'])) 
		{			
			$this->db->like('l2.name', $data['filter_to_location'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function delete_transfer($transfer_id) 
	{
		$this->db->trans_begin();
		
		//recover inventory
		$transfer = $this->get_transfer($transfer_id);
		$transfer_products = $this->get_transfer_products($transfer_id);
		
		if($transfer_products)
		{
			foreach($transfer_products as $transfer_product)
			{
				$this->db->where('product_id', $transfer_product['product_id']);
				$this->db->where('location_id', $transfer['from_location_id']);
				$this->db->set('quantity', 'quantity+'.$transfer_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $transfer_product['product_id']);
				$this->db->where('location_id', $transfer['to_location_id']);
				$this->db->set('quantity', 'quantity-'.$transfer_product['quantity'], false);
				$this->db->update('inventory');
			}
		}
		
		$this->db->delete('transfer', array('transfer_id' => $transfer_id));
		$this->db->delete('transfer_product', array('transfer_id' => $transfer_id));
		
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
