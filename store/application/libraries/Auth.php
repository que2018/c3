<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth
{
	private $employee_id;
	
	private $firstname;
	
	private $lastname;
	
	private $store_id;
	
	private $warehouse_id;
	
	public function __construct()
	{
		$this->load->library('session');
		
		$this->load->model('store/employee_model');
		
		if($this->session->userdata('employee_id')) 
		{
			$session_employee_id = $this->session->userdata('employee_id');
			
			$employee = $this->employee_model->get_employee($session_employee_id);
			
			if($employee)
			{
				$this->employee_id   = $employee['employee_id'];
				$this->firstname     = $employee['firstname'];
				$this->lastname      = $employee['lastname'];
				$this->store_id      = $employee['store_id'];
				$this->warehouse_id  = $employee['warehouse_id'];
			}
			else
			{
				$this->logout();
			}
		}
	}
	
	public function login($email, $password) 
	{
		$employee = $this->employee_model->get_employee_by_email_password($email, $password);
		
		if($employee)
		{
			$this->session->set_userdata('employee_id', $employee['employee_id']);
			
			$this->employee_id   = $employee['employee_id'];
			$this->firstname     = $employee['firstname'];
			$this->lastname      = $employee['lastname'];
			$this->store_id      = $employee['store_id'];
			$this->warehouse_id  = $employee['warehouse_id'];
				
			return true;
		}
		else
		{
			return false;
		}
	}

	public function logout() 
	{
		$this->session->unset_userdata('employee_id');
		
		$this->employee_id = '';
		$this->employeename = '';
		$this->permission = '';
		$this->store_id = '';
		$this->warehouse_id = '';
	}

	public function is_logged() 
	{
		return $this->employee_id;
	}

	public function get_employee_id() 
	{
		return $this->employee_id;
	}
	
	public function get_firstname() 
	{
		return $this->firstname;
	}
	
	public function get_store_id() 
	{
		return $this->store_id;
	}
	
	public function get_warehouse_id() 
	{
		return $this->warehouse_id;
	}
	
	//Enables the use of CI super-global without having to define an extra variable.
	public function __get($var)
	{
		return get_instance()->$var;
	}
}
