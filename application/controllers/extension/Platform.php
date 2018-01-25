<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Platform extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('extension/platform');
	}
	
	function index()
	{
		$this->load->model('extension/extension_model');
		
		$data['success'] = $this->session->flashdata('success');
		
		$platforms = $this->extension_model->get_installed('platform');
	
		foreach($platforms as $key => $code) 
		{
			$file = ucfirst($code);
			
			if (!is_file(APPPATH . '/controllers/platform/' . $file . '.php') && !is_file(APPPATH . '/controllers/platform/' . $file . '.php')) 
			{
				$this->extension_model->uninstall('platform', $file);

				unset($platforms[$key]);
			}
		}

		$data['platforms'] = array();

		// Compatibility code for old extension folders
		$files = glob(APPPATH . '/controllers/platform/*.php', GLOB_BRACE);

		if ($files) {
			foreach ($files as $file) {
				$platform = strtolower(basename($file, '.php'));

				$this->lang->load('platform/' . $platform);

				$data['platforms'][] = array(
					'code'       => $platform,
					'name'       => $this->lang->line('text_title'),
					'logo'       => $this->lang->line('text_logo'),
					'status'     => ($this->config->item($platform .'_status'))?$this->lang->line('text_enabled'):$this->lang->line('text_disabled'),
					'sort_order' => $this->config->item($platform .'_sort_order'),
					'installed'  => in_array($platform, $platforms)
				);
			}
		}
	
		$this->load->view('common/header');
		$this->load->view('extension/platform', $data);
		$this->load->view('common/footer');
	}
	
	public function install() 
	{
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->install('platform', $code);
		
		$this->load->model('platform/'. $code .'_model');

		$this->{$code . '_model'}->install();
		
		$this->session->set_flashdata('success', $this->lang->line('text_install_success'));

		redirect(base_url() . 'extension/platform', 'refresh');
	}
	
	public function uninstall() 
	{
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->uninstall('platform', $code);

		$this->load->model('platform/'. $code .'_model');

		$this->{$code . '_model'}->uninstall();
		
		$this->session->set_flashdata('success', $this->lang->line('text_uninstall_success'));

		redirect(base_url() . 'extension/platform', 'refresh');
	}
	
	public function get_platform_form() 
	{
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
			
			$this->lang->load('platform/' . $code);
			
			$this->load->view('platform/'. $code . '_form');
		}
	}
}


