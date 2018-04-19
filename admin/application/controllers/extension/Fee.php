<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Fee extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('extension/fee');

		$this->load->model('extension/extension_model');
		
		$data['success'] = $this->session->flashdata('success');
		
		$fees = $this->extension_model->get_installed('fee');
	
		foreach($fees as $key => $code) 
		{
			$file = ucfirst($code);
			
			if(!is_file(APPPATH . '/controllers/fee/' . $file . '.php') && !is_file(APPPATH . '/controllers/fee/' . $file . '.php')) 
			{
				$this->extension_model->uninstall('fee', $file);

				unset($fees[$key]);
			}
		}

		$data['fees'] = array();

		//Compatibility code for old extension folders
		$files = glob(APPPATH . '/controllers/fee/*.php', GLOB_BRACE);

		if($files) {
			foreach ($files as $file) {
				$fee = strtolower(basename($file, '.php'));

				$this->lang->load('fee/' . $fee);

				$data['fees'][] = array(
					'code'       => $fee,
					'name'       => $this->lang->line('text_title'),
					'status'     => ($this->config->item($fee .'_status'))?$this->lang->line('text_enabled'):$this->lang->line('text_disabled'),
					'sort_order' => 0,
					'installed'  => in_array($fee, $fees)
				);
			}
		}
	
		$this->load->view('common/header');
		$this->load->view('extension/fee', $data);
		$this->load->view('common/footer');
	}
	
	public function install() 
	{
		$this->lang->load('extension/fee');
		
		$this->load->model('extension/extension_model');
		
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
			
			$this->extension_model->install('fee', $code);
			
			$this->load->model('fee/'. $code .'_model');

			$this->{$code . '_model'}->install();
			
			$this->session->set_flashdata('success', $this->lang->line('text_install_success'));

			redirect(base_url() . 'extension/fee', 'refresh');
		}
	}
	
	public function uninstall() 
	{
		$this->lang->load('extension/fee');
		
		$this->load->model('extension/extension_model');
		
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
		
			$this->extension_model->uninstall('fee', $code);

			$this->load->model('fee/'. $code .'_model');

			$this->{$code . '_model'}->uninstall();
			
			$this->session->set_flashdata('success', $this->lang->line('text_uninstall_success'));

			redirect(base_url() . 'extension/fee', 'refresh');
		}
	}
}


