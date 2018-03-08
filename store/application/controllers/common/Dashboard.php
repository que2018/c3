<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('common/dashboard');		
	}
	
	public function index() 
	{	
		$this->load->library('currency');
		$this->load->library('datetimer');		
		
		$data = array();
		
		$this->load->view('common/header');
		$this->load->view('common/dashboard', $data);
		$this->load->view('common/footer');
	}
}
