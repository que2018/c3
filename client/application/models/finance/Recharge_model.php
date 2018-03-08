<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Recharge_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
			
	public function get_recharges($data) 
	{			
		$this->db->select('*', false);
		$this->db->from('recharge');
		$this->db->where('client_id', $this->auth->get_client_id());
		
		if(!empty($data['filter_payment_method'])) 
		{			
			$this->db->where('payment_method', $data['filter_payment_method']);
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('amount', $data['filter_amount']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('date_added', $data['filter_date_added']);
		}
	
		$sort_data = array(
			'amount',
			'payment_method',
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
		
		$this->db->group_by('id');
		
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
	
	function get_recharge_total($data)
	{
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('recharge');
		$this->db->where('client_id', $this->auth->get_client_id());
		
		if(!empty($data['filter_payment_method'])) 
		{			
			$this->db->where('payment_method', $data['filter_payment_method']);
		}
		
		if(!empty($data['filter_amount'])) 
		{			
			$this->db->where('amount', $data['filter_amount']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('date_added', $data['filter_date_added']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
