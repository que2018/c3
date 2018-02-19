<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth
{
	private $user_id;
	
	private $username;
	
	private $firstname;
	
	private $lastname;
	
	private $permission = array();

	public function __construct()
	{
		$this->load->library('session');
		
		$this->load->model('user/user_model');
		$this->load->model('user/user_group_model');
		
		if($this->session->userdata('user_id')) 
		{
			$session_user_id = $this->session->userdata('user_id');
			
			$user = $this->user_model->get_user($session_user_id);
			
			if($user)
			{
				$this->user_id = $user['id'];
				$this->username = $user['username'];
				$this->firstname = $user['firstname'];
				$this->lastname = $user['lastname'];
				$this->user_group_id = $user['user_group_id'];
				
				//$data = array();
				//$this->user_model->update_user($user_id, $data);
				
				$user_group = $this->user_group_model->get_user_group($user['user_group_id']);
				
				$this->permission = $user_group['permission'];
			}
			else
			{
				$this->logout();
			}
		}
	}
	
	public function login($username, $password) 
	{
		$user = $this->user_model->get_user_by_name_password($username, $password);
		
		if($user)
		{
			$this->session->set_userdata('user_id', $user['id']);
			
			$this->user_id = $user['id'];
			$this->username = $user['username'];
			$this->firstname = $user['firstname'];
			$this->lastname = $user['lastname'];
			$this->user_group_id = $user['user_group_id'];
			
			$user_group = $this->user_group_model->get_user_group($user['user_group_id']);
				
			$this->permission = $user_group['permission'];
				
			return true;
		}
		else
		{
			return false;
		}
	}

	public function logout() 
	{
		$this->session->unset_userdata('user_id');
		
		$this->user_id = '';
		$this->username = '';
		$this->permission = '';
	}

	public function has_permission($key, $value) 
	{
		if(isset($this->permission[$key])) 
		{
			return in_array($value, $this->permission[$key]);
		} 
		else 
		{
			return false;
		}
	}
	
	public function is_logged() 
	{
		return $this->user_id;
	}

	public function get_user_id() 
	{
		return $this->user_id;
	}

	public function get_username() 
	{
		return $this->username;
	}

	public function get_group_Id() 
	{
		return $this->user_group_id;
	}
	
	//Enables the use of CI super-global without having to define an extra variable.
	public function __get($var)
	{
		return get_instance()->$var;
	}
}
