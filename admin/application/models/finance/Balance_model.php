<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Balance_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
	
	public function add_balance($data)
	{
		$this->db->trans_begin();
		
		$balance_data = array(		
			'client_id'	 => $data['client_id'],
			'amount'	 => $data['amount']
		);
		
		$this->db->insert('balance', $balance_data);
		
		$balance_id = $this->db->insert_id();
	
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $balance_id;
		}
	}
	
	public function edit_balance($balance_id, $data)
	{
		$this->db->trans_begin();
		
		$balance_data = array(		
			'client_id'	 => $data['client_id'],
			'amount'	 => $data['amount']
		);
		
		$this->db->where('id', $balance_id);
		
		$this->db->update('balance', $balance_data);
	
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
	
	public function get_balance_by_client($client_id) 
	{
		$q = $this->db->get_where('balance', array('client_id' => $client_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_balances($data) 
	{			
		$this->db->select("balance.*, CONCAT(client.firstname, ' ', client.lastname) AS name", false);
		$this->db->from('balance');
		$this->db->join('client', 'client.id = balance.client_id', 'left');
		
		if(!empty($data['filter_client'])) 
		{
			$this->db->like("CONCAT(client.firstname, ' ', client.lastname)", $data['filter_client'], 'both');
		}
		
		if(!empty($data['filter_amount'])) 
		{		
			$this->db->where('balance.amount', $data['filter_amount']);
		}
	
		$sort_data = array(
			'name',
			'balance.amount'
		);
		
		if(isset($data['start']) || isset($data['limit']))
		{
			if ($data['start'] < 0) 
			{
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) 
			{
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
		
		$this->db->group_by('balance.id');
		
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
	
	function get_balance_total($data)
	{
		$this->db->select("COUNT(balance.id) AS total", false);
		$this->db->from('balance');
		$this->db->join('client', 'client.id = balance.client_id', 'left');
		
		if(!empty($data['filter_client'])) 
		{
			$this->db->like("CONCAT(client.firstname, ' ', client.lastname)", $data['filter_client'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function delete_balance($balance_id) 
	{
		if($this->db->delete('balance', array('id' => $balance_id)))
		{
			return true;
		}
		
		return false;
	}	
}
