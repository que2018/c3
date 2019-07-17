<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sf_model extends CI_Model
{	
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'sf')); 
	}
}







