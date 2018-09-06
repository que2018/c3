<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin_weight extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fee/checkin_weight');
				
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/fee/checkin_weight.css');
	
		$this->header->set_title($this->lang->line('text_checkin_weight'));
		
		$this->form_validation->set_rules('checkin_weight_sort_order', $this->lang->line('text_checkin_weight_sort_order'), 'required');
		$this->form_validation->set_rules('checkin_weight_level', $this->lang->line('text_checkin_weight_level'), 'callback_validate_checkin_weight_level');
		$this->form_validation->set_rules('checkin_weight_level_end', $this->lang->line('text_checkin_weight_level_end'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(			
				'checkin_weight_type'       => 'checkin',
				'checkin_weight_status'     => $this->input->post('checkin_weight_status'),
				'checkin_weight_sort_order' => $this->input->post('checkin_weight_sort_order'),
				'checkin_weight_level'      => $this->input->post('checkin_weight_level'),
				'checkin_weight_level_end'  => $this->input->post('checkin_weight_level_end')
			);
			
			$this->setting_model->edit_setting('checkin_weight', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['checkin_weight_levels']     = $this->input->post('checkin_weight_level');
			$data['checkin_weight_status']     = $this->input->post('checkin_weight_status');
			$data['checkin_weight_sort_order'] = $this->input->post('checkin_weight_sort_order');
			$data['checkin_weight_level']      = $this->input->post('checkin_weight_level');
			$data['checkin_weight_level_end']  = $this->input->post('checkin_weight_level_end');
		}
		else
		{
			$data['checkin_weight_levels']     = $this->config->item('checkin_weight_level');
			$data['checkin_weight_status']     = $this->config->item('checkin_weight_status');
			$data['checkin_weight_sort_order'] = $this->config->item('checkin_weight_sort_order');
			$data['checkin_weight_level']      = $this->config->item('checkin_weight_level');
			$data['checkin_weight_level_end']  = $this->config->item('checkin_weight_level_end');
		}
			
		$data['error'] = validation_errors();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
			
		$this->load->view('fee/checkin_weight', $data);
	}
	
	public function validate_checkin_weight_level()
	{	
		$this->lang->load('fee/checkin_weight');
				
		if($this->input->post('checkin_weight_level'))
		{
			$validated = true;
			
			$error_message = '';
			
			$checkin_weight_levels = $this->input->post('checkin_weight_level');
			
			foreach($checkin_weight_levels as $row => $checkin_weight_level)
			{
				$checkin_weight = $checkin_weight_level['checkin_weight'];
				$amount = $checkin_weight_level['amount'];
				
				if(!$checkin_weight)
				{
					$error_message .= sprintf($this->lang->line('error_checkin_weight_row_required'), ($row + 1));
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
				$this->form_validation->set_message('validate_checkin_weight_level', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{	
			$this->form_validation->set_message('validate_checkin_weight_level', $this->lang->line('error_checkin_weight_level_required'));

			return false;
		}	
	}
}


