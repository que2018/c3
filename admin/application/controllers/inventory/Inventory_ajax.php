<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_ajax extends CI_Controller 
{
	public function update_quantity()
	{		
		$this->load->model('inventory/inventory_model');
		
		$inventory_id  = $this->input->post('inventory_id');
		$quantity      = $this->input->post('quantity');
			
		$result = $this->inventory_model->set_inventory_quantity($inventory_id, $quantity);
		
		$outdata = array(
			'success'  => ($result)?true:false
		);
		
		echo json_encode($outdata);
	}
}


