<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Activity_log_model extends CI_Model
{		
	public function add_activity_log($data)
	{	
		$this->db->trans_begin();
	
		$activity_log_data = array(
			'user_id'	   => $data['user_id'],
			'ip_address'   => $data['ip_address'],
			'uri' 		   => $data['uri'],
			'description'  => $data['description'],
			'method'       => $data['method'],
			'date_added'   => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('activity_log', $activity_log_data);	
		
		$activity_log_id = $this->db->insert_id();
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $activity_log_id;
		}
	}
	
	public function get_activity_logs($data) 
	{		
		$this->db->select('activity_log.*, CONCAT(user.firstname, " ", user.lastname) AS user', false);
		$this->db->from('activity_log');
		$this->db->join('user', 'user.id = activity_log.user_id', 'left');

		if(!empty($data['filter_user'])) 
		{			
			$this->db->like('user', $filter_user, 'both');
		}
		
		if(!empty($data['filter_ip_address'])) 
		{			
			$this->db->where('activity_log.ip_address', $data['filter_ip_address']);
		}
		
		if(!empty($data['filter_description'])) 
		{			
			$this->db->like('activity_log.description', $data['filter_description'],  'both');
		}
		
		if(!empty($data['filter_method'])) 
		{			
			$this->db->where('activity_log.method', $data['filter_method']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('activity_log.date_added >=', $data['filter_date_added'] . " 00:00:00");
		} 
		
		$sort_data = array(
			'user',
			'activity_log.ip_address',
			'activity_log.description',
			'activity_log.method',
			'activity_log.date_added'
		);
		
		if(isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 8;
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
	
	public function get_total_activity($data) 
	{		
		$this->db->select('COUNT(activity_log.id) AS total', false);
		$this->db->from('activity_log');
		$this->db->join('user', 'user.id = activity_log.user_id', 'left');

		if(!empty($data['filter_user'])) 
		{			
			$this->db->like('user', $filter_user, 'both');
		}
		
		if(!empty($data['filter_ip_address'])) 
		{			
			$this->db->where('activity_log.ip_address', $data['filter_ip_address']);
		}
		
		if(!empty($data['filter_description'])) 
		{			
			$this->db->like('activity_log.description', $data['filter_description'],  'both');
		}
		
		if(!empty($data['filter_method'])) 
		{			
			$this->db->where('activity_log.method', $data['filter_method']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('activity_log.date_added >=', $data['filter_date_added'] . " 00:00:00");
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
		
	public function clear_log_activity() 
	{
		$this->db->trans_begin();
		
		$this->db->empty_table('activity_log');
		
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
