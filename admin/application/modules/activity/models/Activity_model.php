<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Activity_model extends CI_Model
{		
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
}
