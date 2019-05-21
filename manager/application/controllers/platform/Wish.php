<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Wish extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('platform/wish');
	}
	
	function index()
	{
		$this->load->library('form_validation');
	
		$this->load->model('setting/setting_model');
	
		$this->form_validation->set_rules('wish_field[]', $this->lang->line('text_fields'), 'required');
		$this->form_validation->set_rules('wish_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('wish_status', $this->lang->line('text_status'), 'required');
		
		$data = array(
			'wish_field'      => $this->input->post('wish_field'),
			'wish_sort_order' => $this->input->post('wish_sort_order'),
			'wish_status'     => $this->input->post('wish_status')			
		);
		
		if($this->form_validation->run() == true)
		{
			$this->setting_model->edit_setting('wish', $data);
			
			$this->session->set_flashdata('success', $this->lang->line("text_wish_platform_edit_success"));
			
			redirect(base_url() . 'extension/platform', 'refresh');
		}
		else 
		{
			$setting = $this->setting_model->get_setting('wish');
			
			$data['wish_fields'] = $setting['wish_field'];	
			$data['wish_sort_order'] = $setting['wish_sort_order'];			
			$data['wish_status'] = $setting['wish_status'];
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('platform/wish', $data);
		$this->load->view('common/footer');
	}
}


