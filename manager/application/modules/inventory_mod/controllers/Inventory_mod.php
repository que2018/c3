<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inventory_mod extends MX_Controller 
{
	public function clear()
	{		
		$this->load->language('inventory_mod');
		
		$data['reload_url'] = base_url() . 'inventory/inventory_batch/reload';

		$this->load->view('inventory_mod_clear', $data);
	}
}
