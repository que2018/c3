<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Alipay_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'alipay')); 
		
		$setting_data = array(		
			'code'	      => 'alipay',
			'key'	      => 'alipay_service',
			'value'	      => '',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'alipay',
			'key'	      => 'alipay_partner',
			'value'	      => '',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
				
		$setting_data = array(		
			'code'	      => 'alipay',
			'key'	      => 'alipay_seller_id',
			'value'	      => '',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'alipay',
			'key'	      => 'alipay_key',
			'value'	      => '',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'alipay',
			'key'	      => 'alipay_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'alipay',
			'key'	      => 'alipay_status',
			'value'	      => '',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'alipay')); 
	}
}
