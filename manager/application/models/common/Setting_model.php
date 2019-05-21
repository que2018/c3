<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Setting_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();

	}
	
	public function test() 
	{
		$q = $this->db->get('setting');
		
		$result_array = $q->result_array();

		return $result_array;
	}
}
