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
}
