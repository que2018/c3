<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Recharge_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	function add_recharge($data)
	{
		$recharge_data = array(					
			'client_id'		  => $data['client_id'],
		    'payment_method'  => $data['payment_method'],
		    'amount'   		  => $data['amount'],
			'status'   		  => $data['status'],
			'date_added'   	  => date('Y-m-d H:i:s'),
			'date_modified'   => date('Y-m-d H:i:s')		
		);

		$this->db->trans_begin();
		
		$this->db->insert('recharge', $recharge_data); 
		
		$this->db->where('client_id', $data['client_id']);
		$this->db->set('amount', 'amount+'.$data['amount'], false);
		$this->db->update('balance');	
		
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
	
	function edit_recharge($id, $data)
	{
		$this->db->trans_begin();
		
		$this->db->select("*", false);
		$this->db->from('recharge');
		$this->db->where('id', $id);

		$q = $this->db->get();
		
		$row = $q->row_array();
		
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount-'.$row['amount'], false);
		$this->db->update('balance');	
		
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount+'.$data['amount'], false);
		$this->db->update('balance');
		
		$recharge_data = array(					
		    'payment_method'  => $data['payment_method'],
		    'amount'   		  => $data['amount'],
			'status'   		  => $data['status'],
			'date_modified'   => date('Y-m-d H:i:s')	
		);
		
		$this->db->where('id', $id);
		$this->db->update('recharge', $recharge_data);
		
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
		
	public function get_recharge($id) 
	{	
		$this->db->select("recharge.*, CONCAT(client.firstname, ' ', client.lastname) AS client_name", false);
		$this->db->from('recharge');
		$this->db->join('client', 'client.id = recharge.client_id', 'left');
		$this->db->where('recharge.id', $id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
		
	function delete_recharge($id)
	{
		$this->db->trans_begin();
		
		$this->db->select("*", false);
		$this->db->from('recharge');
		$this->db->where('id', $id);

		$q = $this->db->get();
		
		$row = $q->row_array();
		
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount-'.$row['amount'], false);
		$this->db->update('balance');
		
		$this->db->delete('recharge', array('id' => $id));
		
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
		
	public function get_recharges($data) 
	{			
		$this->db->select("recharge.*, CONCAT(client.firstname, ' ', client.lastname) AS name", false);
		$this->db->from('recharge');
		$this->db->join('client', 'client.id = recharge.client_id', 'left');
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like("CONCAT(client.firstname, ' ', client.lastname)", $data['filter_client'], 'both');
		}
		
		if(!empty($data['filter_payment_method'])) 
		{			
			$this->db->where('recharge.payment_method', $data['filter_payment_method']);
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('recharge.amount', $data['filter_amount']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('recharge.status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('recharge.date_added', $data['filter_date_added']);
		}
	
		$sort_data = array(
			'recharge.amount',
			'recharge.payment_method',
			'recharge.status',
			'recharge.date_added',
			'name'
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
		
		$this->db->group_by('recharge.id');
		
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
	
	public function get_recharges_by_client($client_id) 
	{			
		$q = $this->db->get_where('recharge', array('client_id' => $client_id));
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		else 
		{
			return false;
		}
	}
	
	function get_recharge_total($data)
	{
		$this->db->select("COUNT(recharge.id) AS total", false);
		$this->db->from('recharge');
		$this->db->join('client', 'client.id = recharge.client_id', 'left');
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like('client.id', $data['filter_client'], 'both');
		}
		
		if(!empty($data['filter_payment_method'])) 
		{			
			$this->db->where('recharge.payment_method', $data['filter_payment_method']);
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('recharge.amount', $data['filter_amount']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('recharge.status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('recharge.date_added', $data['filter_date_added']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
