<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Contact extends CI_Controller {

	public function index()
	{	
		$this->lang->load('contact/contact');
		
		$this->load->library('mail');
		$this->load->library('form_validation');
		
		$data['success'] = $this->session->flashdata('success');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required');
		$this->form_validation->set_rules('enquiry', $this->lang->line('text_enquiry'), 'required');
		
		if($this->form_validation->run() == true)
		{	
			$mail = new Mail();
			$mail->protocol = 'smtp';
			$mail->parameter = '';
			$mail->smtp_hostname = $this->config->item('config_smtp_hostname');
			$mail->smtp_username = $this->config->item('config_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->item('config_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->item('config_smtp_port');
			$mail->smtp_timeout = $this->config->item('config_smtp_timeout');

			$mail->setTo($this->config->item('config_smtp_username'));
			$mail->setFrom($this->config->item('config_smtp_username'));
			$mail->setSender(html_entity_decode($this->input->post('name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode($this->lang->line('text_contact_enquiry'), ENT_QUOTES, 'UTF-8'));
			$mail->setText($this->input->post('enquiry'));
			$mail->send();
			
			$this->session->set_flashdata('success', $this->lang->line('text_email_send_success'));
			
			redirect(base_url() . 'contact/contact', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{	
			$data['name']     = $this->input->post('name');
			$data['email']    = $this->input->post('email');
			$data['enquiry']  = $this->input->post('enquiry');
		}
		else
		{
			$data['name']     = '';
			$data['email']    = '';
			$data['enquiry']  = '';
		}
		
		$data['error'] = validation_errors();
	
		$this->load->view('common/header');
		$this->load->view('contact/contact', $data);
		$this->load->view('common/footer');
	}
}


