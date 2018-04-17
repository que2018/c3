<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Flat extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('fee/flat');
						
		$data = array();				
						
		$this->load->view('common/header');
		$this->load->view('fee/flat', $data);
		$this->load->view('common/footer');
	}
}


