<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Label extends MX_Controller 
{
	public function index()
	{	
		//get queue 
		$queues = $this->xxxx_model->get_queue();	
		
		foreach($queues as $queue)
		{
			$sale_id = $queue
			
			$sale = $this->sale_model->get_sale();	
			
			if($sale['tracking'] ? emppty) {
				$server_code  = $sale .....
				
				$this->sale_model->print();	

			}
		}
	}

}


