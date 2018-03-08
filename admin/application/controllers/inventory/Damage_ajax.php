<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Damage_ajax extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('inventory/damage');
		
		$this->load->model('inventory/damage_model');
	}
	
	function update_quantity()
	{
		$damage_id  = $this->input->post('damage_id');
		$quantity   = $this->input->post('quantity');
			
		$result = $this->damage_model->set_damage_quantity($damage_id, $quantity);
		
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


