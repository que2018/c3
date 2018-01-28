<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Ups_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'ups')); 
	}
}
