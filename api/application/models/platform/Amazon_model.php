<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Amazon_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
		
		$this->lang->load('platform/amazon');
	}	
		
	public function install()
	{
		$this->db->delete('setting', array('code' => 'amazon')); 
		
		$setting_data = array(		
			'code'	      => 'amazon',
			'key'	      => 'amazon_field',
			'value'	      => serialize(array('Dev Id', 'App Id', 'Cert Id', 'Username', 'Site Id', 'Token')),
			'serialized'  => 1
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'amazon',
			'key'	      => 'amazon_status',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
		
		$setting_data = array(		
			'code'	      => 'amazon',
			'key'	      => 'amazon_sort_order',
			'value'	      => '0',
			'serialized'  => 0
		);
		
		$this->db->insert('setting', $setting_data);
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'amazon')); 
	}
	
	public function download($store_id)
	{
		$this->load->library('datetimer');
		
		$this->lang->load('platform/amazon');
		
		$this->load->model('store/store_model');
		$this->load->model('catalog/product_model');
		
		$store = $this->store_model->get_store($store_id);
		
		$setting = unserialize($store['setting']);
		
		$merchant_id           = $setting['merchant_id'];
		$marketplace_id        = $setting['marketplace_id'];
		$access_key_id         = $setting['access_key_id'];
		$secret_access_key     = $setting['secret_access_key'];
		$application_id        = $setting['application_id'];
		$application_version   = $setting['application_version'];
		$hours   			   = $setting['hours'];

		$default_sale_status_id         = $store['default_sale_status_id'];
		$default_sale_shipping_provider = $store['default_sale_shipping_provider'];
		$default_sale_shipping_service  = $store['default_sale_shipping_service'];
		
		$sales = array();
		
		$messages = array();
		
		require_once APPPATH . 'libraries/phpAmazonMWS/includes/classes.php';
		
		try {
			$amz = new AmazonOrderList('jiusite', false, null, array(
				'merchantId'     => $merchant_id,
				'marketplaceId'  => $marketplace_id, 
				'keyId'          => $access_key_id,
				'secretKey'      => $secret_access_key
			)); 
			
			$amz->setFulfillmentChannelFilter('MFN'); 
			$amz->setLimits('Modified', '- ' . $hours . ' hours'); 
		
			$amz->setOrderStatusFilter(				
				//array('Unshipped', 'PartiallyShipped', 'Canceled', 'Unfulfillable', 'Shipped', 'Pending')
				array("Unshipped", "PartiallyShipped")
			); 
			
			$amz->setUseToken(); 
			$amz->fetchOrders(); 
			
			$orders = $amz->getList();
			$orders_product = $amz->fetchItems();
			
		} catch (Exception $ex) {
			$messages[] = array(
				'level'   => 2,
				'content' => $ex->getMessage()
			);
		}
			
		if(empty($orders))
		{
			$messages[] = array(
				'level'   => 1,
				'content' => $this->lang->line('error_no_order_fetched_from_amazon')
			);
		}
		else
		{
			foreach($orders as $index => $order)
			{				
				$store_sale_id = $order->getAmazonOrderId();
				
				$total = $order->getOrderTotal();
				
				$amount = (isset($total['Amount']))?$total['Amount']:0;
				
				$shipping_address = $order->getShippingAddress();
												
				$name     = $shipping_address['Name'];
				$street   = $shipping_address['AddressLine1'];
				$street2  = $shipping_address['AddressLine2'];
				$city     = $shipping_address['City'];
				$state    = $shipping_address['StateOrRegion'];
				$zipcode  = $shipping_address['PostalCode'];
				$country  = $shipping_address['CountryCode'];
				$phone    = $shipping_address['Phone'];
				$email    = $order->getBuyerEmail();
				
				$purchase_date = $order->getPurchaseDate();
				
				if(!empty($purchase_date)) 
				{
					$date_added = $this->datetimer->to_standard($purchase_date);
				}
				else 
				{
					$date_added = $this->datetimer->current_datetime();
				}
				
				if(!isset($orders_product[$index]))
				{
					$messages[] = array(
						'level'   => 2,
						'content' => sprintf($this->lang->line('error_no_order_product'), $store_sale_id)
					);
					
					continue;
				}
				else
				{
					$sale_products = array();
					
					$sale_products_data = $orders_product[$index]->getItems();
					
					foreach($sale_products_data as $sale_product_data) 
					{
						$sale_products[] = array(
							'sku'	    => $sale_product_data['SellerSKU'],
							'quantity'	=> $sale_product_data['QuantityOrdered']
						);
					}
				}
				
				$sales[] = array(
					'total'             => $amount,
					'store_id'          => $store_id,
					'store_sale_id'     => $store_sale_id,
					'tracking'          => '',
					'note'              => '',
					'status_id'         => $default_sale_status_id,
					'shipping_provider' => $default_sale_shipping_provider,
					'shipping_service'  => $default_sale_shipping_service,
					'name'              => $name,
					'street'            => $street,
					'street2'           => $street2,
					'city'              => $city,
					'state'             => $state,
					'zipcode'           => $zipcode,
					'country'           => $country,
					'email'             => $email,
					'phone'             => $phone,
					'date_added'        => $date_added,
					'sale_products'     => $sale_products
				);
			}
		}
			
		$result = array(
			'success'  => true,
			'messages' => $messages,
			'sales'    => $sales
		);
		
		return $result;	
	}
	
	public function upload($store_id)
	{
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		
		$store = $this->store_model->get_store($store_id);
			
		$setting = unserialize($store['setting']);
		
		$merchant_id        = $setting['merchant_id'];
		$marketplace_id     = $setting['marketplace_id'];
		$access_key_id      = $setting['access_key_id'];
		$secret_access_key  = $setting['secret_access_key'];
			
		require_once APPPATH . 'libraries/phpAmazonMWS/includes/classes.php';
		
		$filter_data = array(
			'filter_store_id'        => $store_id,
			'filter_tracking_filled' => true,
			'sort'                   => 'sale.date_added',
			'order'                  => 'DESC',
			'start'                  => 0,
			'limit'                  => 2
		);
			
		$sales = $this->sale_model->get_sales($filter_data);
		
		if($sales)
		{			
			$count = count($sales);
			
			$messages = array();
			
			try {
				$amz = new AmazonFeed('jiusite', false, null, array(
					'merchantId'    => $merchant_id,
					'marketplaceId' => $marketplace_id, 
					'keyId'         => $access_key_id, 
					'secretKey'     => $secret_access_key
				)); 
				
				$amz->setFeedType("_POST_ORDER_FULFILLMENT_DATA_");
				$amz->setFeedContent($this->set_feed($merchant_id, $sales));
				$amz->submitFeed();
				
				$response = $amz->getResponse();
								
				try {
					$feed_id =  $response['FeedSubmissionId'];
										
					$amz = new AmazonFeedResult('jiusite', $feed_id); 
					$amz->setFeedId($feed_id); 
					$amz->fetchFeedResult();
					
				} catch (Exception $ex) {
					echo 'There was a problem with the Amazon library. Error: '.$ex->getMessage();
				}
			} catch (Exception $ex) {
				echo $ex->getMessage();
			}
			
			$messages[] = array(
				'level'    => 0,
				'content'  => sprintf($this->lang->line('text_sync_tracking_note'), $count)
			);
			
			$result = array(
				'success'   => true,
				'messages'  => $messages
			);
		}
		else
		{
			$messages[] = array(
				'level'    => 0,
				'content'  => $this->lang->line('text_no_tracking_need_sync')
			);
			
			$result = array(
				'success'   => true,
				'messages'  => $messages
			);
		}
		
		return $result;
	}
	
	public function upload_sale($sale_id)
	{
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		
		$sale = $this->sale_model->get_sale($sale_id);

		$store_id = $sale['store_id'];
		
		$store = $this->store_model->get_store($store_id);
			
		$setting = unserialize($store['setting']);
		
		$merchant_id        = $setting['merchant_id'];
		$marketplace_id     = $setting['marketplace_id'];
		$access_key_id      = $setting['access_key_id'];
		$secret_access_key  = $setting['secret_access_key'];
			
		require_once APPPATH . 'libraries/phpAmazonMWS/includes/classes.php';
				
		try {
			$amz = new AmazonFeed('jiusite', false, null, array(
				'merchantId'    => $merchant_id,
				'marketplaceId' => $marketplace_id, 
				'keyId'         => $access_key_id, 
				'secretKey'     => $secret_access_key
			)); 
						
			$sales[] = $sale;
			
			$amz->setFeedType("_POST_ORDER_FULFILLMENT_DATA_");
			$amz->setFeedContent($this->set_feed($merchant_id, $sales));
			$amz->submitFeed();
			
			$response = $amz->getResponse();
							
			try {
				$feed_id =  $response['FeedSubmissionId'];
									
				//$amz = new AmazonFeedResult('jiusite', $feed_id); 
				
				$amz = new AmazonFeedResult('jiusite', $feed_id, null , false, array(
					'merchantId'    => $merchant_id,
					'marketplaceId' => $marketplace_id, 
					'keyId'         => $access_key_id, 
					'secretKey'     => $secret_access_key,
					'logpath'       => FCPATH .'application/libraries/phpAmazonMWS/log.txt'
				)); 
				
				$amz->setFeedId($feed_id); 
				$amz->fetchFeedResult();
				
				$rawFeed = $amz->getRawFeed();
								
				$xml = simplexml_load_string($rawFeed)->Error;
				
				$code = $xml->Code;
				$content = (String)$xml->Message;
				
			} catch (Exception $ex) {
				echo 'There was a problem with the Amazon library. Error: '.$ex->getMessage();
			}
		} catch (Exception $ex) {
			echo $ex->getMessage();
		}
		
		if($code == 200) 
		{
			$message = array(
				'level'    => 0,
				'content'  => sprintf($this->lang->line('text_sale_sync_tracking_success'), $sale_id)
			);
			
			$result = array(
				'success'  => true,
				'message'  => $message
			);
		}
		else
		{
			$message = array(
				'level'    => 1,
				'content'  => sprintf($this->lang->line('text_sale_sync_tracking_note'), $sale_id, $feed_id, $content)
			);
			
			$result = array(
				'success'  => true,
				'message'  => $message
			);
		}
		
		return $result;
	}
	
	private function set_feed($merchant_id, $sales) {
		
		$message_id = 1;
		
		$feed = '';
		$feed .= '<?xml version="1.0"?>';
		$feed .= '<AmazonEnvelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="amzn-envelope.xsd">';
		$feed .= '<Header>';
		$feed .= '<DocumentVersion>1.01</DocumentVersion>';
		$feed .= '<MerchantIdentifier>' . $merchant_id . '</MerchantIdentifier>';
		$feed .= '</Header>';
		$feed .= '<MessageType>OrderFulfillment</MessageType>';
		
		foreach($sales as $sale) 
		{
			if($sale['tracking'])
			{
				$feed .= '<Message>';
				$feed .= '<MessageID>' . $message_id . '</MessageID>';
				$feed .= '<OrderFulfillment>';
				$feed .= '<AmazonOrderID>' . $sale['store_sale_id'] . '</AmazonOrderID>';
				$feed .= '<MerchantFulfillmentID>' . $sale['id'] . '</MerchantFulfillmentID>';
				$feed .= '<FulfillmentDate>' . date('Y-m-d\TH:i:sP'). '</FulfillmentDate>';
				$feed .= '<FulfillmentData>';
				$feed .= '<CarrierCode>' . $sale['shipping_provider'] . '</CarrierCode>';
				$feed .= '<ShipperTrackingNumber>' . $sale['tracking'] . '</ShipperTrackingNumber>';
				$feed .= '</FulfillmentData>';
				$feed .= '</OrderFulfillment>';
				$feed .= '</Message>';
				
				$message_id ++;
			}
		}
		
		$feed .= '</AmazonEnvelope>';
				
		return $feed;
	}
}
