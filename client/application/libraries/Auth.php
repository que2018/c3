<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth
{
	public $client_id;
	
	public $email;

	public $firstname;
	
	public $lastname;
	
	public $company;
	
	public $street;
	
	public $city;
	
	public $state;
	
	public $country;
	
	public $zipcode;
	
	public $phone;
	
	public function __construct()
	{
		$this->load->library('session');
		
		$this->load->model('client/client_model');
		
		if($this->session->userdata('client_id')) 
		{
			$session_client_id = $this->session->userdata('client_id');
			
			$client = $this->client_model->get_client($session_client_id);
			
			if($client)
			{
				$this->client_id  = $client['id'];
				$this->email      = $client['email'];
				$this->firstname  = $client['firstname'];
				$this->lastname   = $client['lastname'];
				$this->company    = $client['company'];
				$this->street     = $client['street'];
				$this->city       = $client['city'];
				$this->state      = $client['state'];
				$this->country    = $client['country'];
				$this->zipcode    = $client['zipcode'];
				$this->phone      = $client['phone'];	
			}
			else
			{
				$this->logout();
			}
		}
	}
	
	public function login($email, $password) 
	{
		$client = $this->client_model->get_client_by_email_password($email, $password);
		
		if($client)
		{
			$this->session->set_userdata('client_id', $client['id']);
			
			$this->client_id  = $client['id'];
			$this->email      = $client['email'];
			$this->firstname  = $client['firstname'];
			$this->lastname   = $client['lastname'];
			$this->company    = $client['company'];
			$this->street     = $client['street'];
			$this->city       = $client['city'];
			$this->state      = $client['state'];
			$this->country    = $client['country'];
			$this->zipcode    = $client['zipcode'];
			$this->phone      = $client['phone'];

			return true;
		}
		else
		{
			return false;
		}
	}

	public function logout() 
	{
		$this->session->unset_userdata('client_id');
		
		$this->client_id   = '';
		$this->email       = '';
		$this->firstname   = '';
		$this->lastname    = '';
	}

	public function is_logged() 
	{
		return $this->client_id;
	}

	public function get_client_id() 
	{
		return $this->client_id;
	}

	//Enables the use of CI super-global without having to define an extra variable.
	public function __get($var)
	{
		return get_instance()->$var;
	}
}
