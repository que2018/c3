<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Flat_model extends CI_Model
{		
	public function install()
	{
		$this->load->model('setting/setting_model');
		
		$data = array(	
			'flat_type'       => 'inventory',		
			'flat_amount'     => 0,
			'flat_status'     => 0,
			'flat_sort_order' => 0
		);
			
		$this->setting_model->edit_setting('flat', $data);
	}
	
	public function uninstall() 
	{
		$this->load->model('setting/setting_model');
		
		$this->setting_model->delete_setting('flat');
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
