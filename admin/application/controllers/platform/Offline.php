<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Offline extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('platform/offline');
	}
	
	function index()
	{
		$this->load->library('form_validation');
	
		$this->load->model('setting/setting_model');
	
		$this->form_validation->set_rules('offline_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('offline_status', $this->lang->line('text_status'), 'required');
		
		$offline_field = $this->input->post('offline_field');
		
		if(isset($offline_field))
		{
			$data = array(
				'offline_field'      => $this->input->post('offline_field'),
				'offline_sort_order' => $this->input->post('offline_sort_order'),
				'offline_status'     => $this->input->post('offline_status')			
			);
		}
		else
		{
			$data = array(
				'offline_sort_order' => $this->input->post('offline_sort_order'),
				'offline_status'     => $this->input->post('offline_status')			
			);
		}
			
		if($this->form_validation->run() == true)
		{
			$this->setting_model->edit_setting('offline', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_offline_platform_edit_success'));
			
			redirect(base_url() . 'extension/platform', 'refresh');
		}
		else 
		{
			$setting = $this->setting_model->get_setting('offline');
			
			if(isset($setting['offline_field']))
			{
				$data['offline_fields'] = $setting['offline_field'];	
			}
			else
			{
				$data['offline_fields'] = null;
			}
			
			$data['offline_sort_order'] = $setting['offline_sort_order'];			
			$data['offline_status']     = $setting['offline_status'];
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('platform/offline', $data);
		$this->load->view('common/footer');
	}
}


