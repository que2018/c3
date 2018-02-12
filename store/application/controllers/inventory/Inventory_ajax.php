<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_ajax extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('inventory/inventory');
		
		$this->load->model('inventory/inventory_model');
	}
	
	function update_quantity()
	{
		$inventory_id  = $this->input->post('inventory_id');
		$quantity      = $this->input->post('quantity');
			
		$result = $this->inventory_model->set_inventory_quantity($inventory_id, $quantity);
		
		if($result)
		{
			$outdata = array(
				'success'  => true
			);
		}
		else
		{
			$outdata = array(
				'success'  => false
			);
		}
		
		echo json_encode($outdata);
	}
}


