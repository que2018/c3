<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Todo_list extends MX_Controller 
{
	public function index()
	{
		$this->load->view('todo_list');
	}
}
