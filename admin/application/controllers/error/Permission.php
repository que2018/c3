<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Permission extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('error/permission');
	
		$type = $this->input->get('type');
				
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		if($type == 'access')
		{
			$this->load->view('error/permission_access', $data);
		}
		
		if($type == 'modify')
		{
			$this->load->view('error/permission_modify', $data);
		}		
	}
}

