<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Label_model extends CI_Model
{	
	public function get_sale_label($sale_label_id) 
	{
		$q = $this->db->get_where('sale', array('id' => $sale_label_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_sale_labels($data = array())
	{
		$this->db->select('*', false);
		$this->db->from('sale_label');
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->like('sale_id', $data['filter_sale_id'], 'both');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'both');
		}
		
		if(!empty($data['filter_status'])) 
		{		
			$this->db->where('status', $data['filter_status']);
		}
			
		$sort_data = array(
			'sale_id',
			'tracking',
			'status'
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
	
	public function get_sale_label_total($data = array())
	{
		$this->db->select("COUNT(id) AS total", false);
		$this->db->from('sale_label');
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->like('sale_id', $data['filter_sale_id'], 'both');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'both');
		}
		
		if(!empty($data['filter_status'])) 
		{		
			$this->db->where('status', $data['filter_status']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function edit_sale_label($sale_label_id, $data)
	{
		$this->db->trans_begin();
				
		$sale_label_data = array(		
			'status_id'	    => $data['status_id']
		);
				
		$this->db->where('id', $sale_label_id);
		$this->db->update('sale_label', $sale_label_data); 
		
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
