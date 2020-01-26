<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_model extends CI_Model
{		
	public function add_fba($data)
	{
		$this->lang->load('fba/fba');
		
		$this->db->trans_begin();
		
		//fba data
		$fba_data = array(
			'client_id'       => $data['client_id'],
			'import_method'   => $data['import_method'],
			'tracking' 		  => $data['tracking'],
			'status' 		  => $data['status'],
			'fee_code' 		  => $data['fee_code'],
			'type'    	   	  => $data['type'],
			'street'       	  => $data['street'],
			'city'    	   	  => $data['city'],
			'state'    	   	  => $data['state'],
			'postcode'    	  => $data['postcode'],
			'note' 		      => $data['note'],
			'date_added'      => date('Y-m-d H:i:s'),
			'date_modified'   => date('Y-m-d H:i:s')			
		);

		$this->db->insert('fba', $fba_data);
						
		$fba_id = $this->db->insert_id();
		
		//fba products
		$fba_products = array();
					
		foreach($data['fba_products'] as $fba_product)
		{					
			$fba_products[] = array(
				'fba_id'		  		=> $fba_id,
				'fba_reference_number'  => $fba_product['fba_reference_number'],
				'reference_number' 	    => $fba_product['reference_number'],
				'cbm'                   => $fba_product['cbm'],
				'quantity' 		        => $fba_product['quantity'],
				'location_id'           => $fba_product['location_id'],
				'note'                  => $fba_product['note']
			);
		}
		
		$this->db->insert_batch('fba_product', $fba_products);

		//fba file	
		if(isset($data['fba_files']) && $data['fba_files'])
		{	
			$fba_files = array();
	
			foreach($data['fba_files'] as $fba_file)
			{			
				if(is_file(FILEPATH . $fba_file['path'])) 		
				{
					$fba_files[] = array(
						'fba_id'   => $fba_id,
						'path'     => $fba_file['path']
					);
				}
			}
	
			$this->db->insert_batch('fba_file', $fba_files);
		}		
		
		//transaction
		if($data['fee_code'] && ($data['status'] == 2))
		{
			$code = $data['fee_code'];
			
			$this->load->model('fee/'. $code .'_model');

			$amount = $this->{$code . '_model'}->run();
			
			$this->load->model('catalog/product_model');
			$this->load->model('finance/transaction_model');

			$fba_product = $data['fba_products'][0];
			
			$product_info = $this->product_model->get_product($fba_product['product_id']);
			
			$client_id = $product_info['client_id'];
			
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
		$this->lang->load('fba/fba');
		
		$this->db->trans_begin();
		
		//transaction
		$fba = $this->get_fba($fba_id);

		if($data['fee_code'])
		{
			$code = $data['fee_code'];
			
			$this->load->model('fee/'. $code .'_model');

			$amount = $this->{$code . '_model'}->run();
			
			$this->load->model('finance/transaction_model');

			if(($fba['status'] == 1) && ($data['status'] == 2))
			{
				$transaction_data = array(					
					'client_id'		  => $data['client_id'],
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
				$this->transaction_model->delete_transaction_by_type('fba', $fba_id);				   
				
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
				
			if(($fba['status'] == 2) && ($data['status'] == 1))
			{
				$this->transaction_model->delete_transaction_by_type('fba', $fba_id);				   
			}
		} 
		
		//fba info
		$fba_data = array(
			'client_id'       => $data['client_id'],
			'import_method'   => $data['import_method'],
			'tracking' 		  => $data['tracking'],
			'status' 		  => $data['status'],
			'fee_code' 		  => $data['fee_code'],
			'type'    	   	  => $data['type'],
			'street'       	  => $data['street'],
			'city'    	   	  => $data['city'],
			'state'    	   	  => $data['state'],
			'postcode'    	  => $data['postcode'],
			'note' 		      => $data['note'],
			'date_modified'   => date('Y-m-d H:i:s')	
		);
		
		$this->db->where('fba_id', $fba_id);
		$this->db->update('fba', $fba_data);
		
		//fba product
		$this->db->delete('fba_product', array('fba_id' => $fba_id));
	
		$fba_products = array();
		
		foreach($data['fba_products'] as $fba_product)
		{
			$fba_products[] = array(
				'fba_id'		  		=> $fba_id,
				'fba_reference_number'  => $fba_product['fba_reference_number'],
				'reference_number' 	    => $fba_product['reference_number'],
				'cbm'                   => $fba_product['cbm'],
				'quantity' 		        => $fba_product['quantity'],
				'location_id'           => $fba_product['location_id'],
				'note'                  => $fba_product['note']
			);
		}
		
		$this->db->insert_batch('fba_product', $fba_products);
		
		//fba file	
		$this->db->delete('fba_file', array('fba_id' => $fba_id));
		
		if(isset($data['fba_files']) && $data['fba_files'])
		{	
			$fba_files = array();
	
			foreach($data['fba_files'] as $fba_file)
			{			
				if(is_file(FILEPATH . $fba_file['path'])) 		
				{
					$fba_files[] = array(
						'fba_id'  => $fba_id,
						'path'    => $fba_file['path']
					);
				}
			}
			
			$this->db->insert_batch('fba_file', $fba_files);
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
		
	public function complete_fba($fba_id)
	{
		$this->db->trans_begin();
		
		$fba = $this->get_fba($fba_id);
		
		if($fba['status'] == 1)
		{
			$this->db->where('fba_id', $fba_id);
			$this->db->update('fba', array('status'  => 2));
			
			if($fba['fee_code'])
			{
				$code = $fba['fee_code'];
				
				$this->load->model('fee/'. $code .'_model');

				$amount = $this->{$code . '_model'}->run();
				
				$this->load->model('finance/transaction_model');
				
				$transaction_data = array(					
					'client_id'		  => $fba['client_id'],
					'type'		      => 'fba',
					'type_id'         => $fba_id,
					'cost'   		  => 0,
					'markup'   		  => $amount,
					'amount'   		  => $amount,
					'comment'         => sprintf($this->lang->line('text_fba_transaction_note'), $fba_id)
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

			return true;
		}	
	}
	
	public function uncomplete_fba($fba_id)
	{
		$this->db->trans_begin();
		
		$fba = $this->get_fba($fba_id);
		
		if($fba['status'] == 2)
		{
			$this->db->where('fba_id', $fba_id);
			$this->db->update('fba', array('status'  => 1));
			
			if($fba['fee_code'])
			{
				$this->load->model('finance/transaction_model');

				$this->transaction_model->delete_transaction_by_type('fba', $fba_id);
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
	
	public function get_fba($fba_id) 
	{	
		$q = $this->db->get_where('fba', array('fba_id' => $fba_id));
		
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
		$this->db->select('fba_product.*, location.name AS location_name', false);
		$this->db->from('fba_product');
		$this->db->join('location', 'location.id = fba_product.location_id', 'left');
		$this->db->where('fba_product.fba_id', $fba_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_fba_files($fba_id) 
	{	
		$q = $this->db->get_where('fba_file', array('fba_id' => $fba_id));

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
		
		//restore transaction
		$this->load->model('finance/transaction_model');

		$this->transaction_model->delete_transaction_by_type('fba', $fba_id);	
		
		//delete fba
		$this->db->delete('fba', array('fba_id' => $fba_id));
		$this->db->delete('fba_product', array('fba_id' => $fba_id));		
		$this->db->delete('fba_file', array('fba_id' => $fba_id));		

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
		
		if(!empty($data['filter_fba_id'])) 
		{						
			$this->db->like('id', $data['filter_fba_id'], 'after');			
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
		
		if(!empty($data['filter_fba_id'])) 
		{			
			$this->db->where('fba_id', $data['filter_fba_id']);
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
			'fba_id',
			'tracking',
			'status',
			'date_added'
		);
		
		if(isset($data['start']) || isset($data['limit'])) 
		{
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
		$this->db->select('COUNT(fba_id) AS total', false);
		$this->db->from('fba');
		
		if(!empty($data['filter_fba_id'])) 
		{			
			$this->db->where('fba_id', $data['filter_fba_id']);
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
