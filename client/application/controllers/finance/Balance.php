<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Balance extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('finance/balance');
		
		$this->load->model('finance/balance_model');
	}
	
	function index()
	{	
		$this->load->library('currency');
	
		$balance = $this->balance_model->get_balance();	
	
		$data['amount'] = $this->currency->format($balance['amount']);
	
		$this->load->view('common/header');
		$this->load->view('finance/balance', $data);
		$this->load->view('common/footer');
	}
}


