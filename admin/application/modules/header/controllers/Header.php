<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Header extends MX_Controller 
{
	private $title = '';
	
	private $styles = array();
	
	private $scripts = array();
	
	public function index()
	{
		$this->load->language('header');
		
		$data['username'] = sprintf($this->lang->line('text_hello'), $this->auth->get_username());
		
		$data['title'] = $this->title;
		
		$data['styles'] = $this->styles;
		
		$data['scripts'] = $this->scripts;
		
		$data['success'] = $this->session->flashdata('success');
		
		$this->load->view('header', $data);
	}
	
	public function set_title($title)
	{
		$this->title = $title;
	}
	
	public function add_style($style)
	{
		$this->styles[] = $style;
	}
	
	public function add_script($script)
	{
		$this->scripts[] = $script;
	}
}
