<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Store_sale_sync_download extends CI_Controller 
{
	public function download($store_id)
	{
		$this->lang->load('store/store_sale_sync');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('store/store_sale_sync_model');
		$this->load->model('store/store_sync_history_model');
		
		$store = $this->store_model->get_store($store_id);	
		
		$code = $store['platform'];
		
		$this->load->model('platform/'. $code .'_model');

		$result = $this->{$code . '_model'}->download($store_id);
		
		if($result['success']) 
		{	
			$sales = $result['sales'];
			
			$total   = count($sales);
			$success = 0;
			$warning = 0;
			$fail    = 0;
			
			$messages = array();
			
			foreach($sales as $sale)
			{					
				$store_sale_id = $sale['store_sale_id'];
				
				$sale_info = $this->sale_model->get_sale_by_store_sale_id($store_sale_id);
				
				if(!$sale_info)
				{	
					$product_validated = true;
						
					foreach($sale['sale_products'] as $sale_product)
					{	
						if(isset($sale_product['sku']))
						{
							$sku = $sale_product['sku'];
							
							$product_info = $this->product_model->get_product_by_sku($sku);
						
							if(!$product_info)
							{
								$link = base_url(). 'store/store_sale_sync/sale_detail?store_sale_id=' . $store_sale_id;
								
								$messages[] = array(
									'level'   => 2,
									'content' => sprintf($this->lang->line('error_store_sale_product_sku_not_found'), $link, $store_sale_id, $sku)
								);	
									
								if($product_validated) 
									$product_validated = false;
								
								continue;
							}
						}
						else
						{
							$name = $sale_product['name'];
							
							$link = base_url(). 'store/store_sale_sync/sale_detail?store_sale_id=' . $store_sale_id;
							
							$messages[] = array(
								'level'   => 2,
								'content' => sprintf($this->lang->line('error_store_sale_product_sku_not_set'), $link, $store_sale_id, $name)
							);	
								
							if($product_validated) 
								$product_validated = false;
							
							continue;
						}
					}
					
					if($product_validated)
					{
						$sale_products = array();
						
						$sale_product_params = array();
						
						foreach($sale['sale_products'] as $sale_product)
						{
							$sku = $sale_product['sku'];
						
							$product_info = $this->product_model->get_product_by_sku($sku);
							
							$sale_products[] = array(
								'product_id' => $product_info['id'],
								'quantity'   => $sale_product['quantity']
							);
							
							$sale_product_params[$product_info['id']] = $sale_product['quantity'];
						}
						
						$volume = $this->sale_model->get_sale_products_volume($sale_product_params);
						$weight = $this->sale_model->get_sale_products_weight($sale_product_params);

						$sale['length']           = $volume['length'];
						$sale['width']            = $volume['width'];
						$sale['height']           = $volume['height'];
						$sale['weight']           = $weight['weight'];
						
						$sale['length_class_id']  = $volume['length_class_id'];
						$sale['weight_class_id']  = $weight['weight_class_id'];
						
						$sale['sale_products'] = $sale_products;
						
						$this->sale_model->add_sale($sale);
						
						$success++;
					}
					else 
					{
						$fail++;
					}
				}
				else
				{
					$sale_id = $sale_info['id'];
					
					$link = base_url(). 'sale/sale/edit?sele_id=' . $sale_id;
					
					$messages[] = array(
						'level'   => 1,
						'content' => sprintf($this->lang->line('error_store_sale_id_exist'), $link, $store_sale_id)
					);	
					
					$warning++;
				}
			}
			
			if($fail > 0)
			{
				$messages[] = array(
					'level'   => 2,
					'content' => sprintf($this->lang->line('text_import_total'), $total, $success, $warning, $fail)
				);	
			}
			else if($warning > 0)
			{
				$messages[] = array(
					'level'   => 1,
					'content' => sprintf($this->lang->line('text_import_total'), $total, $success, $warning, $fail)
				);	
			}
			else
			{
				$messages[] = array(
					'level'   => 0,
					'content' => sprintf($this->lang->line('text_import_total'), $total, $success, $warning, $fail)
				);	
			}
				
			$messages = array_merge($result['messages'], $messages);
			
			//log
			if($fail == 0) 
			{
				$status = 1;
			}
			else if($warning > 0)
			{
				$status = 2;
			}
			else 
			{
				$status = 3;
			}
			
			$sync_history_data = array(
				'store_id'   => $store_id,
				'type'       => 0,
				'status'     => $status,
				'messages'   => $messages
			);
			
			$this->store_sync_history_model->add_store_sync_history($sync_history_data);
			
			if($fail == 0)
			{
				$outdata = array(
					'success'  => true,
					'messages' => $messages
				);
			}
			else
			{	
				$outdata = array(
					'success'  => false,
					'messages' => $messages
				);
			}
		}
		else
		{
			$messages[] = array(
				'level'   => 2,
				'content' => $this->lang->line('error_not_import_alert')
			);
			
			$messages = array_merge($result['messages'], $messages);
			
			$sync_history_data = array(
				'store_id'   => $store_id,
				'type'       => 0,
				'status'     => 2,
				'messages'   => $messages
			);
			
			$this->store_sync_history_model->add_store_sync_history($sync_history_data);
			
			$outdata = array(
				'success'  => false,
				'messages' => $messages
			);
		}
		
		return $outdata;
	}
	
	public function download_ajax()
	{
		if($this->input->get('store_id'))
		{
			$store_id = $this->input->get('store_id');
		
			$outdata = $this->download($store_id);
		
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


