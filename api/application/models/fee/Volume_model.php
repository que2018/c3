<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Volume_model extends CI_Model
{		
	public function run()
	{
		$this->lang->load('fee/volume');

		$this->load->model('client/client_model');
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('finance/transaction_model');
		$this->load->model('setting/length_class_model');

		$clients = $this->client_model->get_clients();	
		
		if($clients)
		{
			foreach($clients as $client)
			{
				$client_id = $client['id'];
				
				$inventories = $this->inventory_model->get_inventories_by_client($client_id);
				
				if($inventories)
				{
					$volume_total = 0;
					
					foreach($inventories as $inventory)
					{
						$product_id = $inventory['product_id'];
						
						$quantity = $inventory['quantity'];

						$product_info = $this->product_model->get_product($product_id);
						
						$length = $this->length_class_model->to_inch($product_info['length_class_id'], $product_info['length']);
						$width  = $this->length_class_model->to_inch($product_info['length_class_id'], $product_info['width']);
						$height = $this->length_class_model->to_inch($product_info['length_class_id'], $product_info['height']);

						$volume_total += $length * $width * $height * $quantity;
					}
								
					$amount = 0;
					
					$level_found = false;
					
					$volume_levels = $this->config->item('volume_level');
				
					foreach($volume_levels as $volume_level)
					{
						if($volume_total < $volume_level['volume'])
						{
							$amount = $volume_level['amount'] * $volume_total;
							
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
						$amount = $this->config->item('volume_level_end') * $volume_total;
					}
					
					$transaction_data = array(					
						'client_id'		  => $client_id,
						'type'		      => 'inventory',
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
