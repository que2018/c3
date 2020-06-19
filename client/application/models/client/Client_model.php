<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Client_model extends CI_Model
{	
	public function get_client($client_id) 
	{
		$q = $this->db->get_where('client', array('id' => $client_id), 1); 
		
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
	
	public function get_client_address($client_address_id) 
	{
		$q = $this->db->get_where('client_address', array('client_address_id' => $client_address_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
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
	
}
