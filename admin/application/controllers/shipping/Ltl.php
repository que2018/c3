<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ltl extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('shipping/ltl');
		
		$this->load->library('form_validation');
		
		$this->load->model('setting/setting_model');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/shipping/ltl.css');
				
		$this->header->set_title($this->lang->line('text_ltl'));
		
		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(				
				'ltl_status'   	  		 => $this->input->post('ltl_status'),
				'ltl_sort_order'  		 => $this->input->post('ltl_sort_order')
			);
			
			$this->setting_model->edit_setting('ltl', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/shipping', 'refresh');
		}
		
		if($this->input->post('ltl_status')) 
		{
			$data['ltl_status'] = $this->input->post('ltl_status');
		} 
		else 
		{
			$data['ltl_status'] = $this->config->item('ltl_status');
		}
		
		if($this->input->post('ltl_sort_order')) 
		{
			$data['ltl_sort_order'] = $this->input->post('ltl_sort_order');
		} 
		else 
		{
			$data['ltl_sort_order'] = $this->config->item('ltl_sort_order');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('shipping/ltl', $data);
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('ltl_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('ltl_status', $this->lang->line('text_status'), 'required');

		return $this->form_validation->run();
	}
}


