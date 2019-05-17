<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Platform extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('extension/platform');

		$this->load->model('extension/extension_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/extension/platform.css');
		
		$this->header->set_title($this->lang->line('text_platform'));
				
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
					'installed'  => in_array($platform, $platforms)
				);
			}
		}
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('extension/platform', $data);
	}
	
	public function install() 
	{
		$this->lang->load('extension/platform');
		
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
		$this->lang->load('extension/platform');		
		
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->uninstall('platform', $code);

		$this->load->model('platform/'. $code .'_model');

		$this->{$code . '_model'}->uninstall();
		
		$this->session->set_flashdata('success', $this->lang->line('text_uninstall_success'));

		redirect(base_url() . 'extension/platform', 'refresh');
	}
}


