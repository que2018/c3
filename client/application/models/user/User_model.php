<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
	}
	
	public function add_user($data)
	{
		$salt = rand(0,1000);
		
		$user_data = array(	
			'username'	      => $data['username'],
			'user_group_id'	  => $data['user_group_id'],
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'email'	          => $data['email'],
			'salt'	          => $salt,
			'password'        => sha1($salt . sha1($salt . sha1($data['password']))),
			'status'	      => $data['status']
		);
		
		$this->db->insert('user', $user_data);
	}
	
	public function edit_user($id, $data)
	{
		$salt = rand(0,1000);
		
		$user_data = array(	
			'username'	      => $data['username'],
			'user_group_id'	  => $data['user_group_id'],
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'email'	          => $data['email'],
			'salt'	          => $salt,
			'password'        => sha1($salt . sha1($salt . sha1($data['password']))),
			'status'	      => $data['status']
		);
		
		$this->db->where('id', $id);
		
		if($this->db->update('user', $user_data)) 
		{
			return true;
		} 
		
		return false;
	}
	
	public function get_user($id)
	{
		$q = $this->db->get_where('user', array('id' => $id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_user_by_name_password($username, $password)
	{		
		$q = $this->db->query("SELECT * FROM user WHERE username = '" . $username . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . htmlspecialchars($password, ENT_QUOTES) . "'))))) OR password = '" . md5($password) . "') AND status = '1'");
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_users_by_user_group($user_group_id) 
	{
		$q = $this->db->get_where('user', array('user_group_id' => $user_group_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_users($data) 
	{			
		$this->db->select('user.*, user_group.name AS group_name', false);
		$this->db->from('user');
		$this->db->join('user_group', 'user_group.id = user.user_group_id', 'left');
		$this->db->group_by('user.id');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('user.username', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_group_name'])) 
		{			
			$this->db->like('user_group.name', $data['filter_group_name'], 'both');
		}
			
		$sort_data = array(
			'user.name',
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
	
	function get_user_total($data)
	{
		$this->db->select("COUNT(user.id) AS total", false);
		$this->db->from('user');
		$this->db->join('user_group', 'user_group.id = user.user_group_id', 'left');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('user.username', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_group_name'])) 
		{			
			$this->db->like('user_group.name', $data['filter_group_name'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function delete_user($id) 
	{
		if($this->db->delete('user', array('id' => $id))) 
		{
			return true;
		}
		
		return false;
	}
}