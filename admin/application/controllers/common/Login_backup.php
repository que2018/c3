<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {
	private $error = array();

	function __construct()
	{
		parent::__construct();

		$this->lang->load('common/login');
		$this->load->library('form_validation');
		$this->load->helper(array('url','language'));
	}

	public function index()
	{
		if($this->ion_auth->logged_in()) 
		{
			redirect(base_url().'common/dashboard', 'refresh');
		}
		
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if($this->form_validation->run() == true)
		{			
			$remember = (bool)$this->input->post('remember');
			
			if($this->ion_auth->login($this->input->post('username'), $this->input->post('password'), $remember))
			{
				$this->session->set_flashdata('success', str_replace("<p>","",str_replace("</p>","",$this->ion_auth->messages())));

				if($this->input->post('redirect') && (strpos($this->input->post('redirect'), HTTP_SERVER) === 0 || strpos($this->input->post('redirect'), HTTPS_SERVER) === 0 )) 
				{
					redirect($this->input->post('redirect'), 'refresh');
				} 
				else if($this->session->flashdata('redirect')) 
				{
					redirect($this->session->flashdata('redirect'), 'refresh');
				} 
				else 
				{
					redirect(base_url().'common/dashboard', 'refresh');
				}				
			}
			else
			{
				if($this->session->flashdata('redirect')) 
				{
					$this->session->set_flashdata('redirect', $this->session->flashdata('redirect'));
				}
				
				foreach ($this->ion_auth->errors() as $error) 
				{
					$this->session->set_flashdata('error_warning', $this->lang->line($error));
					break;
				}
				
				redirect(base_url().'common/login', 'refresh');
			}
		}
				
		if($this->session->flashdata('redirect')) 
		{
			$this->session->set_flashdata('redirect', $this->session->flashdata('redirect'));
		}

		if($this->session->flashdata('error_warning')) 
		{
			$data['error_warning'] = $this->session->flashdata('error_warning');
		} 
		else if(isset($this->error['warning'])) 
		{
			$data['error_warning'] = $this->error['warning'];
		} 
		else 
		{
			$data['error_warning'] = '';
		}

		if($this->session->flashdata('success')) 
		{
			$data['success'] = $this->session->flashdata('success');
		} 
		else 
		{
			$data['success'] = '';
		}

		$data['action'] = base_url().'common/login';

		if($this->input->post('username')) 
		{
			$data['username'] = $this->input->post('username');
		} 
		else 
		{
			$data['username'] = '';
		}

		if($this->input->post('password')) 
		{
			$data['password'] = $this->input->post('password');
		} 
		else 
		{
			$data['password'] = '';
		}

		if($this->input->get('redirect')) 
		{
			$redirect = $this->input->get('redirect');
			$data['redirect'] = $redirect;
		} 
		else 
		{
			$data['redirect'] = '';
		}

		$data['forgotten'] = '';

		$this->load->view('common/login', $data);
	}
}
