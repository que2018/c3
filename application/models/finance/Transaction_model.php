<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Transaction_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	function add_transaction($data)
	{
		$transaction_data = array(					
			'client_id'		  => $data['client_id'],
			'cost'   		  => $data['cost'],
			'markup'   		  => $data['markup'],
		    'amount'   		  => $data['amount'],
		    'comment'         => $data['comment'],
			'date_added'   	  => date('Y-m-d H:i:s'),
			'date_modified'   => date('Y-m-d H:i:s')		
		);
		
		$this->db->trans_begin();
		
		$this->db->insert('transaction', $transaction_data); 
		
		$transaction_id = $this->db->insert_id();
		
		$this->db->where('client_id', $data['client_id']);
		$this->db->set('amount', 'amount-'.$data['amount'], false);
		$this->db->update('balance');	
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();

			return $transaction_id;
		}
	}

	function edit_transaction($id, $data)
	{
		$this->db->trans_begin();
		
		$this->db->select("*", false);
		$this->db->from('transaction');
		$this->db->where('id', $id);

		$q = $this->db->get();
		
		$row = $q->row_array();
		
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount+'.$row['amount'], false);
		$this->db->update('balance');	
		
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount-'.$data['amount'], false);
		$this->db->update('balance');
		
		$transaction_data = array(		
			'cost'            => $data['cost'],
			'markup'          => $data['markup'],		
		    'amount'   		  => $data['amount'],
			'comment'         => $data['comment'],
			'date_modified'   => date('Y-m-d H:i:s')		
		);
		
		$this->db->where('id', $id);
		$this->db->update('transaction', $transaction_data);
		
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
	
	public function get_transaction($id) 
	{	
		$this->db->select("transaction.*", false);
		$this->db->from('transaction');
		$this->db->where('transaction.id', $id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_transactions($data) 
	{			
		$this->db->select("transaction.*, CONCAT(client.firstname, ' ', client.lastname) AS name", false);
		$this->db->from('transaction');
		$this->db->join('client', 'client.id = transaction.client_id', 'left');
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like("CONCAT(client.firstname, ' ', client.lastname)", $data['filter_client'], 'both');
		}
		
		if(!empty($data['filter_client_id'])) 
		{			
			$this->db->where('transaction.client_id', $data['filter_client_id']);
		}
		
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
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('transaction.date_added', $data['filter_date_added']);
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
			'name',
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
	
	public function get_transactions_by_client($client_id) 
	{			
		$q = $this->db->get_where('transaction', array('client_id' => $client_id));
		
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
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like("CONCAT(client.firstname, ' ', client.lastname)", $data['filter_client'], 'both');
		}
		
		if(!empty($data['filter_client_id'])) 
		{			
			$this->db->where('transaction.client_id', $data['filter_client_id']);
		}
		
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
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('transaction.date_added', $data['filter_date_added']);
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
	
	function delete_transaction($transaction_id)
	{
		$this->db->trans_begin();
		
		$this->db->select('*', false);
		$this->db->from('transaction');
		$this->db->where('id', $transaction_id);

		$q = $this->db->get();
		
		$row = $q->row_array();
		
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount+'.$row['amount'], false);
		$this->db->update('balance');
		
		$this->db->delete('transaction', array('id' => $transaction_id));
		
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
	
	function delete_transaction_by_type($type, $type_id)
	{
		$this->db->trans_begin();
		
		$q = $this->db->get_where('transaction', array('type' => $type, 'type_id' => $type_id));		
		
		$row = $q->row_array();
				
		$this->db->where('client_id', $row['client_id']);
		$this->db->set('amount', 'amount+' . $row['amount'], false);
		$this->db->update('balance');
		
		$this->db->delete('transaction', array('type' => $type, 'type_id' => $type_id));
		
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
