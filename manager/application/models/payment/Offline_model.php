<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Offline_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'offline')); 
		
		$setting_data = array(		
			'code'	      => 'offline',
			'key'	      => 'offline_status',
			'value'	      => '',
			'serialized'  => 0
		);
		
		$setting_data = array(		
			'code'	      => 'offline',
			'key'	      => 'offline_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
				
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'offline')); 
	}
}
