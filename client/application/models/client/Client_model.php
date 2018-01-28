<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Client_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
	
	public function add_client($data)
	{
		$salt = rand(0,1000);
		
		$client_data = array(	
			'email'	     	  => $data['email'],
			'salt'	          => $salt,
			'password'        => sha1($salt . sha1($salt . sha1($data['password']))),
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'company'	      => $data['company'],
			'phone'   		  => $data['phone']
		);
		
		$this->db->insert('client', $client_data);
	}
	
	public function edit_client($id, $data)
	{
		$salt = rand(0,1000);
		
		$client_data = array(
			'email'	     	  => $data['email'],
			'salt'	          => $salt,
			'password'        => sha1($salt . sha1($salt . sha1($data['password']))),
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'company'	      => $data['company'],
			'phone'   		  => $data['phone']
		);
		
		$this->db->where('id', $id);
		
		if($this->db->update('client', $client_data)) 
		{
			return true;
		} 
		
		return false;
	}
	
	public function get_client($id) 
	{
		$q = $this->db->get_where('client', array('id' => $id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_client_by_email_password($email, $password)
	{		
		$q = $this->db->query("SELECT * FROM client WHERE email = '" . $email . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . htmlspecialchars($password, ENT_QUOTES) . "'))))) OR password = '" . md5($password) . "') AND status = '1'");
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function delete_client($id) 
	{
		if($this->db->delete('client', array('id' => $id)))
		{
			return true;
		}
		
		return false;
	}	
	
	public function get_clients($data) 
	{			
		$this->db->select("*, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('client');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_company'])) 
		{			
			$this->db->where('company', $data['filter_company']);
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
			'company',
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
	
	function get_client_total($data)
	{
		$this->db->select("COUNT(id) AS total, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('client');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_company'])) 
		{			
			$this->db->where('company', $data['filter_company']);
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
	
	public function get_all_clients() 
	{
		$this->db->select("*, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('client');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0) 
		{
			return $q->result_array();
		}
		
		return false;
	}
}
