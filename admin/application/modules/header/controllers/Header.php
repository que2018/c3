<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Header extends MX_Controller 
{
	private $title = '';
	
	private $styles = array();
	
	private $scripts = array();
	
	public function index()
	{
		$this->load->language('header');
		
		$this->load->model('tool/image_model');
		
		if(is_file(IMAGEPATH . $this->config->item('config_logo'))) 
		{
			$data['logo'] = $this->image_model->resize($this->config->item('config_logo'), 48, 48);
		} 
		else
		{
			$data['logo'] = $this->image_model->resize('no_image.jpg', 48, 48);
		}
		
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
