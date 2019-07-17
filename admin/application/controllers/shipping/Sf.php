<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sf extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('shipping/sf');
		
		$this->load->library('form_validation');
		
		$this->load->model('setting/setting_model');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/shipping/sf.css');
				
		$this->header->set_title($this->lang->line('text_sf'));
		
		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(				
				'sf_status'   	  => $this->input->post('sf_status'),
				'sf_sort_order'  => $this->input->post('sf_sort_order'),
				'sf_service'     => $this->input->post('sf_service')
			);
			
			$this->setting_model->edit_setting('sf', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/shipping', 'refresh');
		}
		
		if($this->input->post('sf_status')) 
		{
			$data['sf_status'] = $this->input->post('sf_status');
		} 
		else 
		{
			$data['sf_status'] = $this->config->item('sf_status');
		}
		
		if($this->input->post('sf_sort_order')) 
		{
			$data['sf_sort_order'] = $this->input->post('sf_sort_order');
		} 
		else 
		{
			$data['sf_sort_order'] = $this->config->item('sf_sort_order');
		}
		
		if($this->input->post('sf_service')) 
		{
			$data['sf_services'] = $this->input->post('sf_service');
		} 
		else 
		{
			$data['sf_services'] = $this->config->item('sf_service');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('shipping/sf', $data);
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('sf_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('sf_status', $this->lang->line('text_status'), 'required');

		return $this->form_validation->run();
	}
}


