<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Square_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'square')); 
		
		$setting_data = array(		
			'code'	      => 'square',
			'key'	      => 'square_field',
			'value'	      => serialize(array('token')),
			'serialized'  => 1
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'square',
			'key'	      => 'square_status',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'square',
			'key'	      => 'square_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'square')); 
	}
	
	public function download($store_id)
	{
		$this->load->library('datetimer');
		$this->load->library('stamps');
		
		$this->lang->load('platform/square');
		
		$this->load->model('store/store_model');
		$this->load->model('catalog/product_model');
		
		$store = $this->store_model->get_store($store_id);
		
		$default_sale_status_id = $store['default_sale_status_id'];
		
		$setting      = unserialize($store['setting']);
		$token        = $setting['token'];
		$location_id  = $setting['location_id'];
		$recent_days  = $setting['recent_days'];
		$limit        = $setting['limit'];
		$order        = $setting['order'];
		
		$end_time     = $this->datetimer->current_datetime();
		$begin_time   = $this->datetimer->mins_days($end_time, $recent_days);
		
		$end_time     = $this->datetimer->to_ISO8601($end_time);
		$begin_time   = $this->datetimer->to_ISO8601($begin_time);
		
		$data = array(
			'token'       => $token,
			'location_id' => $location_id,
			'begin_time'  => $begin_time,
			'end_time'    => $end_time,
			'order'       => $order,
			'limit'       => $limit
		);
		
		$payments = $this->curl_request('payments', $data, 'GET');
		
		if(!$payments)
		{
			$msgs[] = array(
				'level'   => 2,
				'content' => $this->lang->line('error_server_response_error')
			);
			
			$result = array(
				'success' => false,
				'msgs'    => $msgs
			);
		}
		else if(isset($payments['errors']) && !empty($payments['errors']))
		{
			$msgs = array();
			
			foreach($payments['errors'] as $error)
			{
				$msgs[] = array(
					'level'   => 2,
					'content' => $error
				);
			}
			
			$result = array(
				'success' => false,
				'msgs'    => $msgs
			);
		}
		else
		{
			$sales = array();
			
			$msgs = array();
			
			foreach($payments as $payment)
			{
				$product_validated = true;
				
				$sale_products = array();
				
				$itemizations = $payment['itemizations'];
				
				if(!sizeof($itemizations))
				{
					$link = base_url(). 'platform/square/sale_detail?store_id=' . $store_id . '&payment_id=' . $payment['id'];
					
					$msgs[] = array(
						'level'   => 2,
						'content' => sprintf($this->lang->line('error_order_product_empty'), $link, $payment['id'])
					);
					
					$product_validated = false;
						
					continue;
				}
				
				foreach($itemizations as $itemization)
				{
					$item_detail = $itemization['item_detail'];
					
					$sale_products[] = array(
						'sku'        => (isset($item_detail['sku']))?$item_detail['sku']:null,
						'quantity'   => $itemization['quantity']	
					);
				}
				
				//exclude online transaction
				$device = $payment['device'];
				
				if(isset($device['name'])) 
				{
					$device_validated = true;
				}
				else
				{
					$device_validated = false;
				}
				
				if($product_validated && $device_validated)
				{
					$date_added = $this->datetimer->to_standard($payment['created_at']);
			
					$total = $payment['total_collected_money']['amount'] / 100;
			
					$sales[] = array(
						'tracking'          => '',
						'note'              => '',
						'shipping_provider' => '',
						'shipping_service'  => '',
						'total'             => $total,
						'store_id'          => $store_id,
						'store_sale_id'     => $payment['id'],
						'status_id'         => $default_sale_status_id,
						'name'              => '',
						'street'            => '',
						'street2'           => '',
						'city'              => '',
						'state'             => '',
						'country'           => '',
						'zipcode'           => '',
						'phone'             => '',
						'date_added'        => $date_added,
						'sale_products'     => $sale_products
					);
				}
			}
			
			$result = array(
				'success' => true,
				'msgs'    => $msgs,
				'sales'   => $sales
			);
		}
		
		return $result;	
	}
	
	public function get_payment($store_id, $payment_id)
	{
		$this->load->model('store/store_model');

		$store = $this->store_model->get_store($store_id);
		
		$setting      = unserialize($store['setting']);
		$token        = $setting['token'];
		$location_id  = $setting['location_id'];
		
		$data = array(
			'token'       => $token,
			'location_id' => $location_id
		);
		
		$payment = $this->curl_request('payments/' . $payment_id, $data, 'GET');
		
		if(!$payment)
		{
			return false;
		}
		else if(isset($payments['errors']) && !empty($payments['errors']))
		{
			return false;
		} 
		else 
		{
			return $payment;
		}
	}
	
	public function curl_request($api, $data, $type = 'GET') 
	{		
		$token        = $data['token'];
		$location_id  = $data['location_id'];
				
		$url = 'https://connect.squareup.com/v1/';
		
		if($api) 
		{
			$url .= (strpos($api, 'customers') === 0) ? $api : $location_id . '/' . $api;
		}
		
		if ($type == 'GET' || $type == 'DELETE') 
		{
			$curl = curl_init($url . '?' . http_build_query($data));
		} 
		elseif ($type == 'POST') 
		{
			$curl = curl_init($url);
			curl_setopt($curl, CURLOPT_POST, true);
			curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
		} 
		else 
		{
			$curl = curl_init($url);
			curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $type);
			curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
		}
		
		curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type: application/json' , 'Authorization: Bearer ' . $token));
		
		curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 30);
		curl_setopt($curl, CURLOPT_FORBID_REUSE, true);
		curl_setopt($curl, CURLOPT_FRESH_CONNECT, true);
		curl_setopt($curl, CURLOPT_HEADER, false);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($curl, CURLOPT_TIMEOUT, 30);
				
		$response = json_decode(curl_exec($curl), true);
		
		if(curl_error($curl)) 
		{
			$response['errors'][] = 'CURL ERROR: ' . curl_errno($curl) . '::' . curl_error($curl);
		}
		
		if(!empty($response['errors'])) 
		{
			$response['errors'] = array();
			
			foreach ($response['errors'] as $error) 
			{
				$response['errors'][] = $error['detail'];
			}			
		}
		
		curl_close($curl);
		
		return $response;
	}
}
