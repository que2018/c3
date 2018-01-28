<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Permission extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('error/permission');
	}

	public function index()
	{	
		$type = $this->input->get('type');
				
		$this->load->view('common/header');
		
		if($type == 'access')
			$this->load->view('error/permission_access');
		
		if($type == 'modify')
			$this->load->view('error/permission_modify');
		
		$this->load->view('common/footer');
	}
}

