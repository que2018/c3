<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Volume_model extends CI_Model
{		
	public function run()
	{
		$this->lang->load('fee/volume');

		$this->load->model('client/client_model');
		$this->load->model('catalog/product_model');
		$this->load->model('finance/transaction_model');
		$this->load->model('setting/length_class_model');

		$clients = $this->client_model->get_clients();	
		
		if($clients)
		{
			$volume_levels = $this->config->item('volume_level');
			
			foreach($clients as $client)
			{
				$client_id = $client['id'];
				
				$products = $this->product_model->get_products_by_client($client_id);

				$amount = 0;
				
				$level_found = false;
				
				if($products)
				{
					foreach($products as $product)
					{
						$length = $this->length_class_model->to_config(1, $product['length']);
						$width  = $this->length_class_model->to_config(1, $product['width']);
						$height = $this->length_class_model->to_config(1, $product['height']);

						$volume = $length * $width * $height;
					}
					
					foreach($volume_levels as $volume_level)
					{
						if($volume < $volume_level['volume'])
						{
							$amount = $volume_level['amount'] * $volume;
							
							$level_found = true;
							
							break;
						}
						else
						{
							continue;
						}
					}
					
					if(!$level_found)
					{
						$amount = $this->config->item('volume_level_end') * $volume;
					}
					
					$transaction_data = array(					
						'client_id'		  => $client_id,
						'type'		      => 'location',
						'type_id'         => '',
						'cost'   		  => 0,
						'markup'   		  => $amount,
						'amount'   		  => $amount,
						'comment'         => sprintf($this->lang->line('text_volume_fee_note'), date('Y-m-d'))
					);
					
					$this->transaction_model->add_transaction($transaction_data);
				}				
			}
		}
	}
}
