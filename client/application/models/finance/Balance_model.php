<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Balance_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function get_balance() 
	{			
		$this->db->select('*', false);
		$this->db->from('balance');
		$this->db->where('client_id', $this->auth->get_client_id());

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		else 
		{
			return false;
		}
	}
}
