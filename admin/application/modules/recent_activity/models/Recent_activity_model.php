<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Recent_activity_model extends CI_Model
{		
	public function get_activity_logs($data = array()) 
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
}
