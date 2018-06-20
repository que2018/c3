<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class User_group_Model extends CI_Model 
{
	public function add_user_group($data)
	{
		$this->db->trans_begin();
		
		$user_group_data = array(	
			'name'	        => $data['name'],
			'description'	=> $data['description'],
			'permission'	=> json_encode($data['permission'])
		);
		
		$this->db->insert('user_group', $user_group_data);
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $user_group_id;
		}
	}
	
	public function edit_user_group($user_group_id, $data)
	{
		$this->db->trans_begin();
		
		$user_group_data = array(		
			'name'	         => $data['name'],
			'description'	 => $data['description'],
			'permission'	 => json_encode($data['permission'])
		);
		
		$this->db->where('user_group_id', $user_group_id);
		
		$this->db->update('user_group', $user_group_data); 
		
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
	
	public function get_user_group($user_group_id)
	{
		$q = $this->db->get_where('user_group', array('user_group_id' => $user_group_id), 1); 
		
		if($q->num_rows() > 0)
		{
			$row = $q->row_array();
			
			$user_group = array(
				'name'         => $row['name'],
				'description'  => $row['description'],
				'permission'   => json_decode($row['permission'], true)
			);
			
			return $user_group;
		} 
		
		return false;
	}
	
	public function delete_user_group($user_group_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('user_group', array('user_group_id' => $user_group_id));
		
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
	
	public function get_user_groups($data = array()) 
	{			
		$this->db->select('user_group.*', false);
		$this->db->from('user_group');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('user_group.name', $data['filter_name'], 'both');
		}
			
		$sort_data = array(
			'user_group.name'
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
	
	public function get_user_group_total($data = array())
	{
		$this->db->select("COUNT(user_group.user_group_id) AS total", false);
		$this->db->from('user_group');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('user_group_group.name', $data['filter_name'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}