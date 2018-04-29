<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Header extends MX_Controller 
{
	private $title = '';
	
	private $scripts = array();
	
	public function index()
	{
		$this->load->language('header');
		
		$data['username'] = sprintf($this->lang->line('text_hello'), $this->auth->get_username());
		
		$data['title'] = $this->title;
		
		$data['scripts'] = $this->scripts;
		
		$this->load->view('header', $data);
	}
	
	public function set_title($title)
	{
		$this->title = $title;
	}
}
