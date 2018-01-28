<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Transaction_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function get_transactions($data) 
	{			
		$this->db->select("transaction.*, CONCAT(client.firstname, ' ', client.lastname) AS name", false);
		$this->db->from('transaction');
		$this->db->join('client', 'client.id = transaction.client_id', 'left');
		$this->db->where('client.id', $this->auth->get_client_id());
			
		if(!empty($data['filter_cost'])) 
		{			
			$this->db->where('transaction.cost', $data['filter_cost']);
		}
		
		if(!empty($data['filter_markup'])) 
		{			
			$this->db->where('transaction.markup', $data['filter_markup']);
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('transaction.amount', $data['filter_amount']);
		}
		
		if(!empty($data['filter_comment'])) 
		{			
			$this->db->like('transaction.comment', $data['filter_comment'], 'both');
		}
		
		if(!empty($data['filter_date_from'])) 
		{			
			$this->db->where('transaction.date_added >=', $data['filter_date_from'] . ' 00:00:00');
		}
		
		if(!empty($data['filter_date_to'])) 
		{			
			$this->db->where('transaction.date_added <=', $data['filter_date_to'] . ' 23:59:59');
		}	
	
		$sort_data = array(
			'transaction.id',
			'transaction.cost',
			'transaction.markup',
			'transaction.amount',
			'transaction.comment',
			'transaction.date_added'
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
		$this->db->group_by('transaction.id');
		
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
	
	function get_transaction_total($data)
	{
		$this->db->select("COUNT(transaction.id) AS total", false);
		$this->db->from('transaction');
		$this->db->join('client', 'client.id = transaction.client_id', 'left');
		$this->db->where('client.id', $this->auth->get_client_id());
		
		if(!empty($data['filter_cost'])) 
		{			
			$this->db->where('transaction.cost', $data['filter_cost']);
		}
		
		if(!empty($data['filter_markup'])) 
		{			
			$this->db->where('transaction.markup', $data['filter_markup']);
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('transaction.amount', $data['filter_amount']);
		}
		
		if(!empty($data['filter_comment'])) 
		{			
			$this->db->like('transaction.comment', $data['filter_comment'], 'both');
		}
		
		if(!empty($data['filter_date_from'])) 
		{			
			$this->db->where('transaction.date_added >=', $data['filter_date_from'] . ' 00:00:00');
		}
		
		if(!empty($data['filter_date_to'])) 
		{			
			$this->db->where('transaction.date_added <=', $data['filter_date_to'] . ' 23:59:59');
		}	
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
