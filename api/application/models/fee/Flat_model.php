<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Flat_model extends CI_Model
{		
	public function run()
	{
		$this->lang->load('fee/flat');

		$this->load->model('client/client_model');
		$this->load->model('finance/transaction_model');

		$clients = $this->client_model->get_clients();	
		
		if($clients)
		{
			foreach($clients as $client)
			{
				$client_id = $client['id'];
				
				$transaction_data = array(					
					'client_id'		  => $client_id,
					'type'		      => 'location',
					'type_id'         => '',
					'cost'   		  => 0,
					'markup'   		  => $this->config->item('flat_amount'),
					'amount'   		  => $this->config->item('flat_amount'),
					'comment'         => sprintf($this->lang->line('text_flat_fee_note'), date('Y-m-d'))
				);
				
				$this->transaction_model->add_transaction($transaction_data);			
			}
		}
	}
}
