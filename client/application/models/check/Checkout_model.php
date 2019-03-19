<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkout_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_checkout($data)
	{
		$this->lang->load('check/checkout');
		
		$this->db->trans_begin();
		
		//checkout data
		$checkout_data = array(
			'tracking' 		    => $data['tracking'],
			'status' 		    => $data['status'],
			'note' 		        => $data['note'],
			'date_added'   		=> date('Y-m-d H:i:s'),
			'date_modified'   	=> date('Y-m-d H:i:s')			
		);

		$this->db->insert('checkout', $checkout_data);
					
		$checkout_id = $this->db->insert_id();
		
		//checkout product
		$checkout_products = array();
					
		foreach($data['checkout_products'] as $checkout_product)
		{					
			$checkout_products[] = array(
				'checkout_id'	=> $checkout_id,
				'product_id' 	=> $checkout_product['product_id'],
				'quantity' 		=> $checkout_product['quantity'],
				'location_id'   => $checkout_product['location_id']
			);
		}
		
		$this->db->insert_batch('checkout_product', $checkout_products);							
		
		//checkout fee
		if(isset($data['checkout_fees']) && $data['checkout_fees'])
		{
			$checkout_fees = array();
						
			foreach($data['checkout_fees'] as $checkout_fee){					
				$checkout_fees[] = array(
					'checkout_id'  => $checkout_id,
					'name' 	       => $checkout_fee['name'],
					'amount'       => $checkout_fee['amount']
				);
			}
			
			$this->db->insert_batch('checkout_fee', $checkout_fees);
		}

		//if completed, change inventory
		if($data['status'] == 2)
		{
			foreach($data['checkout_products'] as $checkout_product)
			{
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}	
		}
		
		//if completed, add fees
		$this->load->model('finance/transaction_model');
		
		$sale = $this->get_checkout_sale($checkout_id);
		
		if($sale['client_id'])
		{
			$client_id = $sale['client_id'];
			
			if(($data['status'] == 2) && isset($data['checkout_fees']))
			{	
				$amount = 0;
			
				foreach($data['checkout_fees'] as $checkout_fee) 
				{
					$amount += $checkout_fee['amount'];
				}
				
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkout',
					'type_id'         => $checkout_id,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
				);
								
				$this->transaction_model->add_transaction($transaction_data);							
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
			
			return $checkout_id;
		}
	}
	
	public function add_sale_checkout($sale_id, $data)
	{
		$this->db->trans_begin();
		
		$checkout_id = $this->add_checkout($data);
		
		$sale_checkout_data = array(
			'sale_id' 		=> $sale_id,
			'checkout_id'   => $checkout_id	
		);

		$this->db->insert('sale_to_checkout', $sale_checkout_data);
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $checkout_id;
		}
	}

	public function edit_checkout($checkout_id, $data)
	{
		$this->lang->load('check/checkout');
		
		$this->db->trans_begin();
		
		//inventory data
		$checkout = $this->get_checkout($checkout_id);
		
		if(($checkout['status'] == 1) && ($data['status'] == 2))
		{
			foreach($data['checkout_products'] as $checkout_product)
			{
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		if(($checkout['status'] == 2) && ($data['status'] == 2))
		{
			$checkout_products = $this->get_checkout_products($checkout_id);
			
			foreach($checkout_products as $checkout_product) 
			{	
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
			
			foreach($data['checkout_products'] as $checkout_product)
			{	
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		if(($checkout['status'] == 2) && ($data['status'] == 1))
		{
			$checkout_products = $this->get_checkout_products($checkout_id);
			
			foreach($checkout_products as $checkout_product) 
			{
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//transaction
		$this->load->model('finance/transaction_model');
		
		$sale = $this->get_checkout_sale($checkout_id);
		
		if($sale['client_id'] && $data['checkout_fees'])
		{
			$client_id = $sale['client_id'];
			
			if(($checkout['status'] == 1) && ($data['status'] == 2))
			{
				$amount = 0;
				
				foreach($data['checkout_fees'] as $checkout_fee) 
				{
					$amount += $checkout_fee['amount'];
				}
				
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkout',
					'type_id'         => $checkout_id,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
				);
								
				$this->transaction_model->add_transaction($transaction_data); 
			}
			
			if(($checkout['status'] == 2) && ($data['status'] == 2))
			{
				$amount = 0;
								
				foreach($data['checkout_fees'] as $checkout_fee) 
				{
					$amount += $checkout_fee['amount'];
				}
				
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkout',
					'type_id'         => $checkout_id,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
				);
				
				$this->transaction_model->delete_transaction_by_type('checkout', $transaction_id);				   
								
				$this->transaction_model->add_transaction($transaction_data);
			}
				
			if(($checkout['status'] == 2) && ($data['status'] == 1))
			{
				$this->transaction_model->delete_transaction_by_type('checkout', $transaction_id);				   
			}
		}
		
		//checkout data
		$checkout_data = array(
			'tracking'     => $data['tracking'],
			'status'       => $data['status'],
			'note'         => $data['note']
		);
		
		$this->db->where('id', $checkout_id);
		$this->db->update('checkout', $checkout_data);
			
		$this->db->delete('checkout_product', array('checkout_id' => $checkout_id));
	
		//checkout product
		$this->db->delete('checkout_product', array('checkout_id' => $checkout_id));
	
		$checkout_products = array();
		
		foreach($data['checkout_products'] as $checkout_product){
			$checkout_products[] = array(
				'checkout_id'  => $checkout_id,
				'product_id'   => $checkout_product['product_id'],
				'quantity' 	   => $checkout_product['quantity'],
				'location_id'  => $checkout_product['location_id']
			);
		}
		
		$this->db->insert_batch('checkout_product', $checkout_products);

		//checkout fee
		$this->db->delete('checkout_fee', array('checkout_id' => $checkout_id));
		
		if(isset($data['checkout_fees']) && $data['checkout_fees'])
		{
			$checkout_fees = array();
						
			foreach($data['checkout_fees'] as $checkout_fee){					
				$checkout_fees[] = array(
					'checkout_id'  => $checkout_id,
					'name' 	       => $checkout_fee['name'],
					'amount'       => $checkout_fee['amount']
				);
			}
			
			$this->db->insert_batch('checkout_fee', $checkout_fees);
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
	
	public function edit_sale_checkout($sale_id, $data)
	{
		$this->db->trans_begin();
		
		$checkout = $this->get_sale_checkout($sale_id);

		if($checkout)
		{
			$checkout_id = $checkout['id'];
						
			$this->edit_checkout($checkout_id, $data);
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
	
	public function complete_checkout($checkout_id)
	{
		$this->lang->load('check/checkout');
		
		$this->db->trans_begin();
		
		$checkout = $this->get_checkout($checkout_id);
		
		if($checkout['status'] == 1)
		{
			//inventory data
			$checkout_products = $this->get_checkout_products($checkout_id);
			
			foreach($checkout_products as $checkout_product)
			{
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
			
			//checkout fee data
			$sale = $this->get_checkout_sale($checkout_id);
			
			if($sale['client_id'])
			{
				$client_id = $sale['client_id'];
				
				$checkout_fees = $this->get_checkout_fees($checkout_id);
				
				$amount = 0;
					
				foreach($checkout_fees as $checkout_fee) 
				{
					$amount += $checkout_fee['amount'];
				}
				
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkout',
					'type_id'         => $checkout_id,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
				);
				
				$this->load->model('finance/transaction_model');
				
				$this->transaction_model->add_transaction($transaction_data); 								
			}
			
			//checkout data
			$this->db->where('id', $checkout_id);
			$this->db->update('checkout', array('status' => 2));
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
		
	public function get_checkout($id) 
	{	
		$this->db->select("*", false);
		$this->db->from('checkout');
		$this->db->where('id', $id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkout_by_tracking($tracking) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkout');
		$this->db->where('tracking', $tracking);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_sale_checkout($sale_id) 
	{	
		$this->db->select('checkout.*', false);
		$this->db->from('sale_to_checkout');
		$this->db->join('checkout', 'sale_to_checkout.checkout_id = checkout.id', 'left');
		$this->db->where('sale_to_checkout.sale_id', $sale_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkout_sale($checkout_id) 
	{	
		$this->db->select('sale.*, store.store_id AS store_id, client.id AS client_id', false);
		$this->db->from('sale_to_checkout');
		$this->db->join('sale', 'sale.id = sale_to_checkout.sale_id', 'left');
		$this->db->join('store', 'store.store_id = sale.store_id', 'left');
		$this->db->join('client', 'client.id = store.client_id', 'left');
		$this->db->where('sale_to_checkout.checkout_id', $checkout_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_sale_checkout_product_location($sale_id, $product_id) 
	{	
		$this->db->select('location.id AS location_id, location.name AS location_name', false);
		$this->db->from('sale_to_checkout');
		$this->db->join('sale', 'sale.id = sale_to_checkout.sale_id', 'left');
		$this->db->join('sale_product', 'sale.id = sale_product.sale_id', 'left');
		$this->db->join('checkout_product', 'sale_to_checkout.checkout_id = checkout_product.checkout_id', 'left');
		$this->db->join('location', 'checkout_product.location_id = location.id', 'left');
		$this->db->where('sale_to_checkout.sale_id', $sale_id);
		$this->db->where('sale_product.product_id', $product_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkout_products($checkout_id) 
	{	
		$this->db->select('product.*, product.id AS product_id, product.name AS product_name, checkout_product.quantity, checkout_product.location_id, location.name AS location_name', false);
		$this->db->from('checkout_product');
		$this->db->join('product', 'product.id = checkout_product.product_id', 'left');
		$this->db->join('location', 'location.id = checkout_product.location_id', 'left');
		$this->db->where('checkout_product.checkout_id', $checkout_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkout_fees($checkout_id) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkout_fee');
		$this->db->where('checkout_id', $checkout_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_checkouts($data) 
	{	
		$this->db->select("*", false);
		$this->db->from('checkout');
		
		if(!empty($data['filter_id'])) 
		{			
			$this->db->like('id', $data['filter_id'], 'after');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'after');
		}
		
		if(!empty($data['filter_note'])) 
		{			
			$this->db->like('note', $data['filter_note'], 'both');
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$sort_data = array(
			'id',
			'tracking',
			'note',
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
	
	public function search_checkout($key) 
	{
		$this->db->select('*', false);
		$this->db->from('checkout'); 
		$this->db->or_where('id', $key);  
		$this->db->or_like('tracking', $key, 'left');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkouts($data) 
	{	
		$this->db->select('checkout.*, sale_to_checkout.sale_id', false);
		$this->db->from('checkout');
		$this->db->join('sale_to_checkout', 'sale_to_checkout.checkout_id = checkout.id', 'left');
		
		if(!empty($data['filter_id'])) 
		{			
			$this->db->where('checkout.id', $data['filter_id']);
		}
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->where('sale_to_checkout.sale_id', $data['filter_sale_id']);
		}
		
		if(!empty($data['filter_note'])) 
		{			
			$this->db->like('checkout.note', $data['filter_note'], 'both');
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('checkout.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('checkout.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$sort_data = array(
			'id',
			'note',
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

	function get_checkout_total($data)
	{		
		$this->db->select('COUNT(checkout.id) AS total', false);
		$this->db->from('checkout');
		$this->db->join('sale_to_checkout', 'sale_to_checkout.checkout_id = checkout.id', 'left');
		
		if(!empty($data['filter_id'])) 
		{			
			$this->db->where('checkout.id', $data['filter_id']);
		}
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->where('sale_to_checkout.sale_id', $data['filter_sale_id']);
		}
		
		if(!empty($data['filter_note'])) 
		{			
			$this->db->like('checkout.note', $data['filter_note'], 'both');
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('checkout.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('checkout.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	function delete_checkout($checkout_id)
	{
		$this->db->trans_begin();
		
		$checkout = $this->get_checkout($checkout_id);
		$checkout_products = $this->get_checkout_products($checkout_id);
		
		//restore inventory data
		if($checkout['status'] == 2)
		{
			foreach($checkout_products as $checkout_product) 
			{	
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkout_product['product_id']);
				$this->db->where('location_id', $checkout_product['location_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		$this->db->delete('checkout', array('id' => $checkout_id));
		$this->db->delete('checkout_product', array('checkout_id' => $checkout_id));
		$this->db->delete('checkout_fee', array('checkout_id' => $checkout_id));
		$this->db->delete('sale_to_checkout', array('checkout_id' => $checkout_id));
		$this->db->delete('transaction', array('type' => 'checkout', 'type_id' => $checkout_id));

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
