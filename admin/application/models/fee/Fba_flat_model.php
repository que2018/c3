<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_flat_model extends CI_Model
{		
	public function install()
	{
		$this->load->model('setting/setting_model');
		
		$data = array(	
			'fba_flat_type'       => 'fba_flat',		
			'fba_flat_amount'     => 0,
			'fba_flat_status'     => 0,
			'fba_flat_sort_order' => 0
		);
			
		$this->setting_model->edit_setting('fba_flat', $data);
	}
	
	public function uninstall() 
	{
		$this->load->model('setting/setting_model');
		
		$this->setting_model->delete_setting('fba_flat');
	}
	
	public function run()
	{
		return 10;
	}
}
