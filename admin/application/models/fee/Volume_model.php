<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Volume_model extends CI_Model
{		
	public function install()
	{
		$this->load->model('setting/setting_model');
		
		$data = array(
			'volume_type'       => 'inventory',
			'volume_level'      => array(),
			'volume_status'     => 0,
			'volume_sort_order' => 0
		);
			
		$this->setting_model->edit_setting('volume', $data);
	}
	
	public function uninstall() 
	{
		$this->load->model('setting/setting_model');
		
		$this->setting_model->delete_setting('volume');
	}
	
	public function run()
	{
		$this->load->model('client/client_model');
		$this->load->model('catalog/product_model');
		$this->load->model('finance/transaction_model');
		
		$clients = $this->client_model->get_clients();	
		
		if($clients)
		{
			foreach($clients as $client)
			{
				$client_id = $client['id'];
				
				$products = $this->product_model->get_products_by_client($client_id);

				$amount = 0;
				
				if($products)
				{
					foreach($products as $product)
					{
						$volume = $product['length'] * $product['width'] * $product['height'];
					}
						
					$amount += $volume * $this->config->item('volume_amount');
				
					$transaction_data = array(					
						'client_id'		  => $client_id,
						'type'		      => 'location',
						'type_id'         => '',
						'cost'   		  => 0,
						'markup'   		  => $amount,
						'amount'   		  => $amount,
						'comment'         => ''
					);
					
					$this->transaction_model->add_transaction($transaction_data);
				}				
			}
		}
	}
}
