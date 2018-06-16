<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Customer_model extends CI_Model
{	
	public function add_customer($data)
	{
		$this->db->trans_begin();
		
		$customer_data = array(		
			'name'	      	  => $data['name'],
			'street'	      => $data['street'],
			'street2'	      => $data['street2'],
			'city'	      	  => $data['city'],
			'state'	     	  => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'company'	      => $data['company'],
			'email'	     	  => $data['email'],
			'phone'   		  => $data['phone']
		);
		
		$this->db->insert('customer', $customer_data);
		
		$customer_id = $this->db->insert_id();
		
		if($data['client_id'])
		{
			$this->db->where('id', $customer_id);
			
			$this->db->update('customer', array('client_id' => $data['client_id'])); 
		}
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $customer_id;
		}
	}
	
	public function edit_customer($customer_id, $data)
	{
		$this->db->trans_begin();
		
		$customer_data = array(	
			'name'	          => $data['name'],
			'street'	      => $data['street'],
			'street2'	      => $data['street2'],
			'city'	      	  => $data['city'],
			'state'	     	  => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'company'	      => $data['company'],
			'email'	     	  => $data['email'],
			'phone'   		  => $data['phone']
		);
		
		$this->db->where('id', $customer_id);
		
		$this->db->update('customer', $customer_data);
		
		if($data['client_id'])
		{
			$this->db->where('id', $customer_id);
			
			$this->db->update('customer', array('client_id' => $data['client_id'])); 
		}
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $customer_id;
		}
	}
	
	public function get_customer($customer_id) 
	{		
		$this->db->select("customer.*, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->join('client', 'client.id = customer.client_id', 'left');
		$this->db->from('customer');
		$this->db->where('customer.id', $customer_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function has_customer($data) 
	{		
		$this->db->select('*', false);
		$this->db->from('customer');
		$this->db->where('name', $data['name']);
		$this->db->where('street', $data['street']);
		$this->db->where('street2', $data['street2']);
		$this->db->where('city', $data['city']);
		$this->db->where('state', $data['state']);
		$this->db->where('country', $data['country']);
		$this->db->where('zipcode', $data['zipcode']);
		$this->db->where('phone', $data['phone']); 
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{			
			return true;
		} 
		
		return false;
	}
	
	public function delete_customer($customer_id) 
	{
		if($this->db->delete('customer', array('id' => $customer_id)))
		{
			return true;
		}
		
		return false;
	}	
	
	public function get_customers($data = array()) 
	{			
		$this->db->select("customer.*, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->join('client', 'client.id = customer.client_id', 'left');
		$this->db->from('customer');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('customer.name', $data['filter_name'], 'after');
		}
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like('client', $data['filter_client'], 'after');
		}
		
		if(!empty($data['filter_company'])) 
		{			
			$this->db->where('customer.company', $data['filter_company']);
		}
		
		if(!empty($data['filter_email'])) 
		{			
			$this->db->where('customer.email', $data['filter_email']);
		}
		
		if(!empty($data['filter_phone'])) 
		{			
			$this->db->where('customer.phone', $data['filter_phone']);
		}
	
		$sort_data = array(
			'customer.name',
			'customer.company',
			'customer.email',
			'customer.phone',
			'client'
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
	
	public function get_customer_total($data = array())
	{
		$this->db->select("COUNT(customer.id) AS total, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->join('client', 'client.id = customer.client_id', 'left');
		$this->db->from('customer');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('customer.name', $data['filter_name'], 'after');
		}
		
		if(!empty($data['filter_client'])) 
		{			
			$this->db->like('client', $data['filter_client'], 'after');
		}
		
		if(!empty($data['filter_company'])) 
		{			
			$this->db->where('customer.company', $data['filter_company']);
		}
		
		if(!empty($data['filter_email'])) 
		{			
			$this->db->where('customer.email', $data['filter_email']);
		}
		
		if(!empty($data['filter_phone'])) 
		{			
			$this->db->where('customer.phone', $data['filter_phone']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
		
	public function find_customer_by_name($name) 
	{
		$this->db->select('*', false);
		$this->db->from('customer');
		$this->db->like('name', $name, 'after');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
}
