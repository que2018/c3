<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Payment extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('extension/payment');
	}
	
	function index()
	{
		$this->load->model('extension/extension_model');
		
		$data['success'] = $this->session->flashdata('success');
		
		$payments = $this->extension_model->get_installed('payment');
	
		foreach($payments as $key => $code) 
		{
			$file = ucfirst($code);
			
			if(!is_file(APPPATH . '/controllers/payment/' . $file . '.php') && !is_file(APPPATH . '/controllers/payment/' . $file . '.php')) 
			{
				$this->extension_model->uninstall('payment', $file);

				unset($payments[$key]);
			}
		}

		$data['payments'] = array();

		// Compatibility code for old extension folders
		$files = glob(APPPATH . '/controllers/payment/*.php', GLOB_BRACE);

		if ($files) {
			foreach ($files as $file) {
				$payment = strtolower(basename($file, '.php'));

				$this->lang->load('payment/' . $payment);

				$data['payments'][] = array(
					'code'       => $payment,
					'name'       => $this->lang->line('text_title'),
					'status'     => ($this->config->item($payment .'_status'))?$this->lang->line('text_enabled'):$this->lang->line('text_disabled'),
					'sort_order' => $this->config->item($payment .'_sort_order'),
					'installed'  => in_array($payment, $payments)
				);
			}
		}
	
		$this->load->view('common/header');
		$this->load->view('extension/payment', $data);
		$this->load->view('common/footer');
	}
	
	public function install() 
	{
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->install('payment', $code);
		
		$this->load->model('payment/'. $code .'_model');

		$this->{$code . '_model'}->install();
		
		$this->session->set_flashdata('success', $this->lang->line('text_install_success'));

		redirect(base_url() . 'extension/payment', 'refresh');
	}
	
	public function uninstall() 
	{
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->uninstall('payment', $code);

		$this->load->model('payment/'. $code .'_model');

		$this->{$code . '_model'}->uninstall();
		
		$this->session->set_flashdata('success', $this->lang->line('text_uninstall_success'));

		redirect(base_url() . 'extension/payment', 'refresh');
	}
}

