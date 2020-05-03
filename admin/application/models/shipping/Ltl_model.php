<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ltl_model extends CI_Model
{	
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'ltl')); 
	}
	
	public function get_shipping_fee($sale_id) 
	{
		return false;
	}
}







