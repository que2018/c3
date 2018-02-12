<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Opencart extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('platform/opencart');
	}
	
	function index()
	{
		$this->load->library('form_validation');
	
		$this->load->model('setting/setting_model');
	
		$this->form_validation->set_rules('opencart_field[]', $this->lang->line('text_fields'), 'required');
		$this->form_validation->set_rules('opencart_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('opencart_status', $this->lang->line('text_status'), 'required');
		
		$data = array(
			'opencart_field'      => $this->input->post('opencart_field'),
			'opencart_sort_order' => $this->input->post('opencart_sort_order'),
			'opencart_status'     => $this->input->post('opencart_status')			
		);
		
		if($this->form_validation->run() == true)
		{
			$this->setting_model->edit_setting('opencart', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_opencart_platform_edit_success'));
			
			redirect(base_url() . 'extension/platform', 'refresh');
		}
		else 
		{
			$setting = $this->setting_model->get_setting('opencart');
			
			$data['opencart_fields'] = $setting['opencart_field'];	
			$data['opencart_sort_order'] = $setting['opencart_sort_order'];			
			$data['opencart_status'] = $setting['opencart_status'];
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('platform/opencart', $data);
		$this->load->view('common/footer');
	}
}


