<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin_weight_model extends CI_Model
{		
	public function install()
	{
		$this->load->model('setting/setting_model');
		
		$data = array(
			'checkin_weight_type'       => 'checkin',
			'checkin_weight_level'      => array(),
			'checkin_weight_status'     => 0,
			'checkin_weight_sort_order' => 0
		);
			
		$this->setting_model->edit_setting('checkin_weight', $data);
	}
	
	public function uninstall() 
	{
		$this->load->model('setting/setting_model');
		
		$this->setting_model->delete_setting('checkin_weight');
	}
	
	public function run_checkin($checkout_id)
	{
		return 10;
	}
}
