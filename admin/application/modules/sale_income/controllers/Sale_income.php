<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sale_income extends MX_Controller 
{
	public function index()
	{
		$this->load->model('sale_income_model');
		
		$this->sale_income_model->test();

		
		$data = array();
		
		$this->load->view('sale_income', $data);
	}
}
