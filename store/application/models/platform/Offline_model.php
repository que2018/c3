<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Offline_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
		 
		$this->lang->load('platform/offline');
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'offline')); 
		
		$setting_data = array(		
			'code'	      => 'offline',
			'key'	      => 'offline_field',
			'value'	      => serialize(array()),
			'serialized'  => 1
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'offline',
			'key'	      => 'offline_status',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
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
	
	public function download($store_id)
	{
		
	}
	
	public function upload($store_id)
	{
		
	}
}
