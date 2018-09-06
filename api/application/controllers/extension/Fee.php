<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fee extends CI_Controller 
{
	public function run_inventory()
	{
		$this->load->model('extension/extension_model');

		$fees = $this->extension_model->get_installed('fee');
	
		if($fees)
		{
			foreach($fees as $key => $code) 
			{
				if($this->config->item($code . '_type') == 'inventory')
				{
					if($this->config->item($code . '_status'))
					{
						
						$this->load->model('fee/'. $code .'_model');

						$this->{$code . '_model'}->run();
					}
				}
			}
		}
	}
}


