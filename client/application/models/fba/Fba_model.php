<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_model extends CI_Model
{		
	public function add_fba($data)
	{
		$this->lang->load('fba/fba');
		
		$this->db->trans_begin();
		
		//fba data
		$fba_data = array(
			'client_id'       => $this->auth->get_client_id(),
			'import_method'   => $data['import_method'],
			'tracking' 		  => $data['tracking'],
			'status' 		  => 1,
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
				'fba_warehouse_id'      => $fba_product['fba_warehouse_id'],
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
				
		//fba info
		$fba_data = array(
			'import_method'   => $data['import_method'],
			'tracking' 		  => $data['tracking'],
			'status' 		  => 1,
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
				'fba_warehouse_id'      => $fba_product['fba_warehouse_id'],
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
		$this->db->select('fba_product.*, fba_warehouse.fba_warehouse_id, fba_warehouse.name AS fba_warehouse_name', false);
		$this->db->from('fba_product');
		$this->db->join('fba_warehouse', 'fba_warehouse.fba_warehouse_id = fba_product.fba_warehouse_id', 'left');
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
	
	public function get_fbas($data = array()) 
	{	
		$this->db->select('*', false);
		$this->db->from('fba');
		$this->db->where('client_id', $this->auth->get_client_id());
		
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
		$this->db->where('client_id', $this->auth->get_client_id());
		
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
