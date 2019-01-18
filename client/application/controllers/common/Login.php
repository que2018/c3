<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('common/login');
		
		$this->load->library('form_validation');
		
		$this->load->model('tool/image_model');
		$this->load->model('setting/language_model');
	
		if($this->auth->is_logged()) 
		{
			redirect(base_url() . 'catalog/product', 'refresh');
		}
		
		$this->form_validation->set_rules('username', $this->lang->line('text_username'), 'required');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');

		$data = array(
			'username'    => $this->input->post('username'),
			'password'    => $this->input->post('password'),
			'language_id' => $this->input->post('language_id')
		);
		
		if($this->form_validation->run() == true)
		{	
			if($this->auth->login(trim($data['username']), trim($data['password'])))
			{
				$this->session->set_userdata('language_id', $data['language_id']);

				redirect(base_url() . 'catalog/product', 'refresh');
			} 
			else 
			{
				$data['error'] = $this->lang->line('error_invalid_username_or_password');
			}				
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{	
			$data['username']     = $this->input->post('username');
			$data['password']     = $this->input->post('password');
			$data['language_id']  = $this->input->post('language_id');
		}
		else
		{
			$data['username']     = '';
			$data['password']     = '';
			$data['language_id']  = $this->config->item('config_client_language_id');
		}
		
		//logo
		if(is_file(IMAGEPATH . $this->config->item('config_logo'))) 
		{
			$data['logo'] = $this->image_model->resize($this->config->item('config_logo'), 150, 150);
		} 
		else
		{
			$data['logo'] = false;
		}
		
		//languages
		$languages = $this->language_model->get_languages();
		
		$data['languages'] = array();
		
		if($languages) 
		{
			foreach($languages as $language)
			{
				$data['languages'][] = array(
					'language_id'  => $language['language_id'],
					'name'         => $language['name']
				);
			}
		}
				
		$data['error'] = validation_errors();
		
		$this->load->view('common/login', $data);
	}
}
