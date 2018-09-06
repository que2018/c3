<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Volume extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fee/volume');
				
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/fee/volume.css');
	
		$this->header->set_title($this->lang->line('text_volume'));
		
		$this->form_validation->set_rules('volume_sort_order', $this->lang->line('text_volume_sort_order'), 'required');
		$this->form_validation->set_rules('volume_level', $this->lang->line('text_volume_level'), 'callback_validate_volume_level');
		$this->form_validation->set_rules('volume_level_end', $this->lang->line('text_volume_level_end'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(			
				'volume_type'       => 'inventory',
				'volume_status'     => $this->input->post('volume_status'),
				'volume_sort_order' => $this->input->post('volume_sort_order'),
				'volume_level'      => $this->input->post('volume_level'),
				'volume_level_end'  => $this->input->post('volume_level_end')
			);
			
			$this->setting_model->edit_setting('volume', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['volume_levels']     = $this->input->post('volume_level');
			$data['volume_status']     = $this->input->post('volume_status');
			$data['volume_sort_order'] = $this->input->post('volume_sort_order');
			$data['volume_level']      = $this->input->post('volume_level');
			$data['volume_level_end']  = $this->input->post('volume_level_end');
		}
		else
		{
			$data['volume_levels']     = $this->config->item('volume_level');
			$data['volume_status']     = $this->config->item('volume_status');
			$data['volume_sort_order'] = $this->config->item('volume_sort_order');
			$data['volume_level']      = $this->config->item('volume_level');
			$data['volume_level_end']  = $this->config->item('volume_level_end');
		}
			
		$data['error'] = validation_errors();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
			
		$this->load->view('fee/volume', $data);
	}
	
	public function validate_volume_level()
	{	
		$this->lang->load('fee/volume');
				
		if($this->input->post('volume_level'))
		{
			$validated = true;
			
			$error_message = '';
			
			$volume_levels = $this->input->post('volume_level');
			
			foreach($volume_levels as $row => $volume_level)
			{
				$volume = $volume_level['volume'];
				$amount = $volume_level['amount'];
				
				if(!$volume)
				{
					$error_message .= sprintf($this->lang->line('error_volume_row_required'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
				
				if(!$amount)
				{
					$error_message .= sprintf($this->lang->line('error_amount_row_required'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_volume_level', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{	
			$this->form_validation->set_message('validate_volume_level', $this->lang->line('error_volume_level_required'));

			return false;
		}	
	}
}


