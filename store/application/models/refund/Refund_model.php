<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Refund_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_refund($data)
	{
		$this->db->trans_begin();
		
		//refund data
		$refund_data = array(
			'tracking' 		    => $data['tracking'],
			'note' 		        => $data['note'],
			'status' 		    => $data['status'],
			'date_added'   		=> date('Y-m-d H:i:s'),
			'date_modified'   	=> date('Y-m-d H:i:s')			
		);

		$this->db->insert('refund', $refund_data);
						
		$refund_id = $this->db->insert_id();
		
		//refund products
		$refund_products = array();
					
		foreach($data['refund_products'] as $refund_product){					
			$refund_products[] = array(
				'refund_id'	    => $refund_id,
				'product_id' 	=> $refund_product['product_id'],
				'quantity' 		=> $refund_product['quantity'],
				'location_id'   => $refund_product['location_id']
			);
		}
		
		$this->db->insert_batch('refund_product', $refund_products);	
		
		//if completed in damage
		if($data['status'] == 2)
		{		
			foreach($data['refund_products'] as $refund_product)
			{
				$q = $this->db->get_where('damage', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+'.$refund_product['quantity'], false);
					$this->db->update('damage');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('damage', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
				else
				{
					$damage_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('damage', $damage_data);	
				}
			}
		}
		
		//if completed in inventory
		if($data['status'] == 3)
		{		
			foreach($data['refund_products'] as $refund_product)
			{
				$q = $this->db->get_where('inventory', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+'.$refund_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
				else
				{
					$inventory_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);	
				}
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

	public function edit_refund($refund_id, $data)
	{
		$this->db->trans_begin();
		
		//inventory data
		$refund = $this->get_refund($refund_id);
				
		//1. pending to damage
		if(($refund['status'] == 1) && ($data['status'] == 2))
		{
			foreach($data['refund_products'] as $refund_product)
			{	
				$q = $this->db->get_where('damage', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+' . $refund_product['quantity'], false);
					$this->db->update('damage');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('damage', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$damage_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('damage', $damage_data);
				}
			}
		} 
		
		//2. pending to inventory
		if(($refund['status'] == 1) && ($data['status'] == 3))
		{
			foreach($data['refund_products'] as $refund_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+'.$refund_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		} 
		
		//3.damge to pending
		if(($refund['status'] == 2) && ($data['status'] == 1))
		{
			$refund_products = $this->get_refund_products($refund_id);
		
			foreach($refund_products as $refund_product) 
			{	
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$refund_product['quantity'], false);
				$this->db->update('damage');
				
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->update('damage', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//4. damage to damage
		if(($refund['status'] == 2) && ($data['status'] == 2))
		{
			$refund_products = $this->get_refund_products($refund_id);
		
			foreach($refund_products as $refund_product) 
			{	
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$refund_product['quantity'], false);				
				$this->db->update('damage');
			}
			
			foreach($data['refund_products'] as $refund_product)
			{	
				$q = $this->db->get_where('damage', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));
			
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+'.$refund_product['quantity'], false);
					$this->db->update('damage');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('damage', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$damage_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('damage', $damage_data);
				}
			}
		}
		
		//5.damage to inventory
		if(($refund['status'] == 2) && ($data['status'] == 3))
		{		
			$refund_products = $this->get_refund_products($refund_id);
		
			foreach($refund_products as $refund_product) 
			{	
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$refund_product['quantity'], false);
				$this->db->update('damage');
				
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->update('damage', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
			
			foreach($data['refund_products'] as $refund_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+' .$refund_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		}
		
		//6. inventory to inventory
		if(($refund['status'] == 3) && ($data['status'] == 3))
		{
			$refund_products = $this->get_refund_products($refund_id);
		
			foreach($refund_products as $refund_product) 
			{	
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$refund_product['quantity'], false);				
				$this->db->update('inventory');
			}
			
			foreach($data['refund_products'] as $refund_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));
			
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+'.$refund_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		}
		
		//7.inventory to pending
		if(($refund['status'] == 3) && ($data['status'] == 1))
		{
			$refund_products = $this->get_refund_products($refund_id);
		
			foreach($refund_products as $refund_product) 
			{	
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$refund_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $refund_product['product_id']);
				$this->db->where('location_id', $refund_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//refund data
		$refund_data = array(
			'tracking'     => $data['tracking'],
			'status'       => $data['status'],
			'note' 		   => $data['note']
		);
		
		$this->db->where('refund_id', $refund_id);
		$this->db->update('refund', $refund_data);
		
		//refund product
		$this->db->delete('refund_product', array('refund_id' => $refund_id));
	
		$refund_products = array();
		
		foreach($data['refund_products'] as $refund_product){
			$refund_products[] = array(
				'refund_id'   => $refund_id,
				'product_id'   => $refund_product['product_id'],
				'quantity' 	   => $refund_product['quantity'],
				'location_id'  => $refund_product['location_id']
			);
		}
		
		$this->db->insert_batch('refund_product', $refund_products);

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
		
	public function complete_refund($refund_id)
	{
		$this->db->trans_begin();
		
		$refund = $this->get_refund($refund_id);
		
		if($refund['status'] == 1)
		{
			//inventory data
			$refund_products = $this->get_refund_products($refund_id);
			
			foreach($refund_products as $refund_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity+'.$refund_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $refund_product['product_id'],
						'quantity' 		 => $refund_product['quantity'],
						'location_id' 	 => $refund_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
			
			//refund data
			$this->db->where('refund_id', $refund_id);
			$this->db->update('refund', array('status'  => 2));
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
	
	public function get_refund($refund_id) 
	{	
		$q = $this->db->get_where('refund', array('refund_id' => $refund_id));
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_by_tracking($tracking) 
	{	
		$q = $this->db->get_where('refund', array('tracking' => $tracking));
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refund_products($refund_id) 
	{	
		$this->db->select('product.*, product.id AS product_id, product.name AS product_name, refund_product.quantity, refund_product.location_id, location.name AS location_name', false);
		$this->db->from('refund_product');
		$this->db->join('product', 'product.id = refund_product.product_id', 'left');
		$this->db->join('location', 'location.id = refund_product.location_id', 'left');
		$this->db->where('refund_product.refund_id', $refund_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	function delete_refund($refund_id)
	{
		$this->db->trans_begin();
		
		//restore inventory
		$refund = $this->get_refund($refund_id);
		
		if($refund['status'] == 2)
		{
			$refund_products = $this->get_refund_products($refund_id);
			
			foreach($refund_products as $refund_product)
			{
				$q = $this->db->get_where('inventory', array('product_id' => $refund_product['product_id'], 'location_id' => $refund_product['location_id']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->set('quantity', 'quantity-'.$refund_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $refund_product['product_id']);
					$this->db->where('location_id', $refund_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
			}
		}
		
		//delete refund
		$this->db->delete('refund', array('refund_id' => $refund_id));
		$this->db->delete('refund_product', array('refund_id' => $refund_id));		
		
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
	
	public function find_refunds($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('refund');
		
		if(!empty($data['filter_refund_id'])) 
		{						
			$this->db->like('refund_id', $data['filter_refund_id'], 'left');			
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'left');
		}
		
		if(!empty($data['filter_status'])) 
		{	
			$this->db->where('status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		$sort_data = array(
			'refund_id',
			'tracking',
			'status',
			'date_added'
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
	
	public function get_refunds($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('refund');
		
		if(!empty($data['filter_refund_id'])) 
		{			
			$this->db->where('refund_id', $data['filter_refund_id']);
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'left');
		}
		
		if(!empty($data['filter_status'])) 
		{	
			$this->db->where('status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		$sort_data = array(
			'refund_id',
			'tracking',
			'status',
			'date_added'
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

	function get_refund_total($data)
	{		
		$this->db->select('COUNT(refund_id) AS total', false);
		$this->db->from('refund');
		
		if(!empty($data['filter_refund_id'])) 
		{			
			$this->db->where('refund_id', $data['filter_refund_id']);
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'left');
		}
		
		if(!empty($data['filter_status'])) 
		{	
			$this->db->where('status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('date_added >=', $data['filter_date_added'] . ' 00:00:00');
			$this->db->where('date_added <=', $data['filter_date_added'] . ' 23:59:59');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}	
}
