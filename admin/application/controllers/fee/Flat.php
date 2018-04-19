<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Flat extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('fee/flat');
		
		$this->load->library('form_validation');
		
		$this->load->model('setting/setting_model');
		
		$this->form_validation->set_rules('flat_amount', $this->lang->line('text_flat_amount'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(				
				'flat_amount' => $this->input->post('flat_amount'),
				'flat_status' => $this->input->post('flat_status')
			);
			
			$this->setting_model->edit_setting('flat', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['flat_amount'] = $this->input->get('flat_amount');
			$data['flat_status'] = $this->input->get('flat_status');
		}
		else
		{
			$data['flat_amount'] = $this->config->item('flat_amount');
			$data['flat_status'] = $this->config->item('flat_status');
		}
			
		$data['error'] = validation_errors();
				
		$this->load->view('common/header');
		$this->load->view('fee/flat', $data);
		$this->load->view('common/footer');
	}
}


