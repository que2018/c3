   <?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Wish_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
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
		$start        = $setting['start'];
		$limit        = $setting['limit'];
		
		$connection = curl_init(); 
        curl_setopt($connection, CURLOPT_URL, $url);
        curl_setopt($connection, CURLOPT_RETURNTRANSFER, 1); 
        $response = curl_exec($connection); 
		$response = json_decode($response);
		
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
		}
		else if($response->code != 0)
		{
			$msgs[] = array(
				'level'   => 2,
				'content' => $this->lang->line('error_server_download_error')
			);
			
			$result = array(
				'success' => false,
				'msgs'    => $msgs
			);
		}
		else
		{
			foreach($response->data as $store_order) 
			{
				$order = $store_order->Order;
				
				//sku issue
				$sku = $order->sku;
				
				if(empty($sku)) 
				{		
					$messages[] = sprintf($this->lang->line('order_sku_missing'), $order->order_id);
					continue;
				}
				
				//no invalid order
				$state = $order->state;
				
				if(($state == 'REFUNDED') || ($state == 'REQUIRE_REVIEW'))
				{
					continue;
				}
				
				$order_products = array();
								
				$sale_products[] = array(
					'sku'	        => $order->sku,
					'quantity'		=> $order->quantity,
				);
				
				$sales[] = array(
					'tracking'          => '',
					'note'              => '',
					'shipping_provider' => '',
					'shipping_service'  => '',
					'total'             => $order->total,
					'store_id'          => $store_id,
					'store_sale_id'     => $order->store_order_id,
					'status_id'         => $default_sale_status_id,
					'name'              => $order->ShippingDetail->name,
					'street'            => $order->ShippingDetail->street_address1,
					'street2'           => $order->ShippingDetail->street_address2,
					'city'              => $order->ShippingDetail->city,
					'state'             => $order->ShippingDetail->state,
					'country'           => $order->ShippingDetail->country,
					'zipcode'           => $order->ShippingDetail->zipcode,
					'phone'             => $order->ShippingDetail->phone_number,
					'date_added'        => $date_added,
					'sale_products'     => $sale_products
				);
			}
			
			$result = array(
				'success' => true,
				'msgs'    => $msgs,
				'sales'   => $sales
			);
		}
		
		return $result;
	}
}
