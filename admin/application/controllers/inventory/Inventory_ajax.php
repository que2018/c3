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
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function clear_inventory()
	{		
		$this->load->model('inventory/inventory_model');
			
		$result = $this->inventory_model->clear_inventory();
		
		$outdata = array(
			'success'  => ($result)?true:false
		);
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
}


