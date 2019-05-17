<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_weight extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fee/checkout_weight');
				
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/fee/checkout_weight.css');
	
		$this->header->set_title($this->lang->line('text_checkout_weight'));
		
		$this->form_validation->set_rules('checkout_weight_sort_order', $this->lang->line('text_checkout_weight_sort_order'), 'required');
		$this->form_validation->set_rules('checkout_weight_level', $this->lang->line('text_checkout_weight_level'), 'callback_validate_checkout_weight_level');
		$this->form_validation->set_rules('checkout_weight_level_end', $this->lang->line('text_checkout_weight_level_end'), 'regex_match[/^(?:[1-9]\d*|0)?(?:\.\d+)?$/]');

		if($this->form_validation->run() == true)
		{
			$data = array(			
				'checkout_weight_type'       => 'checkout',
				'checkout_weight_status'     => $this->input->post('checkout_weight_status'),
				'checkout_weight_sort_order' => $this->input->post('checkout_weight_sort_order'),
				'checkout_weight_level'      => $this->input->post('checkout_weight_level'),
				'checkout_weight_level_end'  => $this->input->post('checkout_weight_level_end')
			);
			
			$this->setting_model->edit_setting('checkout_weight', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['checkout_weight_levels']     = $this->input->post('checkout_weight_level');
			$data['checkout_weight_status']     = $this->input->post('checkout_weight_status');
			$data['checkout_weight_sort_order'] = $this->input->post('checkout_weight_sort_order');
			$data['checkout_weight_level']      = $this->input->post('checkout_weight_level');
			$data['checkout_weight_level_end']  = $this->input->post('checkout_weight_level_end');
		}
		else
		{
			$data['checkout_weight_levels']     = $this->config->item('checkout_weight_level');
			$data['checkout_weight_status']     = $this->config->item('checkout_weight_status');
			$data['checkout_weight_sort_order'] = $this->config->item('checkout_weight_sort_order');
			$data['checkout_weight_level']      = $this->config->item('checkout_weight_level');
			$data['checkout_weight_level_end']  = $this->config->item('checkout_weight_level_end');
		}
			
		$data['error'] = validation_errors();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
			
		$this->load->view('fee/checkout_weight', $data);
	}
	
	public function validate_checkout_weight_level()
	{	
		$this->lang->load('fee/checkout_weight');
				
		if($this->input->post('checkout_weight_level'))
		{
			$validated = true;
			
			$error_message = '';
			
			$checkout_weight_levels = $this->input->post('checkout_weight_level');
			
			foreach($checkout_weight_levels as $row => $checkout_weight_level)
			{
				$weight = $checkout_weight_level['weight'];
				$amount = $checkout_weight_level['amount'];
				
				if(!preg_match('/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/', $weight))
				{
					$error_message .= sprintf($this->lang->line('error_weight_row_format'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
				
				if(!preg_match('/^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$/', $amount))
				{
					$error_message .= sprintf($this->lang->line('error_amount_row_format'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkout_weight_level', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{	
			$this->form_validation->set_message('validate_checkout_weight_level', $this->lang->line('error_checkout_weight_level_required'));

			return false;
		}	
	}
}


