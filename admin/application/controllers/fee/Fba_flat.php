<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_flat extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fee/fba_flat');
				
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/fee/fba_flat.css');
	
		$this->header->set_title($this->lang->line('text_fba_flat'));

		$this->form_validation->set_rules('fba_flat_amount', $this->lang->line('text_fba_flat_amount'), 'required');
		$this->form_validation->set_rules('fba_flat_sort_order', $this->lang->line('text_fba_flat_sort_order'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(		
				'fba_flat_type'       => 'fba',
				'fba_flat_amount'     => $this->input->post('fba_flat_amount'),
				'fba_flat_status'     => $this->input->post('fba_flat_status'),
				'fba_flat_sort_order' => $this->input->post('fba_flat_sort_order')
			);
			
			$this->setting_model->edit_setting('fba_flat', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['fba_flat_amount']     = $this->input->post('fba_flat_amount');
			$data['fba_flat_status']     = $this->input->post('fba_flat_status');
			$data['fba_flat_sort_order'] = $this->input->post('fba_flat_sort_order');
		}
		else
		{
			$data['fba_flat_amount']     = $this->config->item('fba_flat_amount');
			$data['fba_flat_status']     = $this->config->item('fba_flat_status');
			$data['fba_flat_sort_order'] = $this->config->item('fba_flat_sort_order');
		}
			
		$data['error'] = validation_errors();
				
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
			
		$this->load->view('fee/fba_flat', $data);		
	}
}


