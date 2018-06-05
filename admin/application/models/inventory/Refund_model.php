<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Refund_model extends CI_Model
{		
	public function add_refund($data)
	{
		$this->db->trans_begin();
		
		$refund_data = array(		
			'product_id'	   => $data['product_id'],
			'location_id'	   => $data['location_id'],
			'quantity'	       => $data['quantity'],
			'date_added'   	   => date('Y-m-d H:i:s'),
			'date_modified'    => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('refund', $refund_data);
		
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
			
		$this->db->where('refund_id', $refund_id);
		$this->db->update('refund', $refund_data);
		
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
			'quantity'	       => $data['quantity'],
			'date_modified'    => date('Y-m-d H:i:s')
		);
		
		$this->db->where('refund_id', $refund_id);
		$this->db->update('refund', $refund_data);
		
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
		$this->db->select('refund.*, product.id AS product_id, product.name AS product_name, warehouse.name AS warehouse_name, location.name AS location_name', false);
		$this->db->from('refund');
		$this->db->join('product', 'product.id = refund.product_id', 'left');
		$this->db->join('location', 'location.id = refund.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('refund.refund_id', $refund_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_location($location_id) 
	{
		$q = $this->db->get_where('refund', array('location_id' => $location_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_refunds_by_product($product_id) 
	{		
		$this->db->select('refund.*, warehouse.name AS warehouse_name, location.id AS location_id, location.name AS location_name', false);
		$this->db->from('refund');
		$this->db->join('location', 'location.id = refund.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('refund.product_id', $product_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_location_product($location_id, $product_id) 
	{
		$q = $this->db->get_where('refund', array('location_id' => $location_id, 'product_id' => $product_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_location_batch_product($location_id, $batch, $product_id) 
	{
		$q = $this->db->get_where('refund', array('location_id' => $location_id, 'batch' => $batch, 'product_id' => $product_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_warehouse_product($warehouse_id, $product_id) 
	{
		$this->db->select('refund.*', false);
		$this->db->from('refund');
		$this->db->join('location', 'location.id = refund.location_id', 'left');
		$this->db->join('warehouse', 'warehouse.id = location.warehouse_id', 'left');
		$this->db->where('refund.product_id', $product_id);		
		$this->db->where('warehouse.id', $warehouse_id);		
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
		
	public function search_refund($key) 
	{
		$this->db->select('product.name AS product_name, location.name AS location_name, refund.quantity, refund.refund_id', false);
		$this->db->from('refund'); 
		$this->db->join('product', 'product.id = refund.product_id', 'left');
		$this->db->join('location', 'location.id = refund.location_id', 'left');
		$this->db->or_like('product.name', $key, 'left');  
		$this->db->or_like('location.name', $key, 'left');  
		$this->db->or_where('refund.quantity', $key); 
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_refund($refund_id) 
	{
		if($this->db->delete('refund', array('refund_id' => $refund_id))) 
		{
			return true;
		}
		
		return false;
	}	
	
	public function delete_refund_by_location($location_id) 
	{
		if($this->db->delete('refund', array('location_id' => $location_id))) 
		{
			return true;
		}
		
		return false;
	}	
	
	public function delete_refund_by_location_product($location_id, $product_id) 
	{
		if($this->db->delete('refund', array('location_id' => $location_id, 'product_id' => $product_id))) 
		{
			return true;
		}
		
		return false;
	}	
	
	public function clear_refund()
	{
		if($this->db->empty_table('refund')) 
		{
			return true;
		}
		
		return false;
	}
	
	public function get_refunds($data = array()) 
	{			
		$this->db->select("refund.*, product.name AS product_name, product.sku, location.name AS location_name", false);
		$this->db->from('refund');
		$this->db->join('product', 'product.id = refund.product_id', 'left');
		$this->db->join('location', 'location.id = refund.location_id', 'left');
		
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
		
		if(!empty($data['filter_quantity'])) 
		{			
			$this->db->where('refund.quantity', $data['filter_quantity']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('refund.date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('refund.date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		if(!empty($data['filter_date_modified'])) 
		{
			$this->db->where('refund.date_modified >=', $data['filter_date_modified'] . ' 00:00:00');
			$this->db->where('refund.date_modified <=', $data['filter_date_modified'] . ' 23:59:59');
		}
		
		$sort_data = array(
			'product.name',
			'product.sku',
			'location.name',
			'warehouse.name',
			'refund.quantity',
			'refund.date_added',
			'refund.date_modified'
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
		
	public function get_refund_total($data)
	{
		$this->db->select('refund.*', false);
		$this->db->from('refund');
		$this->db->join('product', 'product.id = refund.product_id', 'left');
		$this->db->join('location', 'location.id = refund.location_id', 'left');

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
		
		if(!empty($data['filter_quantity'])) 
		{			
			$this->db->where('refund.quantity', $data['filter_quantity']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('refund.date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('refund.date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		if(!empty($data['filter_date_modified'])) 
		{
			$this->db->where('refund.date_modified >=', $data['filter_date_modified'] . ' 00:00:00');
			$this->db->where('refund.date_modified <=', $data['filter_date_modified'] . ' 23:59:59');
		}
		
		$q = $this->db->get();
						
		return $q->num_rows();
	}
}
