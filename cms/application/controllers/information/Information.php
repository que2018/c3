<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Information extends CI_Controller {

	public function index()
	{	
		$this->load->model('information/information_model');
	
		$data['informations'] = array();
	
		$informations = $this->information_model->get_informations();	
	
		if($informations) 
		{
			foreach($informations as $information)
			{	
				if($information['status']) 
				{
					$data['informations'][] = array(
						'information_id'  => $information['information_id'],
						'redirect'        => $information['redirect'],
						'title'       	  => $information['title'],
					);
				}
			}
		}
		
		if($this->input->get('information_id'))
		{
			$information_id = $this->input->get('information_id');
		}
		else
		{
			$information_id = $this->config->item('config_information_id');
		}
		
		$information = $this->information_model->get_information($information_id);	
		
		$data['content'] = html_entity_decode($information['content'], ENT_QUOTES, 'UTF-8');
		
		$this->load->view('common/header');
		$this->load->view('information/information', $data);
		$this->load->view('common/footer');
	}
}


