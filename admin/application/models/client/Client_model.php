<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Client_model extends CI_Model
{		
	public function add_client($data)
	{
		$this->db->trans_begin();
		
		//client data
		$salt = rand(0,1000);
		
		$client_data = array(	
			'email'	     	  => $data['email'],
			'salt'	          => $salt,
			'password'        => sha1($salt . sha1($salt . sha1($data['password']))),
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'company'	      => $data['company'],
			'street'	      => $data['street'],
			'city'	          => $data['city'],
			'state'	          => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'phone'   		  => $data['phone'],
			'data'   		  => (isset($data['data']))?serialize($data['data']):'',
			'permission'      => (isset($data['permission']))?serialize($data['permission']):''
		);
		
		$this->db->insert('client', $client_data);
		
		$client_id = $this->db->insert_id();
		
		//location		
		if($data['locations'])
		{
			foreach($data['locations'] as $location)
			{
				$location_client_data = array(	
					'client_id'    => $client_id,
					'location_id'  => $location['location_id'],
					'date_added'   => $location['date_added']
				);
				
				$this->db->insert('location_to_client', $location_client_data);
			}
		}
		
		//address		
		if($data['addresses'])
		{
			foreach($data['addresses'] as $address)
			{
				$location_address_data = array(	
					'client_id'  => $client_id,
					'street'  	 => $address['street'],
					'street2'    => $address['street2'],
					'city'       => $address['street2'],
					'state'      => $address['state'],
					'country'    => $address['country'],
					'zipcode'    => $address['zipcode']
				);
				
				$this->db->insert('client_address', $location_address_data);
			}
		}
		
		//balance
		$this->load->model('finance/balance_model');
		
		$balance_data = array(	
			'client_id'	      => $client_id,
			'amount'	      => 0			
		);
		
		$this->balance_model->add_balance($balance_data);
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $client_id;
		}
	}
	
	public function edit_client($client_id, $data)
	{		
		$this->db->trans_begin();
			
		//client data
		$client_data = array(
			'email'	     	  => $data['email'],
			'firstname'	      => $data['firstname'],
			'lastname'	      => $data['lastname'],
			'company'	      => $data['company'],
			'street'	      => $data['street'],
			'city'	          => $data['city'],
			'state'	          => $data['state'],
			'country'	      => $data['country'],
			'zipcode'	      => $data['zipcode'],
			'phone'   		  => $data['phone'],
			'data'   		  => (isset($data['data']))?serialize($data['data']):'',
			'permission'      => (isset($data['permission']))?serialize($data['permission']):''
		);
		
		$this->db->where('id', $client_id);
		
		$this->db->update('client', $client_data); 
		
		if($data['password'])
		{
			$salt = rand(0, 1000);
	
			$client_data = array(
				'salt'	    => $salt,
				'password'  => sha1($salt . sha1($salt . sha1($data['password'])))
			);
			
			$this->db->where('id', $client_id);
		
			$this->db->update('client', $client_data); 
		}
		
		//location
		$this->db->delete('location_to_client', array('client_id' => $client_id));
		
		if($data['locations'])
		{
			$this->db->delete('location_to_client', array('client_id' => $client_id));
			
			foreach($data['locations'] as $location)
			{
				$location_client_data = array(	
					'client_id'    => $client_id,
					'location_id'  => $location['location_id'],
					'date_added'   => $location['date_added']
				);
				
				$this->db->insert('location_to_client', $location_client_data);
			}
		}
		
		//address
		$this->db->delete('client_address', array('client_id' => $client_id));
		
		if($data['addresses'])
		{
			foreach($data['addresses'] as $address)
			{
				$location_address_data = array(	
					'client_id'  => $client_id,
					'street'  	 => $address['street'],
					'street2'    => $address['street2'],
					'city'       => $address['street2'],
					'state'      => $address['state'],
					'country'    => $address['country'],
					'zipcode'    => $address['zipcode']
				);
				
				$this->db->insert('client_address', $location_address_data);
			}
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
	
	public function get_client($client_id) 
	{
		$q = $this->db->get_where('client', array('id' => $client_id), 1); 
		
		if($q->num_rows() > 0)
		{
			$row = $q->row_array();
			
			$result = array(
				'email'       => $row['email'],
				'password'    => $row['password'],
				'firstname'   => $row['firstname'],
				'lastname'    => $row['lastname'],				
				'company'     => $row['company'],
				'street'      => $row['street'],
				'city'        => $row['city'],
				'state'       => $row['state'],
				'country'     => $row['country'],
				'zipcode'     => $row['zipcode'],
				'phone'       => $row['phone'],
				'data'        => (!empty($row['data']))?unserialize($row['data']):'',
				'permission'  => (!empty($row['permission']))?unserialize($row['permission']):''
			);
			
			return $result;
		} 
		
		return false;
	}
	
	public function get_client_by_email($email) 
	{
		$q = $this->db->get_where('client', array('email' => $email), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_client_by_company($company) 
	{
		$q = $this->db->get_where('client', array('company' => $company), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_client_by_store($store_id) 
	{
		$this->db->select('client.*', false);
		$this->db->from('client');
		$this->db->join('store', 'store.client_id = client.id', 'left');
		$this->db->where('store.store_id', $store_id);		
		
		$q = $this->db->get();

		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_client_locations($client_id) 
	{		
		$this->db->select('location_to_client.*, location.name', false);
		$this->db->from('location_to_client');
		$this->db->join('location', 'location.id = location_to_client.location_id', 'left');
		$this->db->where('location_to_client.client_id', $client_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_client_addresses($client_id) 
	{		
		$this->db->select('client_address.*', false);
		$this->db->from('client_address');
		$this->db->where('client_address.client_id', $client_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_clients_by_name($name) 
	{
		$this->db->select("*, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('client');
		$this->db->like("CONCAT(firstname, ' ', lastname)", $name, 'both');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_client($client_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('client', array('id' => $client_id));
		
		$this->db->delete('balance', array('client_id' => $client_id));

		$this->db->delete('location_to_client', array('client_id' => $client_id));
				
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
	
	public function get_clients($data = array()) 
	{			
		$this->db->select("*, CONCAT(firstname, ' ', lastname) AS name", false);
		$this->db->from('client');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like("CONCAT(firstname, ' ', lastname)", $data['filter_name'], 'both');
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
	
	public function get_client_total($data = array())
	{
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('client');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like("CONCAT(firstname, ' ', lastname)", $data['filter_name'], 'both');
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
}
