<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Wish_model extends CI_Model
{		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'wish')); 
		
		$setting_data = array(		
			'code'	      => 'wish',
			'key'	      => 'wish_field',
			'value'	      => serialize(array('token')),
			'serialized'  => 1
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'wish',
			'key'	      => 'wish_status',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'wish',
			'key'	      => 'wish_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'wish')); 
	}
	
	public function download($store_id)
	{
		$this->load->library('datetimer');
		
		$this->lang->load('platform/wish');
	
		$this->load->model('store/store_model');
		$this->load->model('catalog/product_model');
		
		$store = $this->store_model->get_store($store_id);
		
		$default_sale_status_id = $store['default_sale_status_id'];
		
		$setting      = unserialize($store['setting']);
		
		$token        = $setting['token'];
		$recent_days  = $setting['recent_days'];
		$start        = 0;
		$limit        = $setting['download_limit'];
		
		$since = urlencode(date('Y-m-d', mktime(0, 0, 0, date('m'), date('d') - ($recent_days - 1), date('Y'))));
		
		$url = sprintf("https://merchant.wish.com/api/v2/order/multi-get?access_token=%s&start=%s&limit=%s&since=%s", $token, $start, $limit, $since); 
		
        $connection = curl_init(); 
        curl_setopt($connection, CURLOPT_URL, $url);
        curl_setopt($connection, CURLOPT_RETURNTRANSFER, 1); 
        $response = curl_exec($connection); 
		$response = json_decode($response);
        curl_close($connection);      
				
		if(!$response)
		{
			$messages[] = array(
				'level'   => 2,
				'content' => $this->lang->line('error_server_response_error')
			);
			
			$result = array(
				'success'  => false,
				'messages' => $messages
			);
		}
		else if($response->code != 0)
		{
			$messages[] = array(
				'level'   => 2,
				'content' => $response->message
			);
			
			$result = array(
				'success'  => false,
				'messages' => $messages
			);
		}
		else
		{
			$sales = array();
			
			$messages = array();
			
			if(!empty($response->data))
			{
				foreach($response->data as $store_order) 
				{
					$order = $store_order->Order;
					
					//sku missing
					$sku = $order->sku;
					
					if(empty($sku)) 
					{		
						$messages[] = array(
							'level'    => 2,
							'content'  => sprintf($this->lang->line('error_order_sku_missing'), $order->order_id)
						);
						
						continue;
					}
					
					//invalid order
					$state = $order->state;
					
					if(($state == 'REFUNDED') || ($state == 'REQUIRE_REVIEW'))
					{
						$messages[] = array(
							'level'    => 2,
							'content'  => sprintf($this->lang->line('error_order_invalid'), $order->order_id)
						);
						
						continue;
					}
					
					$order_products = array();
									
					$sale_products[] = array(
						'sku'	    => $order->sku,
						'quantity'  => $order->quantity
					);
					
					$sales[] = array(
						'tracking'          => '',
						'note'              => '',
						'shipping_provider' => '',
						'shipping_service'  => '',
						'total'             => (isset($order->order_total))?$order->order_total:0,
						'store_id'          => $store_id,
						'store_sale_id'     => (isset($order->order_id))?$order->order_id:'',
						'status_id'         => $default_sale_status_id,
						'name'              => (isset($order->ShippingDetail->name))?$order->ShippingDetail->name:'',
						'street'            => (isset($order->ShippingDetail->street_address1))?$order->ShippingDetail->street_address1:'',
						'street2'           => (isset($order->ShippingDetail->street_address2))?$order->ShippingDetail->street_address2:'',
						'city'              => (isset($order->ShippingDetail->city))?$order->ShippingDetail->city:'',
						'state'             => (isset($order->ShippingDetail->state))?$order->ShippingDetail->state:'',
						'country'           => (isset($order->ShippingDetail->country))?$order->ShippingDetail->country:'',
						'zipcode'           => (isset($order->ShippingDetail->zipcode))?$order->ShippingDetail->zipcode:'',
						'email'             => '',
						'phone'             => (isset($order->ShippingDetail->phone_number))?$order->ShippingDetail->phone_number:'',
						'date_added'        => (isset($order->order_time))?$order->order_time:'',
						'sale_products'     => $sale_products
					);
				}
			}
				
			$result = array(
				'success'  => true,
				'messages' => $messages,
				'sales'    => $sales
			);
		}
				
		return $result;
	}
	
	public function upload($store_id)
	{
		$this->lang->load('platform/wish');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		
		$store = $this->store_model->get_store($store_id);
		
		$setting = unserialize($store['setting']);
		$token   = $setting['token'];
		$limit   = $setting['upload_limit'];

		$filter_data = array(
			'filter_store_id' => $store_id,
			'sort'            => 'sale.date_added',
			'order'           => 'DESC',
			'start'           => 0,
			'limit'           => $limit
		);
			
		$sales = $this->sale_model->get_sales($filter_data);

		if($sales)
		{
			$success  = 0;
			$fail     = 0;
			$count    = count($sales);
			
			$messages = array();
			
			foreach($sales as $sale)
			{
				if($sale['tracking'])
				{
					$sale_id    	   = $sale['id'];
					$store_sale_id     = $sale['store_sale_id'];
					$tracking          = $sale['tracking'];
					$shipping_provider = $sale['shipping_provider'];
						
					$url = sprintf("https://merchant.wish.com/api/v2/order/fulfill-one?access_token=%s&id=%s&tracking_provider=%s&tracking_number=%s", $token, $store_sale_id, $shipping_provider, $tracking);

					$connection = curl_init(); 
					
					curl_setopt($connection, CURLOPT_URL, $url);
					curl_setopt($connection, CURLOPT_RETURNTRANSFER, 1); 
					$response = curl_exec($connection); 
					$response = json_decode($response);
					
					curl_close($connection);  
					
					if($response->code == 0)
					{
						$success ++;
						
						$messages[] = array(
							'level'    => 0,
							'content'  => sprintf($this->lang->line('text_wish_sync_tracking_success'), $sale_id)
						);
					}
					else
					{
						$fail ++;
						
						$messages[] = array(
							'level'    => 2,
							'content'  => sprintf($this->lang->line('error_wish_sync_tracking_error'), $sale_id, $response->message)
						);	
					}
				}
			}
			
			if($fail == 0)
			{
				$messages[] = array(
					'level'    => 0,
					'content'  => sprintf($this->lang->line('text_wish_sync_tracking_note'), $count, $success, $fail)
				);	
			}
			else
			{
				$messages[] = array(
					'level'    => 2,
					'content'  => sprintf($this->lang->line('text_wish_sync_tracking_note'), $count, $success, $fail)
				);	
			}
					
			if($fail > 0)
			{
				$result = array(
					'success'   => false,
					'messages'  => $messages
				);
			}
			else
			{
				$result = array(
					'success'   => true,
					'messages'  => $messages
				);
			}
			
			
		}
		else
		{
			$messages[] = array(
				'level'    => 0,
				'content'  => $this->lang->line('text_wish_no_tracking_need_sync')
			);
			
			$result = array(
				'success'   => true,
				'messages'  => $messages
			);
		}
		
		return $result;
	}
}
