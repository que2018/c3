<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About extends MX_Controller
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');

		$this->lang->load('setting/about');
			
		$this->header->set_title($this->lang->line('text_about'));
		 
		$data['version'] = sprintf($this->lang->line('text_version'), $this->config->item('version')); 
		 
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/about', $data);
	}
}


