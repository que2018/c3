<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
		$this->lang->load('common/login');
		
		$this->load->library('form_validation');
		
		$this->load->model('setting/language_model');
				
		if($this->auth->is_logged()) 
		{
			redirect(base_url() . 'common/dashboard', 'refresh');
		}
		
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');

		$data = array(
			'email'     => $this->input->post('email'),
			'password'  => $this->input->post('password'),
			'idiom'     => $this->input->post('idiom')
		);
		
		if($this->form_validation->run() == true)
		{	
			if($this->auth->login($data['email'], $data['password']))
			{
				$this->session->set_userdata('idiom', $data['idiom']);

				$redirect_url = $this->session->userdata('redirect_url');
				
				/* if(isset($redirect_url))
				{
					redirect($redirect_url, 'refresh');
				}
				else
				{
					redirect(base_url() . 'common/dashboard', 'refresh');
				} */			
				
				redirect(base_url() . 'common/dashboard', 'refresh');
			} 
			else 
			{
				$data['error'] = $this->lang->line('error_invalid_username_or_password');
			}				
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{	
			$data['email']     = $this->input->post('email');
			$data['password']  = $this->input->post('password');
			$data['idiom']     = $this->input->post('idiom');
		}
		else
		{
			$data['email']     = '';
			$data['password']  = '';
			$data['idiom']     = $this->config->item('config_idiom');
		}
		
		if($this->input->get('redirect')) 
		{
			$data['redirect'] = $this->input->get('redirect');
		} 
		else 
		{
			$data['redirect'] = '';
		}
		
		//languages
		$languages = $this->language_model->get_languages();
		
		$data['languages'] = array();
		
		if($languages) 
		{
			foreach($languages as $language)
			{
				$data['languages'][] = array(
					'code'     => $language['code'],
					'name'     => $language['name']
				);
			}
		}
		
		$data['error'] = validation_errors();
				
		$this->load->view('common/login', $data);
	}
}
