<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Refund_model extends CI_Model
{	
	public function add_refund($data)
	{
		$this->db->trans_begin();
		
		$refund_data = array(		
			'sale_id'	    => $data['sale_id'],
			'tracking'	    => $data['tracking'],
			'comment'	    => $data['comment'],
			'date_added'    => date('Y-m-d H:i:s')
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
	
	public function edit_refund($refund_id, $data)
	{
		$this->db->trans_begin();
				
		$refund_data = array(	
			'sale_id'	    => $data['sale_id'],
			'tracking'	    => $data['tracking'],
			'comment'	    => $data['comment'],
			'date_modified' => date('Y-m-d H:i:s')
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
		$q = $this->db->get_where('refund', array('refund_id' => $refund_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_refunds($data = array())
	{
		$this->db->select('*', false);
		$this->db->from('refund');
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->like('sale_id', $data['filter_sale_id'], 'both');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'both');
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('sale.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$sort_data = array(
			'sale_id',
			'tracking',
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
	
	public function get_refund_total($data = array())
	{
		$this->db->select("COUNT(refund_id) AS total", false);
		$this->db->from('refund');
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->like('sale_id', $data['filter_sale_id'], 'both');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('tracking', $data['filter_tracking'], 'both');
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('sale.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function delete_refund($refund_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('refund', array('refund_id' => $refund_id));
		
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
