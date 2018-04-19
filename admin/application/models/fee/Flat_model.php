<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Flat_model extends CI_Model
{		
	public function install()
	{
		
	}
	
	public function uninstall() 
	{
		
	}
	
	public function run()
	{
		$this->load->model('client/client_model');
		$this->load->model('finance/transaction_model');
		
		$clients = $this->client_model->get_clients();	
		
		if($clients)
		{
			foreach($clients as $client)
			{
				$transaction_data = array(					
					'client_id'		  => $client['id'],
					'type'		      => 'location',
					'type_id'         => '',
					'cost'   		  => $this->config->item('flat_amount'),
					'markup'   		  => 0,
					'amount'   		  => $this->config->item('flat_amount'),
					'comment'         => ''
				);
				
				$this->transaction_model->add_transaction($transaction_data); 					
			}
		}
	}
}
