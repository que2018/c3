<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_model extends CI_Model
{		
	public function add_checkout($data)
	{
		$this->lang->load('check/checkout');
		
		$this->db->trans_begin();
		
		//checkout data
		$checkout_data = array(
			'tracking' 		    => $data['tracking'],
			'status' 		    => $data['status'],
			'length'	        => $data['length'],
			'width'	            => $data['width'],
			'height'	        => $data['height'],
			'weight'	        => $data['weight'],
			'length_class_id'	=> $data['length_class_id'],
			'weight_class_id'	=> $data['weight_class_id'],
			'shipping_provider'	=> $data['shipping_provider'],
			'shipping_service'	=> $data['shipping_service'],
			'note' 		        => $data['note'],
			'date_added'   		=> date('Y-m-d H:i:s'),
			'date_modified'   	=> date('Y-m-d H:i:s')			
		);

		$this->db->insert('checkout', $checkout_data);
					
		$checkout_id = $this->db->insert_id();
		
		//generate code
		$code = '10000000000000' . $checkout_id;
		
		$this->db->where('id', $checkout_id);
		$this->db->update('checkout', array('code' => $code)); 
		
		//sale checkout
		if($data['sale_id'])
		{
			$sale_checkout_data = array(
				'sale_id' 		=> $data['sale_id'],
				'checkout_id'   => $checkout_id	
			);

			$this->db->insert('sale_to_checkout', $sale_checkout_data);
		}
		
		//checkout product
		$checkout_products = array();
					
		foreach($data['checkout_products'] as $checkout_product)
		{					
			$checkout_products[] = array(
				'checkout_id'	=> $checkout_id,
				'inventory_id'  => $checkout_product['inventory_id'],
				'quantity' 		=> $checkout_product['quantity']
			);
		}
		
		$this->db->insert_batch('checkout_product', $checkout_products);							
		
		//checkout file	
		if(isset($data['checkout_files']) && $data['checkout_files'])
		{						
			foreach($data['checkout_files'] as $checkout_file)
			{			
				if(is_file(FILEPATH . $checkout_file['path'])) 		
				{
					$checkout_files[] = array(
						'checkout_id' => $checkout_id,
						'path'        => $checkout_file['path']
					);
				}
			}
			
			$this->db->insert_batch('checkout_file', $checkout_files);
		}
		
		//checkout fee
		if(isset($data['checkout_fees']) && $data['checkout_fees'])
		{
			$checkout_fees = array();
						
			foreach($data['checkout_fees'] as $checkout_fee)
			{					
				$checkout_fees[] = array(
					'checkout_id' => $checkout_id,
					'name'        => $checkout_fee['name'],
					'amount'      => $checkout_fee['amount']
				);
			}
			
			$this->db->insert_batch('checkout_fee', $checkout_fees);
		} 

		//if completed, change inventory
		if($data['status'] == 2)
		{
			foreach($data['checkout_products'] as $checkout_product)
			{
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
			
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}	
		}
		
		//transaction	
		if(($data['status'] == 2) && isset($data['checkout_fees']))
		{	
			$checkout_product = $data['checkout_products'][0];
			
			$this->load->model('catalog/product_model');
			
			$product_info = $this->product_model->get_product($checkout_product['product_id']);
			
			$client_id = $product_info['client_id'];
	
			$amount = 0;
			
			foreach($data['checkout_fees'] as $checkout_fee) 
			{
				$amount += $checkout_fee['amount'];
			}
			
			$this->load->model('finance/transaction_model');
			
			$transaction_data = array(					
				'client_id'		  => $client_id,
				'type'		      => 'checkout',
				'type_id'         => $checkout_id,
				'cost'   		  => 0,
				'markup'   		  => $amount,
				'amount'   		  => $amount,
				'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
			);
			
			$this->transaction_model->add_transaction($transaction_data); 							
		} 
		
		//order status
		$sale = $this->get_checkout_sale($checkout_id);
		
		if($sale)
		{
			if($data['status'] == 1)
			{
				$this->db->where('id', $sale['id']);
				$this->db->set('status_id', 1, false);
				$this->db->update('sale');
			}
			
			if($data['status'] == 2)
			{
				$this->db->where('id', $sale['id']);
				$this->db->set('status_id', 2, false);
				$this->db->update('sale');
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

	public function edit_checkout($checkout_id, $data)
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('finance/transaction_model');
		
		$this->db->trans_begin();
		
		//inventory data
		$checkout = $this->get_checkout($checkout_id);
				
		if(($checkout['status'] == 1) && ($data['status'] == 2))
		{
			foreach($data['checkout_products'] as $checkout_product)
			{
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
			
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		if(($checkout['status'] == 2) && ($data['status'] == 2))
		{
			$checkout_products = $this->get_checkout_products($checkout_id);
			
			foreach($checkout_products as $checkout_product) 
			{	
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
			
			foreach($data['checkout_products'] as $checkout_product)
			{	
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
			
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		if(($checkout['status'] == 2) && ($data['status'] == 1))
		{
			$checkout_products = $this->get_checkout_products($checkout_id);
			
			foreach($checkout_products as $checkout_product) 
			{
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//transaction		
		if(isset($data['checkout_fees']))
		{
			$this->load->model('finance/transaction_model');

			$checkout_product = $data['checkout_products'][0];
			
			$this->load->model('catalog/product_model');
			
			$product_info = $this->product_model->get_product($checkout_product['product_id']);
			
			$client_id = $product_info['client_id'];
			
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
					'cost'   		  => 0,
					'markup'   		  => $amount,
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
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
				);
				
				$this->transaction_model->delete_transaction_by_type('checkout', $checkout_id);				   
								
				$this->transaction_model->add_transaction($transaction_data);
			}
				
			if(($checkout['status'] == 2) && ($data['status'] == 1))
			{
				$this->transaction_model->delete_transaction_by_type('checkout', $checkout_id);				   
			}
		} 
		
		//order status
		$sale = $this->get_checkout_sale($checkout_id);
		
		if($sale)
		{
			if($data['status'] == 1)
			{
				$this->db->where('id', $sale['id']);
				$this->db->set('status_id', 1, false);
				$this->db->update('sale');
			}
			
			if($data['status'] == 2)
			{
				$this->db->where('id', $sale['id']);
				$this->db->set('status_id', 2, false);
				$this->db->update('sale');
			}
		}
		
		//checkout data
		$checkout_data = array(
			'tracking'     		=> $data['tracking'],
			'status'      	 	=> $data['status'],
			'length'	        => $data['length'],
			'width'	            => $data['width'],
			'height'	        => $data['height'],
			'weight'	        => $data['weight'],
			'length_class_id'	=> $data['length_class_id'],
			'weight_class_id'	=> $data['weight_class_id'],
			'shipping_provider'	=> $data['shipping_provider'],
			'shipping_service'	=> $data['shipping_service'],
			'note'         		=> $data['note']
		);
		
		$this->db->where('id', $checkout_id);
		$this->db->update('checkout', $checkout_data);
			
		//checkout sale	
		$this->db->delete('sale_to_checkout', array('checkout_id' => $checkout_id));		
				
		if($data['sale_id'])
		{
			$sale_checkout_data = array(
				'sale_id' 		=> $data['sale_id'],
				'checkout_id'   => $checkout_id	
			);

			$this->db->insert('sale_to_checkout', $sale_checkout_data);
		}
			
		//checkout product
		$this->db->delete('checkout_product', array('checkout_id' => $checkout_id));
	
		$checkout_products = array();
		
		foreach($data['checkout_products'] as $checkout_product){
			$checkout_products[] = array(
				'checkout_id'  => $checkout_id,
				'inventory_id' => $checkout_product['inventory_id'],
				'quantity' 	   => $checkout_product['quantity']
			);
		}
		
		$this->db->insert_batch('checkout_product', $checkout_products);

		//checkout file	
		$this->db->delete('checkout_file', array('checkout_id' => $checkout_id));
		
		if(isset($data['checkout_files']) && $data['checkout_files'])
		{						
			foreach($data['checkout_files'] as $checkout_file)
			{			
				if(is_file(FILEPATH . $checkout_file['path'])) 		
				{
					$checkout_files[] = array(
						'checkout_id' => $checkout_id,
						'path'        => $checkout_file['path']
					);
				}
			}
			
			$this->db->insert_batch('checkout_file', $checkout_files);
		}

		//checkout fee
		$this->db->delete('checkout_fee', array('checkout_id' => $checkout_id));
		
		if(isset($data['checkout_fees']) && $data['checkout_fees'])
		{
			$checkout_fees = array();
						
			foreach($data['checkout_fees'] as $checkout_fee)
			{					
				$checkout_fees[] = array(
					'checkout_id' => $checkout_id,
					'name'        => $checkout_fee['name'],
					'amount'      => $checkout_fee['amount']
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
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity-'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
			
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
			
			//transaction	
			$checkout_fees = $this->get_checkout_fees($checkout_id);

			if($checkout_fees)
			{	
				$checkout_product = $checkout_products[0];
				
				$this->load->model('catalog/product_model');
				
				$product_info = $this->product_model->get_product($checkout_product['product_id']);
				
				$client_id = $product_info['client_id'];
		
				$amount = 0;
				
				foreach($checkout_fees as $checkout_fee) 
				{
					$amount += $checkout_fee['amount'];
				}
				
				$this->load->model('finance/transaction_model');
				
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkout',
					'type_id'         => $checkout_id,
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkout_transaction_note'), $checkout_id)
				);
				
				$this->transaction_model->add_transaction($transaction_data); 							
			} 
			
			//order status
			$sale = $this->get_checkout_sale($checkout_id);
			
			if($sale)
			{
				$this->db->where('id', $sale['id']);
				$this->db->set('status_id', 2, false);
				$this->db->update('sale');
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
	
	public function uncomplete_checkout($checkout_id)
	{
		$this->lang->load('check/checkout');
		
		$this->db->trans_begin();
		
		$checkout = $this->get_checkout($checkout_id);
		
		if($checkout['status'] == 2)
		{
			//inventory data
			$checkout_products = $this->get_checkout_products($checkout_id);
			
			foreach($checkout_products as $checkout_product)
			{
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
			
			//transaction
			$this->load->model('finance/transaction_model');

			$this->transaction_model->delete_transaction_by_type('checkout', $checkout_id);			
			
			//order status
			$sale = $this->get_checkout_sale($checkout_id);
			
			if($sale)
			{
				$this->db->where('id', $sale['id']);
				$this->db->set('status_id', 1, false);
				$this->db->update('sale');
			}
			
			//checkout data
			$this->db->where('id', $checkout_id);
			$this->db->update('checkout', array('status' => 1));
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
		
	public function get_checkout($checkout_id) 
	{	
		$this->db->select('checkout.*, sale_to_checkout.sale_id', false);
		$this->db->from('checkout');
		$this->db->join('sale_to_checkout', 'sale_to_checkout.checkout_id = checkout.id', 'left');
		$this->db->where('checkout.id', $checkout_id);
		
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
		$this->db->select('sale.*, store.store_id, client.id AS client_id', false);
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
	
	public function get_checkout_products($checkout_id) 
	{	
		$this->db->select('checkout_product.inventory_id, checkout_product.quantity, product.*, product.id AS product_id, product.name AS product_name, location.name AS location_name, inventory.batch', false);
		$this->db->from('checkout_product');
		$this->db->join('inventory', 'inventory.id = checkout_product.inventory_id', 'left');
		$this->db->join('product', 'product.id = inventory.product_id', 'left');
		$this->db->join('location', 'location.id = inventory.location_id', 'left');
		$this->db->where('checkout_product.checkout_id', $checkout_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkout_files($checkout_id) 
	{	
		$q = $this->db->get_where('checkout_file', array('checkout_id' => $checkout_id));

		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkout_labels($checkout_id) 
	{	
		$q = $this->db->get_where('checkout_label', array('checkout_id' => $checkout_id));

		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkout_fees($checkout_id) 
	{	
		$this->db->select('checkout_fee.*', false);
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
		$this->db->or_like('tracking', $key, 'after');  
		
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
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('checkout.status', $data['filter_status']);
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

	public function get_checkout_total($data)
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
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('checkout.status', $data['filter_status']);
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
	
	public function delete_checkout($checkout_id)
	{
		$this->db->trans_begin();
		
		$checkout = $this->get_checkout($checkout_id);
		$checkout_products = $this->get_checkout_products($checkout_id);
		
		//restore inventory data
		if($checkout['status'] == 2)
		{
			foreach($checkout_products as $checkout_product) 
			{	
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->set('quantity', 'quantity+'.$checkout_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('id', $checkout_product['inventory_id']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//restore transaction
		$this->load->model('finance/transaction_model');

		$this->transaction_model->delete_transaction_by_type('checkout', $checkout_id);	
		
		//delete checkout
		$this->db->delete('checkout', array('id' => $checkout_id));
		$this->db->delete('checkout_product', array('checkout_id' => $checkout_id));
		$this->db->delete('checkout_fee', array('checkout_id' => $checkout_id));
		$this->db->delete('sale_to_checkout', array('checkout_id' => $checkout_id));
		
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

	public function update_tracking($checkout_id, $tracking) 
	{
		$this->db->trans_begin();
		
		$this->db->where('id', $checkout_id);
		$this->db->update('checkout', array('tracking' => $tracking)); 
		
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
	
	public function update_label($checkout_id, $label) 
	{
		$this->db->trans_begin();
		
		$this->db->where('id', $checkout_id);
		$this->db->update('checkout', array('label' => $label)); 
		
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
