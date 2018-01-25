<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Offline extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('payment/offline');
		
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');
	}
	
	public function index()
	{
		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(
				'offline_status'      => $this->input->post('offline_status'),
				'offline_sort_order'  => $this->input->post('offline_sort_order'),				
			);
			
			$this->setting_model->edit_setting('offline', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_offline_edit_success'));
			
			redirect(base_url() . 'extension/payment', 'refresh');
		}
		
		if($this->input->post('offline_status')) 
		{
			$data['offline_status'] = $this->input->post('offline_status');
		} 
		else 
		{
			$data['offline_status'] = $this->config->item('offline_status');
		}
		
		if($this->input->post('offline_sort_order')) 
		{
			$data['offline_sort_order'] = $this->input->post('offline_sort_order');
		} 
		else 
		{
			$data['offline_sort_order'] = $this->config->item('offline_sort_order');
		}
			
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('payment/offline', $data);
		$this->load->view('common/footer');
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('offline_status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('offline_sort_order', $this->lang->line('text_sort_order'), 'required');
	
		return $this->form_validation->run();
	}
}


