<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logout extends CI_Controller {

	public function index()
	{
		$this->auth->logout();
		
		redirect(base_url().'common/login', 'refresh');
	}
}

