<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Employee_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
	
	public function add_employee($data)
	{
		$this->db->trans_begin();
		
		//employee data
		$salt = rand(0,1000);
		
		$employee_data = array(	
			'email'	     	  => $data['email'],
			'salt'	          => $salt,
			'password'        => sha1($salt . sha1($salt . sha1($data['password']))),
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'phone'   		  => $data['phone'],
			'store_id'   	  => $data['store_id'],
			'warehouse_id'    => $data['warehouse_id'],
			'status'          => 1
		);
		
		$this->db->insert('employee', $employee_data);
		
		$employee_id = $this->db->insert_id();
				
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $employee_id;
		}
	}
	
	public function edit_employee($employee_id, $data)
	{		
		$this->db->trans_begin();
			
		//employee data
		$employee_data = array(
			'email'	     	  => $data['email'],
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'phone'   		  => $data['phone'],
			'store_id'   	  => $data['store_id'],
			'warehouse_id'    => $data['warehouse_id'],
		);
		
		$this->db->where('employee_id', $employee_id);
		
		$this->db->update('employee', $employee_data); 
		
		if($data['password'])
		{
			$salt = rand(0,1000);
	
			$employee_data = array(
				'salt'	    => $salt,
				'password'  => sha1($salt . sha1($salt . sha1($data['password'])))
			);
			
			$this->db->where('employee_id', $employee_id);
			
			$this->db->update('employee', $employee_data); 
		}
		
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
	
	public function get_employee($employee_id) 
	{
		$q = $this->db->get_where('employee', array('employee_id' => $employee_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_employee_by_email($email) 
	{
		$q = $this->db->get_where('employee', array('email' => $email), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
		
	public function find_employees_by_name($name) 
	{
		$this->db->select("*, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('employee');
		$this->db->like("CONCAT(firstname, ' ', lastname)", $name, 'both');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_employee_by_email_password($email, $password)
	{		
		$q = $this->db->query("SELECT * FROM employee WHERE email = '" . $email . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . htmlspecialchars($password, ENT_QUOTES) . "'))))) OR password = '" . md5($password) . "') AND status = '1'");
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function delete_employee($employee_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('employee', array('employee_id' => $employee_id));
		
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
	
	public function get_employees($data = array()) 
	{			
		$this->db->select("*, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('employee');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like("CONCAT(firstname, ' ', lastname)", $data['filter_name'], 'both');
		}
	
		if(!empty($data['filter_email'])) 
		{			
			$this->db->where('email', $data['filter_email']);
		}
		
		if(!empty($data['filter_phone'])) 
		{			
			$this->db->where('phone', $data['filter_phone']);
		}
	
		$sort_data = array(
			'name',
			'email',
			'phone'
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
	
	function get_employee_total($data = array())
	{
		$this->db->select("COUNT(employee_id) AS total, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('employee');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like("CONCAT(firstname, ' ', lastname)", $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_email'])) 
		{			
			$this->db->where('email', $data['filter_email']);
		}
		
		if(!empty($data['filter_phone'])) 
		{			
			$this->db->where('phone', $data['filter_phone']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
