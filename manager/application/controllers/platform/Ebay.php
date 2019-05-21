<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Ebay extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('platform/ebay');
	}
	
	function index()
	{
		$this->load->library('form_validation');
	
		$this->load->model('setting/setting_model');
	
		$this->form_validation->set_rules('ebay_field[]', $this->lang->line('text_fields'), 'required');
		$this->form_validation->set_rules('ebay_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('ebay_status', $this->lang->line('text_status'), 'required');
		
		$data = array(
			'ebay_field'      => $this->input->post('ebay_field'),
			'ebay_sort_order' => $this->input->post('ebay_sort_order'),
			'ebay_status'     => $this->input->post('ebay_status')			
		);
		
		if($this->form_validation->run() == true)
		{
			$this->setting_model->edit_setting('ebay', $data);
			
			$this->session->set_flashdata('success', $this->lang->line("text_ebay_platform_edit_success"));
			
			redirect(base_url() . 'extension/platform', 'refresh');
		}
		else 
		{
			$setting = $this->setting_model->get_setting('ebay');
			
			$data['ebay_fields'] = $setting['ebay_field'];	
			$data['ebay_sort_order'] = $setting['ebay_sort_order'];			
			$data['ebay_status'] = $setting['ebay_status'];
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('platform/ebay', $data);
		$this->load->view('common/footer');
	}
}


