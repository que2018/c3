<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkin_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_checkin($data)
	{
		$this->db->trans_begin();
		
		//checkin data
		$checkin_data = array(
			'client_id' 	    => $this->auth->get_client_id(),
			'tracking' 		    => $data['tracking'],
			'note' 		        => $data['note'],
			'status' 		    => $data['status'],
			'date_added'   		=> date('Y-m-d H:i:s'),
			'date_modified'   	=> date('Y-m-d H:i:s')			
		);

		$this->db->insert('checkin', $checkin_data);
						
		$checkin_id = $this->db->insert_id();
		
		//checkin products
		$checkin_products = array();
					
		foreach($data['checkin_products'] as $checkin_product){					
			$checkin_products[] = array(
				'checkin_id'	=> $checkin_id,
				'product_id' 	=> $checkin_product['product_id'],
				'quantity' 		=> $checkin_product['quantity']
			);
		}
		
		$this->db->insert_batch('checkin_product', $checkin_products);	
		
		//checkin fee
		if(isset($data['checkin_fees']) && $data['checkin_fees'])
		{
			$checkin_fees = array();
						
			foreach($data['checkin_fees'] as $checkin_fee){					
				$checkin_fees[] = array(
					'checkin_id'  => $checkin_id,
					'name' 	      => $checkin_fee['name'],
					'amount'      => $checkin_fee['amount']
				);
			}
			
			$this->db->insert_batch('checkin_fee', $checkin_fees);
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
	
	public function edit_checkin($checkin_id, $data)
	{
		$this->db->trans_begin();
				
		//checkin data
		$checkin_data = array(
			'tracking'     => $data['tracking'],
			'status'       => $data['status'],
			'note' 		   => $data['note']
		);
		
		$this->db->where('id', $checkin_id);
		$this->db->update('checkin', $checkin_data);
		
		//checkin product
		$this->db->delete('checkin_product', array('checkin_id' => $checkin_id));
	
		$checkin_products = array();
		
		foreach($data['checkin_products'] as $checkin_product){
			$checkin_products[] = array(
				'checkin_id'   => $checkin_id,
				'product_id'   => $checkin_product['product_id'],
				'quantity' 	   => $checkin_product['quantity'],
			);
		}
		
		$this->db->insert_batch('checkin_product', $checkin_products);

		//checkin fee
		$this->db->delete('checkin_fee', array('checkin_id' => $checkin_id));
		
		if(isset($data['checkin_fees']) && $data['checkin_fees'])
		{
			$checkin_fees = array();
						
			foreach($data['checkin_fees'] as $checkin_fee){					
				$checkin_fees[] = array(
					'checkin_id'  => $checkin_id,
					'name' 	      => $checkin_fee['name'],
					'amount'      => $checkin_fee['amount']
				);
			}
			
			$this->db->insert_batch('checkin_fee', $checkin_fees);
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
		
	public function get_checkin($checkin_id) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkin');
		$this->db->where('id', $checkin_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkin_by_tracking($tracking) 
	{	
		$this->db->select('checkin.*, location.name AS location_name', false);
		$this->db->from('checkin');
		$this->db->join('location', 'location.id = checkin.location_id', 'left');
		$this->db->where('checkin.tracking', $tracking);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkin_products($checkin_id) 
	{	
		$this->db->select('product.*, product.id AS product_id, product.name AS product_name, checkin_product.quantity, checkin_product.location_id, location.name AS location_name', false);
		$this->db->from('checkin_product');
		$this->db->join('product', 'product.id = checkin_product.product_id', 'left');
		$this->db->join('location', 'location.id = checkin_product.location_id', 'left');
		$this->db->where('checkin_product.checkin_id', $checkin_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkin_fees($checkin_id) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkin_fee');
		$this->db->where('checkin_id', $checkin_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	function delete_checkin($id)
	{
		$this->db->trans_begin();
		
		//restore inventory
		$checkin = $this->get_checkin($id);
		
		if($checkin['status'] == 2)
		{
			$checkin_products = $this->get_checkin_products($id);
			
			foreach($checkin_products as $checkin_product)
			{
				$q = $this->db->get_where('inventory', array('product_id' => $checkin_product['product_id'], 'location_id' => $checkin_product['location_id']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->set('quantity', 'quantity-'.$checkin_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
			}
		}
		
		//delete checkin
		$this->db->delete('checkin', array('id' => $id));
		$this->db->delete('checkin_product', array('checkin_id' => $id));		
		$this->db->delete('checkin_fee', array('checkin_id' => $id));
		
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
	
	public function find_checkins($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkin');
		
		if(!empty($data['filter_id'])) 
		{						
			$this->db->like('id', $data['filter_id'], 'left');			
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'after');
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
			'id',
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
	
	public function get_checkins($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkin');
		$this->db->where('client_id', $this->auth->get_client_id());
		
		if(!empty($data['filter_id'])) 
		{			
			$this->db->where('id', $data['filter_id']);
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'after');
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
			'id',
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

	function get_checkin_total($data)
	{		
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('checkin');
		$this->db->where('client_id', $this->auth->get_client_id());
		
		if(!empty($data['filter_id'])) 
		{			
			$this->db->where('id', $data['filter_id']);
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'after');
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
