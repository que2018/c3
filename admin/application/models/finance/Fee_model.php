<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Fee_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	function add_fee($data)
	{
		$fee_data = array(					
			'name'		  => $data['name'],
		    'amount'      => $data['amount']
		);

		$this->db->trans_begin();
		
		$this->db->insert('fee', $fee_data); 
		
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
	
	function edit_fee($id, $data)
	{
		$this->db->trans_begin();
				
		$fee_data = array(					
			'name'		  => $data['name'],
		    'amount'      => $data['amount']
		);
		
		$this->db->where('id', $id);
		$this->db->update('fee', $fee_data);
		
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
		
	public function get_fee($id) 
	{	
		$q = $this->db->get_where('fee', array('id' => $id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
		
	function delete_fee($id)
	{
		$this->db->trans_begin();
		
		$this->db->delete('fee', array('id' => $id));
		
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
		
	public function get_fees($data) 
	{			
		$this->db->select("*", false);
		$this->db->from('fee');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like("name", $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('amount', $data['filter_amount']);
		}
		
		$sort_data = array(
			'name',
			'amount'
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
		
		$this->db->group_by('fee.id');
		
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
	
	function get_fee_total($data)
	{
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('fee');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like("name", $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('amount', $data['filter_amount']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
