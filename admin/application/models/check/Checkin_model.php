<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin_model extends CI_Model
{		
	public function add_checkin($data)
	{
		$this->lang->load('check/checkin');
		
		$this->db->trans_begin();
		
		//checkin data
		$checkin_data = array(
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
					
		foreach($data['checkin_products'] as $checkin_product)
		{					
			$checkin_products[] = array(
				'checkin_id'	=> $checkin_id,
				'product_id' 	=> $checkin_product['product_id'],
				'batch' 		=> $checkin_product['batch'],
				'carton' 		=> $checkin_product['carton'],
				'quantity' 		=> $checkin_product['quantity'],
				'location_id'   => $checkin_product['location_id']
			);
		}
		
		$this->db->insert_batch('checkin_product', $checkin_products);	
		
		//if completed, change inventory
		if($data['status'] == 2)
		{		
			foreach($data['checkin_products'] as $checkin_product)
			{
				$q = $this->db->get_where('inventory', array('product_id' => $checkin_product['product_id'], 'location_id' => $checkin_product['location_id'], 'batch' => $checkin_product['batch']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->set('quantity', 'quantity+'.$checkin_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
				else
				{
					$inventory_data = array(
						'product_id' 	 => $checkin_product['product_id'],
						'batch' 		 => $checkin_product['batch'],
						'carton' 		 => $checkin_product['carton'],
						'quantity' 		 => $checkin_product['quantity'],
						'location_id' 	 => $checkin_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);	
				}
			}
		}
		
		//transaction
		if(($data['status'] == 2) && isset($data['checkin_fees']))
		{
			$checkin_product = $data['checkin_products'][0];
			
			$this->load->model('catalog/product_model');
			
			$product_info = $this->product_model->get_product($checkin_product['product_id']);
			
			$client_id = $product_info['client_id'];
	
			$amount = 0;
			
			foreach($data['checkin_fees'] as $checkin_fee) 
			{
				$amount += $checkin_fee['amount'];
			}
			
			$this->load->model('finance/transaction_model');
			
			$transaction_data = array(					
				'client_id'		  => $client_id,
				'type'		      => 'checkin',
				'type_id'         => $checkin_id,
				'cost'   		  => 0,
				'markup'   		  => $amount,
				'amount'   		  => $amount,
				'comment'         => sprintf($this->lang->line('text_checkin_transaction_note'), $checkin_id)
			);
			
			$this->transaction_model->add_transaction($transaction_data); 							
		} 
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $checkin_id;
		}
	}

	public function edit_checkin($checkin_id, $data)
	{
		$this->lang->load('check/checkin');
		
		$this->db->trans_begin();
		
		//inventory data
		$checkin = $this->get_checkin($checkin_id);
		
		if(($checkin['status'] == 1) && ($data['status'] == 2))
		{
			foreach($data['checkin_products'] as $checkin_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $checkin_product['product_id'], 'location_id' => $checkin_product['location_id'], 'batch' => $checkin_product['batch']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->set('quantity', 'quantity+'.$checkin_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $checkin_product['product_id'],
						'batch' 		 => $checkin_product['batch'],
						'carton' 		 => $checkin_product['carton'],
						'quantity' 		 => $checkin_product['quantity'],
						'location_id' 	 => $checkin_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		} 
		
		if(($checkin['status'] == 2) && ($data['status'] == 2))
		{
			$checkin_products = $this->get_checkin_products($checkin_id);
		
			foreach($checkin_products as $checkin_product) 
			{	
				$this->db->where('product_id', $checkin_product['product_id']);
				$this->db->where('location_id', $checkin_product['location_id']);
				$this->db->where('batch', $checkin_product['batch']);
				$this->db->set('quantity', 'quantity-'.$checkin_product['quantity'], false);				
				$this->db->update('inventory');
			}
			
			foreach($data['checkin_products'] as $checkin_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $checkin_product['product_id'], 'location_id' => $checkin_product['location_id'], 'batch' => $checkin_product['batch']));
			
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->set('quantity', 'quantity+'.$checkin_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $checkin_product['product_id'],
						'quantity' 		 => $checkin_product['quantity'],
						'batch' 		 => $checkin_product['batch'],
						'carton' 		 => $checkin_product['carton'],
						'location_id' 	 => $checkin_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		}
		
		if(($checkin['status'] == 2) && ($data['status'] == 1))
		{
			$checkin_products = $this->get_checkin_products($checkin_id);
		
			foreach($checkin_products as $checkin_product) 
			{	
				$this->db->where('product_id', $checkin_product['product_id']);
				$this->db->where('location_id', $checkin_product['location_id']);
				$this->db->where('batch', $checkin_product['batch']);
				$this->db->set('quantity', 'quantity-'.$checkin_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $checkin_product['product_id']);
				$this->db->where('location_id', $checkin_product['location_id']);
				$this->db->where('batch', $checkin_product['batch']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//transaction		
		if($data['fee_code'])
		{
			//run checkin fee
			$code = $data['fee_code'];
			
			$this->load->model('fee/'. $code .'_model');

			$amount = $this->{$code . '_model'}->run_checkin($checkin_id);
			
			//modify transition
			$this->load->model('catalog/product_model');
			$this->load->model('finance/transaction_model');

			$checkin_product = $data['checkin_products'][0];
			
			$product_info = $this->product_model->get_product($checkin_product['product_id']);
			
			$client_id = $product_info['client_id'];
			
			if(($checkin['status'] == 1) && ($data['status'] == 2))
			{
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkin',
					'type_id'         => $checkin_id,
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkin_transaction_note'), $checkin_id)
				);
								
				$this->transaction_model->add_transaction($transaction_data); 
			}
			
			if(($checkin['status'] == 2) && ($data['status'] == 2))
			{
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'checkin',
					'type_id'         => $checkin_id,
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_checkin_transaction_note'), $checkin_id)
				);
				
				$this->transaction_model->delete_transaction_by_type('checkin', $checkin_id);				   
								
				$this->transaction_model->add_transaction($transaction_data);
			}
				
			if(($checkin['status'] == 2) && ($data['status'] == 1))
			{
				$this->transaction_model->delete_transaction_by_type('checkin', $checkin_id);				   
			}
		} 
		
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
				'checkin_id'     => $checkin_id,
				'product_id'     => $checkin_product['product_id'],
				'location_id'    => $checkin_product['location_id'],
				'batch' 	     => $checkin_product['batch'],
				'carton' 	     => $checkin_product['carton'],
				'quantity' 	     => $checkin_product['quantity'],
				'quantity_draft' => $checkin_product['quantity_draft']
			);
		}
		
		$this->db->insert_batch('checkin_product', $checkin_products);

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
		
	public function complete_checkin($checkin_id)
	{
		$this->db->trans_begin();
		
		$checkin = $this->get_checkin($checkin_id);
		
		if($checkin['status'] == 1)
		{
			//inventory data
			$checkin_products = $this->get_checkin_products($checkin_id);
			
			foreach($checkin_products as $checkin_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $checkin_product['product_id'], 'location_id' => $checkin_product['location_id'], 'batch' => $checkin_product['batch']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->set('quantity', 'quantity+'.$checkin_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $checkin_product['product_id'],
						'location_id' 	 => $checkin_product['location_id'],
						'batch' 	     => $checkin_product['batch'],
						'carton' 	     => $checkin_product['carton'],
						'quantity' 		 => $checkin_product['quantity'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
			
			//checkin data
			$this->db->where('id', $checkin_id);
			$this->db->update('checkin', array('status'  => 2));
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
	
	public function uncomplete_checkin($checkin_id)
	{
		$this->db->trans_begin();
		
		$checkin = $this->get_checkin($checkin_id);
		
		if($checkin['status'] == 2)
		{
			//inventory data
			$checkin_products = $this->get_checkin_products($checkin_id);
			
			foreach($checkin_products as $checkin_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $checkin_product['product_id'], 'location_id' => $checkin_product['location_id'], 'batch' => $checkin_product['batch']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->set('quantity', 'quantity-'.$checkin_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $checkin_product['product_id']);
					$this->db->where('location_id', $checkin_product['location_id']);
					$this->db->where('batch', $checkin_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
			}
			
			//transaction
			$this->load->model('finance/transaction_model');

			$this->transaction_model->delete_transaction_by_type('checkin', $checkin_id);				   
			
			//checkin data
			$this->db->where('id', $checkin_id);
			$this->db->update('checkin', array('status'  => 1));
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
		$q = $this->db->get_where('checkin', array('id' => $checkin_id));
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkin_by_tracking($tracking) 
	{	
		$q = $this->db->get_where('checkin', array('tracking' => $tracking));
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkin_products($checkin_id) 
	{	
		$this->db->select('product.*, product.id AS product_id, product.name AS product_name, checkin_product.batch, checkin_product.carton, checkin_product.quantity, checkin_product.quantity_draft, checkin_product.location_id, location.name AS location_name', false);
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
		$q = $this->db->get_where('checkin_fee', array('checkin_id' => $checkin_id));
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_checkin($checkin_id)
	{
		$this->db->trans_begin();
		
		//restore inventory
		$checkin = $this->get_checkin($checkin_id);
		
		if($checkin['status'] == 2)
		{
			$checkin_products = $this->get_checkin_products($checkin_id);
			
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
		
		//restore transaction
		$this->load->model('finance/transaction_model');

		$this->transaction_model->delete_transaction_by_type('checkin', $checkin_id);	
		
		//delete checkin
		$this->db->delete('checkin', array('id' => $checkin_id));
		$this->db->delete('checkin_product', array('checkin_id' => $checkin_id));		
		
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
			$this->db->like('id', $data['filter_id'], 'after');			
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
	
	public function search_checkin($key) 
	{
		$this->db->select('*', false);
		$this->db->from('checkin'); 
		$this->db->or_where('id', $key);  
		$this->db->or_like('tracking', $key, 'after');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_checkins($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('checkin');
		
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

	public function get_checkin_total($data)
	{		
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('checkin');
		
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
