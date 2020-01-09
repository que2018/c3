<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_model extends CI_Model
{		
	public function add_fba($data)
	{
		$this->lang->load('check/fba');
		
		$this->db->trans_begin();
		
		//fba data
		$fba_data = array(
			'tracking' 		    => $data['tracking'],
			'note' 		        => $data['note'],
			'status' 		    => $data['status'],
			'date_added'   		=> date('Y-m-d H:i:s'),
			'date_modified'   	=> date('Y-m-d H:i:s')			
		);

		$this->db->insert('fba', $fba_data);
						
		$fba_id = $this->db->insert_id();
		
		//fba products
		$fba_products = array();
					
		foreach($data['fba_products'] as $fba_product)
		{					
			$fba_products[] = array(
				'fba_id'	=> $fba_id,
				'product_id' 	=> $fba_product['product_id'],
				'batch' 		=> $fba_product['batch'],
				'quantity' 		=> $fba_product['quantity'],
				'location_id'   => $fba_product['location_id']
			);
		}
		
		$this->db->insert_batch('fba_product', $fba_products);	
		
		//if completed, change inventory
		if($data['status'] == 2)
		{		
			foreach($data['fba_products'] as $fba_product)
			{
				$q = $this->db->get_where('inventory', array('product_id' => $fba_product['product_id'], 'location_id' => $fba_product['location_id'], 'batch' => $fba_product['batch']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->set('quantity', 'quantity+'.$fba_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
				else
				{
					$inventory_data = array(
						'product_id' 	 => $fba_product['product_id'],
						'batch' 		 => $fba_product['batch'],
						'quantity' 		 => $fba_product['quantity'],
						'location_id' 	 => $fba_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);	
				}
			}
		}
		
		//transaction
		if(($data['status'] == 2) && isset($data['fba_fees']))
		{
			$fba_product = $data['fba_products'][0];
			
			$this->load->model('catalog/product_model');
			
			$product_info = $this->product_model->get_product($fba_product['product_id']);
			
			$client_id = $product_info['client_id'];
	
			$amount = 0;
			
			foreach($data['fba_fees'] as $fba_fee) 
			{
				$amount += $fba_fee['amount'];
			}
			
			$this->load->model('finance/transaction_model');
			
			$transaction_data = array(					
				'client_id'		  => $client_id,
				'type'		      => 'fba',
				'type_id'         => $fba_id,
				'cost'   		  => 0,
				'markup'   		  => $amount,
				'amount'   		  => $amount,
				'comment'         => sprintf($this->lang->line('text_fba_transaction_note'), $fba_id)
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
			
			return $fba_id;
		}
	}

	public function edit_fba($fba_id, $data)
	{
		$this->lang->load('check/fba');
		
		$this->db->trans_begin();
		
		//inventory data
		$fba = $this->get_fba($fba_id);
		
		if(($fba['status'] == 1) && ($data['status'] == 2))
		{
			foreach($data['fba_products'] as $fba_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $fba_product['product_id'], 'location_id' => $fba_product['location_id'], 'batch' => $fba_product['batch']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->set('quantity', 'quantity+'.$fba_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $fba_product['product_id'],
						'batch' 		 => $fba_product['batch'],
						'quantity' 		 => $fba_product['quantity'],
						'location_id' 	 => $fba_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		} 
		
		if(($fba['status'] == 2) && ($data['status'] == 2))
		{
			$fba_products = $this->get_fba_products($fba_id);
		
			foreach($fba_products as $fba_product) 
			{	
				$this->db->where('product_id', $fba_product['product_id']);
				$this->db->where('location_id', $fba_product['location_id']);
				$this->db->where('batch', $fba_product['batch']);
				$this->db->set('quantity', 'quantity-'.$fba_product['quantity'], false);				
				$this->db->update('inventory');
			}
			
			foreach($data['fba_products'] as $fba_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $fba_product['product_id'], 'location_id' => $fba_product['location_id'], 'batch' => $fba_product['batch']));
			
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->set('quantity', 'quantity+'.$fba_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $fba_product['product_id'],
						'quantity' 		 => $fba_product['quantity'],
						'batch' 		 => $fba_product['batch'],
						'location_id' 	 => $fba_product['location_id'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
		}
		
		if(($fba['status'] == 2) && ($data['status'] == 1))
		{
			$fba_products = $this->get_fba_products($fba_id);
		
			foreach($fba_products as $fba_product) 
			{	
				$this->db->where('product_id', $fba_product['product_id']);
				$this->db->where('location_id', $fba_product['location_id']);
				$this->db->where('batch', $fba_product['batch']);
				$this->db->set('quantity', 'quantity-'.$fba_product['quantity'], false);
				$this->db->update('inventory');
				
				$this->db->where('product_id', $fba_product['product_id']);
				$this->db->where('location_id', $fba_product['location_id']);
				$this->db->where('batch', $fba_product['batch']);
				$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
			}
		}
		
		//transaction		
		if($data['fee_code'])
		{
			//run fba fee
			$code = $data['fee_code'];
			
			$this->load->model('fee/'. $code .'_model');

			$amount = $this->{$code . '_model'}->run_fba($fba_id);
			
			//modify transition
			$this->load->model('catalog/product_model');
			$this->load->model('finance/transaction_model');

			$fba_product = $data['fba_products'][0];
			
			$product_info = $this->product_model->get_product($fba_product['product_id']);
			
			$client_id = $product_info['client_id'];
			
			if(($fba['status'] == 1) && ($data['status'] == 2))
			{
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'fba',
					'type_id'         => $fba_id,
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_fba_transaction_note'), $fba_id)
				);
								
				$this->transaction_model->add_transaction($transaction_data); 
			}
			
			if(($fba['status'] == 2) && ($data['status'] == 2))
			{
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'fba',
					'type_id'         => $fba_id,
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_fba_transaction_note'), $fba_id)
				);
				
				$this->transaction_model->delete_transaction_by_type('fba', $fba_id);				   
								
				$this->transaction_model->add_transaction($transaction_data);
			}
				
			if(($fba['status'] == 2) && ($data['status'] == 1))
			{
				$this->transaction_model->delete_transaction_by_type('fba', $fba_id);				   
			}
		} 
		
		//fba data
		$fba_data = array(
			'tracking'     => $data['tracking'],
			'status'       => $data['status'],
			'note' 		   => $data['note']
		);
		
		$this->db->where('id', $fba_id);
		$this->db->update('fba', $fba_data);
		
		//fba product
		$this->db->delete('fba_product', array('fba_id' => $fba_id));
	
		$fba_products = array();
		
		foreach($data['fba_products'] as $fba_product){
			$fba_products[] = array(
				'fba_id'     => $fba_id,
				'product_id'     => $fba_product['product_id'],
				'location_id'    => $fba_product['location_id'],
				'batch' 	     => $fba_product['batch'],
				'quantity' 	     => $fba_product['quantity'],
				'quantity_draft' => $fba_product['quantity_draft']
			);
		}
		
		$this->db->insert_batch('fba_product', $fba_products);

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
		
	public function complete_fba($fba_id)
	{
		$this->db->trans_begin();
		
		$fba = $this->get_fba($fba_id);
		
		if($fba['status'] == 1)
		{
			//inventory data
			$fba_products = $this->get_fba_products($fba_id);
			
			foreach($fba_products as $fba_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $fba_product['product_id'], 'location_id' => $fba_product['location_id'], 'batch' => $fba_product['batch']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->set('quantity', 'quantity+'.$fba_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
				else
				{
					$inventory_data = array(
						'product_id' 	 => $fba_product['product_id'],
						'location_id' 	 => $fba_product['location_id'],
						'batch' 	     => $fba_product['batch'],
						'quantity' 		 => $fba_product['quantity'],
						'date_added'     => date('Y-m-d H:i:s'),
						'date_modified'  => date('Y-m-d H:i:s')			
					);
					
					$this->db->insert('inventory', $inventory_data);
				}
			}
			
			//fba data
			$this->db->where('id', $fba_id);
			$this->db->update('fba', array('status'  => 2));
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
	
	public function uncomplete_fba($fba_id)
	{
		$this->db->trans_begin();
		
		$fba = $this->get_fba($fba_id);
		
		if($fba['status'] == 2)
		{
			//inventory data
			$fba_products = $this->get_fba_products($fba_id);
			
			foreach($fba_products as $fba_product)
			{	
				$q = $this->db->get_where('inventory', array('product_id' => $fba_product['product_id'], 'location_id' => $fba_product['location_id'], 'batch' => $fba_product['batch']));

				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->set('quantity', 'quantity-'.$fba_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->where('batch', $fba_product['batch']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				}
			}
			
			//transaction
			$this->load->model('finance/transaction_model');

			$this->transaction_model->delete_transaction_by_type('fba', $fba_id);				   
			
			//fba data
			$this->db->where('id', $fba_id);
			$this->db->update('fba', array('status'  => 1));
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
	
	public function get_fba($fba_id) 
	{	
		$q = $this->db->get_where('fba', array('id' => $fba_id));
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_fba_by_tracking($tracking) 
	{	
		$q = $this->db->get_where('fba', array('tracking' => $tracking));
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_fba_products($fba_id) 
	{	
		$this->db->select('product.*, product.id AS product_id, product.name AS product_name, fba_product.batch, fba_product.quantity, fba_product.quantity_draft, fba_product.location_id, location.name AS location_name', false);
		$this->db->from('fba_product');
		$this->db->join('product', 'product.id = fba_product.product_id', 'left');
		$this->db->join('location', 'location.id = fba_product.location_id', 'left');
		$this->db->where('fba_product.fba_id', $fba_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_fba_fees($fba_id) 
	{	
		$q = $this->db->get_where('fba_fee', array('fba_id' => $fba_id));
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_fba($fba_id)
	{
		$this->db->trans_begin();
		
		//restore inventory
		$fba = $this->get_fba($fba_id);
		
		if($fba['status'] == 2)
		{
			$fba_products = $this->get_fba_products($fba_id);
			
			foreach($fba_products as $fba_product)
			{
				$q = $this->db->get_where('inventory', array('product_id' => $fba_product['product_id'], 'location_id' => $fba_product['location_id']));
		
				if($q->num_rows() > 0)
				{
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->set('quantity', 'quantity-'.$fba_product['quantity'], false);
					$this->db->update('inventory');
					
					$this->db->where('product_id', $fba_product['product_id']);
					$this->db->where('location_id', $fba_product['location_id']);
					$this->db->update('inventory', array('date_modified' => date('Y-m-d H:i:s'))); 
				} 
			}
		}
		
		//restore transaction
		$this->load->model('finance/transaction_model');

		$this->transaction_model->delete_transaction_by_type('fba', $fba_id);	
		
		//delete fba
		$this->db->delete('fba', array('id' => $fba_id));
		$this->db->delete('fba_product', array('fba_id' => $fba_id));		
		
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
	
	public function find_fbas($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('fba');
		
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
	
	public function search_fba($key) 
	{
		$this->db->select('*', false);
		$this->db->from('fba'); 
		$this->db->or_where('id', $key);  
		$this->db->or_like('tracking', $key, 'after');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_fbas($data) 
	{	
		$this->db->select('*', false);
		$this->db->from('fba');
		
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

	public function get_fba_total($data)
	{		
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('fba');
		
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
