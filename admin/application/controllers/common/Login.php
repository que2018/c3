<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct()
	{
		parent::__construct();		
	}

	public function index()
	{
		$this->lang->load('common/login');
		
		$this->load->library('form_validation');
				
		if($this->auth->is_logged()) 
		{
			redirect(base_url() . 'common/dashboard', 'refresh');
		}
		
		$this->form_validation->set_rules('username', $this->lang->line('text_username'), 'required');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');

		$data = array(
			'username'  => $this->input->post('username'),
			'password'  => $this->input->post('password')
		);
		
		if($this->form_validation->run() == true)
		{	
			if($this->auth->login($data['username'], $data['password']))
			{
				$redirect_url = $this->session->userdata('redirect_url');
				
				if(isset($redirect_url))
				{
					redirect($redirect_url, 'refresh');
				}
				else
				{
					redirect(base_url() . 'common/dashboard', 'refresh');
				}				
			} 
			else 
			{
				$data['error'] = $this->lang->line('error_invalid_username_or_password');
			}				
		}
		else 
		{
			$data['error'] = validation_errors();
		}
		
		if($this->input->get('redirect')) 
		{
			$data['redirect'] = $this->input->get('redirect');
		} 
		else 
		{
			$data['redirect'] = '';
		}
		
		$this->load->view('common/login', $data);
	}
}
