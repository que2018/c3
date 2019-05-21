<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Ebay_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'ebay')); 
		
		$setting_data = array(		
			'code'	      => 'ebay',
			'key'	      => 'ebay_field',
			'value'	      => serialize(array('Dev Id', 'App Id', 'Cert Id', 'Username', 'Site Id', 'Token')),
			'serialized'  => 1
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'ebay',
			'key'	      => 'ebay_status',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'ebay',
			'key'	      => 'ebay_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'ebay')); 
	}
}
