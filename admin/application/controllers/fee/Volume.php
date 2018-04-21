<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Volume extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('fee/volume');
		
		$this->load->library('form_validation');
		
		$this->load->model('setting/setting_model');
		
		$this->form_validation->set_rules('volume_amount', $this->lang->line('text_volume_amount'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(				
				'volume_amount' => $this->input->post('volume_amount'),
				'volume_status' => $this->input->post('volume_status')
			);
			
			$this->setting_model->edit_setting('volume', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['volume_amount'] = $this->input->get('volume_amount');
			$data['volume_status'] = $this->input->get('volume_status');
		}
		else
		{
			$data['volume_amount'] = $this->config->item('volume_amount');
			$data['volume_status'] = $this->config->item('volume_status');
		}
			
		$data['error'] = validation_errors();
				
		$this->load->view('common/header');
		$this->load->view('fee/volume', $data);
		$this->load->view('common/footer');
	}
}


