<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Flat extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fee/flat');
				
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/fee/flat.css');
	
		$this->header->set_title($this->lang->line('text_flat'));

		$this->form_validation->set_rules('flat_amount', $this->lang->line('text_flat_amount'), 'required');
		$this->form_validation->set_rules('flat_sort_order', $this->lang->line('text_flat_sort_order'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(		
				'flat_type'       => 'inventory',
				'flat_amount'     => $this->input->post('flat_amount'),
				'flat_status'     => $this->input->post('flat_status'),
				'flat_sort_order' => $this->input->post('flat_sort_order')
			);
			
			$this->setting_model->edit_setting('flat', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['flat_amount']     = $this->input->post('flat_amount');
			$data['flat_status']     = $this->input->post('flat_status');
			$data['flat_sort_order'] = $this->input->post('flat_sort_order');
		}
		else
		{
			$data['flat_amount']     = $this->config->item('flat_amount');
			$data['flat_status']     = $this->config->item('flat_status');
			$data['flat_sort_order'] = $this->config->item('flat_sort_order');
		}
			
		$data['error'] = validation_errors();
				
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
			
		$this->load->view('fee/flat', $data);		
	}
}


