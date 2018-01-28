<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Opencart_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'opencart')); 
		
		$setting_data = array(		
			'code'	      => 'opencart',
			'key'	      => 'opencart_field',
			'value'	      => serialize(array('token')),
			'serialized'  => 1
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'opencart',
			'key'	      => 'opencart_status',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'opencart',
			'key'	      => 'opencart_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'opencart')); 
	}
	
	public function download($store_id)
	{
		$this->lang->load('platform/opencart');
		
		$this->load->model('store/store_model');
		$this->load->model('catalog/product_model');
		
		$store = $this->store_model->get_store($store_id);
		
		$default_sale_status_id = $store['default_sale_status_id'];
		
		$setting    = unserialize($store['setting']);
		$token      = $setting['token'];
		$start      = $setting['start'];
		$limit      = $setting['limit'];
				
		$url = sprintf("https://activape.com/index.php?route=api/v2/order&token=%s&start=%s&limit=%s", $token, $start, $limit); 

        $connection = curl_init(); 
        curl_setopt($connection, CURLOPT_URL, $url);
        curl_setopt($connection, CURLOPT_RETURNTRANSFER, 1); 
		curl_setopt($connection, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($connection); 
				
		$response = json_decode($response);
        curl_close($connection); 

		//server response error
		if(!$response)
		{
			$msgs[] = array(
				'level'   => 2,
				'content' => $this->lang->line('error_server_response_error')
			);
			
			$result = array(
				'success' => false,
				'msgs'    => $msgs
 			);
			
			return $result;
		}
		
		//response not success
		if(!$response->success)
		{
			$msgs[] = array(
				'level'   => 2,
				'content' => $response->msg
			);
			
			$result = array(
				'success' => false,
				'msgs'    => $msgs
 			);
			
			return $result;
		}
		
		//response success
		if($response->success)
		{
			$orders_data = $response->orders;
			
			$sales = array();
			
			$validated = true;
			
			$msgs = array();
			
			foreach($orders_data as $order_data)
			{
				$order_id = $order_data->order_id;
				
				$sale_products = array();
				
				$product_validated = true;
				
				foreach($order_data->order_products as $order_product) 
				{
					$sku = $order_product->sku;
					
					//sku empty
					if(empty($sku)) 
					{
						$msgs[] = array(
							'level'   => 2,
							'content' => sprintf($this->lang->line('error_order_sku_empty'), $order_id)
						);
						
						$product_validated = false;
						continue;
					}
					
					$product = $this->product_model->get_product_by_sku($sku);
					
					if($product_validated) {
						$sale_products[] = array(
							'sku'       => $sku,
							'quantity'  => $order_product->quantity
						);	
					}
				}
				
				if($product_validated)
				{
					$sales[] = array(
						'name'              => $order_data->name,
						'street'            => $order_data->address1,
						'street2'           => $order_data->address2,
						'city'              => $order_data->city,
						'state'             => $order_data->zone,
						'country'           => $order_data->country,
						'zipcode'           => $order_data->postcode,
						'phone'             => $order_data->telephone,
						'date_added'        => $order_data->date_added,
						'total'             => $order_data->total,
						'tracking'          => '',
						'note'              => '',
						'shipping_provider' => '',
						'shipping_service'  => '',
						'store_id'          => $store_id,
						'store_sale_id'     => $order_data->order_id,
						'status_id'         => $default_sale_status_id,
						'sale_products'     => $sale_products
					);
				}
				else 
				{
					if($validated) 
						$validated = false;
				}
			}
			
			if($validated)
			{
				$result = array(
					'success' => true,
					'msgs'    => $msgs,
					'sales'   => $sales
				);
			}
			else
			{
				$result = array(
					'success' => false,
					'msgs'    => $msgs
				);
			}

			return $result;			
		}
	}
}
