<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Balance extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->load->library('currency');
	
		$this->lang->load('finance/balance');
		
		$this->load->model('finance/balance_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/finance/balance.css');
		
		$this->header->set_title($this->lang->line('text_title'));

		$balance = $this->balance_model->get_balance();	
	
		$data['amount'] = $this->currency->format($balance['amount']);
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
	
		$this->load->view('finance/balance', $data);
	}
}


