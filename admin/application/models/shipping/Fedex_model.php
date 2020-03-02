<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fedex_model extends CI_Model
{		
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'fedex')); 
	}
	
	public function get_service($code)
	{	
		$q = $this->db->get_where('setting', array('key' => 'fedex_service'));
	
		if($q->num_rows() > 0)
		{
			$result = $q->row_array();
			
			$services_data = unserialize($result['value']);
			
			foreach($services_data as $service_data)
			{
				$services[$service_data['code']] = array(
					'name'    => $service_data['code'],
					'method'  => $service_data['method'],
					'package' => $service_data['package']
				);
			}
			
			return $services[$code];
		}
		else 
		{
			return false;
		}
	}
	
	public function generate_sale_label($sale_id)
	{
		$this->lang->load('shipping/fedex');
	
		$this->load->model('sale/sale_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
						
		//get shipping info
		$sale = $this->sale_model->get_sale($sale_id);			
		$sale_detail = $this->sale_model->get_sale_detail($sale_id);
		
		$length_class = $this->length_class_model->get_length_class($sale['length_class_id']);

		$weight_class = $this->weight_class_model->get_weight_class($sale['weight_class_id']);
		
		$sale_shipping_service = $this->get_service($sale['shipping_service']);
		
		require_once APPPATH . 'libraries/RocketShipIt/autoload.php';
		$config = new \RocketShipIt\Config;
		
		$config->setDefault('generic', 'debugMode', $this->config->item('fedex_debug_mode'));
		$config->setDefault('generic', 'timezone', $this->config->item('fedex_time_zone'));
		$config->setDefault('generic', 'shipper', $this->config->item('fedex_company'));
		$config->setDefault('generic', 'shipContact', $this->config->item('fedex_owner'));
		$config->setDefault('generic', 'shipAddr1', $this->config->item('fedex_street'));	
		$config->setDefault('generic', 'shipAddr2',  $this->config->item('fedex_street2'));	
		$config->setDefault('generic', 'shipCity', $this->config->item('fedex_city'));
		$config->setDefault('generic', 'shipState', $this->config->item('fedex_state'));
		$config->setDefault('generic', 'shipCode', $this->config->item('fedex_postcode'));
		$config->setDefault('generic', 'shipCountry', $this->config->item('fedex_country'));
		$config->setDefault('generic', 'shipPhone', $this->config->item('fedex_phone'));
		$config->setDefault('generic', 'toCountry', $this->config->item('fedex_country'));
		
		$config->setDefault('fedex', 'accountNumber', $this->config->item('fedex_account_number'));
		$config->setDefault('fedex', 'meterNumber', $this->config->item('fedex_meter_number'));
		$config->setDefault('fedex', 'key', $this->config->item('fedex_key'));
		$config->setDefault('fedex', 'password', $this->config->item('fedex_password'));

		$config->setDefault('fedex', 'referenceCode', "CUSTOMER_REFERENCE");	
		$config->setDefault('fedex', 'referenceValue', $sale_detail);	
		
		$config->setDefault('fedex', 'toCountryCode', $this->config->item('fedex_country'));	
		$config->setDefault('fedex', 'service', $sale_shipping_service['method']);
		$config->setDefault('fedex', 'packagingType', $sale_shipping_service['package']);
		$config->setDefault('fedex', 'imageType', $this->config->item('fedex_image_type'));
		$config->setDefault('fedex', 'lengthUnit', strtoupper($length_class['unit_short']));
		$config->setDefault('fedex', 'weightUnit', strtoupper($weight_class['unit']));

		$shipment = new \RocketShipIt\Shipment('fedex', array('config' => $config));
		
		$state = $this->get_state_short($sale['state']);
		$zipcode = $this->get_clean_zipcode($sale['zipcode']);		
		
		$shipment->setParameter('length', (int)$sale['length']);
		$shipment->setParameter('width', (int)$sale['width']);
		$shipment->setParameter('height', (int)$sale['height']);
		$shipment->setParameter('weight', $sale['weight']);
				
		$shipment->setParameter('toName', $sale['name']);
		$shipment->setParameter('toPhone', $sale['phone']);
		$shipment->setParameter('toAddr1', $sale['street']);
		$shipment->setParameter('toCity', $sale['city']);
		$shipment->setParameter('toState',$state);
		$shipment->setParameter('toCode', $zipcode);
		$shipment->setParameter('RateType', 'PAYOR_ACCOUNT_PACKAGE');
		
		$response = $shipment->submitShipment();
							
		if(isset($response['Fault'])) 
		{
			$result['error'] = $response['Fault']['detail']['desc'];	
		}
		else if(isset($response['error'])) 
		{
			$result['error'] = $response['error'];
		}
		else 
		{
			if(isset($response['pkgs']) && is_array($response['pkgs']) && count($response['pkgs']) > 0) 
			{
				$tracking = $response['pkgs'][0]['pkg_trk_num'];
				$label_img = 'img/shipping_label/fedex_' . $tracking . '.' . $this->config->item('fedex_image_type');
				
				if(@file_put_contents($label_img, base64_decode($response['pkgs'][0]['label_img'])))
				{					
					if(isset($response['negotiated_charges'])) 
						$amount = $response['negotiated_charges'];
					else 
						$amount = $response['charges'];
			
					$result = array(
						'tracking'   => $tracking,
						'label_img'  => $label_img,
						'amount'     => $amount
					);
				}
				else
				{
					$result['error'] = $this->lang->line('error_save_image_failed');
				}
			}
			else
			{	
				$result['error'] = $this->lang->line("error_create_shipping_label_faild");
			}
		}
		
		return $result;
	}
	
	public function generate_checkout_label($checkout_id)
	{
		$this->lang->load('shipping/fedex');
	
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
						
		//get shipping info
		$checkout = $this->checkout_model->get_checkout($checkout_id);			

		$sale = $this->sale_model->get_sale($checkout['sale_id']);	
		
		$length_class = $this->length_class_model->get_length_class($checkout['length_class_id']);
		$weight_class = $this->weight_class_model->get_weight_class($checkout['weight_class_id']);
		
		$shipping_service = $this->get_service($checkout['shipping_service']);
		
		require_once APPPATH . 'libraries/RocketShipIt/autoload.php';
		$config = new \RocketShipIt\Config;
		
		$config->setDefault('generic', 'debugMode', $this->config->item('fedex_debug_mode'));
		$config->setDefault('generic', 'timezone', $this->config->item('fedex_time_zone'));
		$config->setDefault('generic', 'shipper', $this->config->item('fedex_company'));
		$config->setDefault('generic', 'shipContact', $this->config->item('fedex_owner'));
		$config->setDefault('generic', 'shipAddr1', $this->config->item('fedex_street'));	
		$config->setDefault('generic', 'shipAddr2',  $this->config->item('fedex_street2'));	
		$config->setDefault('generic', 'shipCity', $this->config->item('fedex_city'));
		$config->setDefault('generic', 'shipState', $this->config->item('fedex_state'));
		$config->setDefault('generic', 'shipCode', $this->config->item('fedex_postcode'));
		$config->setDefault('generic', 'shipCountry', $this->config->item('fedex_country'));
		$config->setDefault('generic', 'shipPhone', $this->config->item('fedex_phone'));
		$config->setDefault('generic', 'toCountry', $this->config->item('fedex_country'));
		
		$config->setDefault('fedex', 'accountNumber', $this->config->item('fedex_account_number'));
		$config->setDefault('fedex', 'meterNumber', $this->config->item('fedex_meter_number'));
		$config->setDefault('fedex', 'key', $this->config->item('fedex_key'));
		$config->setDefault('fedex', 'password', $this->config->item('fedex_password'));

		$config->setDefault('fedex', 'toCountryCode', $this->config->item('fedex_country'));
		$config->setDefault('fedex', 'service', $shipping_service['method']);
		$config->setDefault('fedex', 'packagingType', $shipping_service['package']);
		$config->setDefault('fedex', 'imageType', $this->config->item('fedex_image_type'));
		$config->setDefault('fedex', 'lengthUnit', strtoupper($length_class['unit_short']));
		$config->setDefault('fedex', 'weightUnit', strtoupper($weight_class['unit']));

		$shipment = new \RocketShipIt\Shipment('fedex', array('config' => $config));
		
		$state = $this->get_state_short($sale['state']);
		$zipcode = $this->get_clean_zipcode($sale['zipcode']);		
		
		$shipment->setParameter('length', (int)$checkout['length']);
		$shipment->setParameter('width', (int)$checkout['width']);
		$shipment->setParameter('height', (int)$checkout['height']);
		$shipment->setParameter('weight', $checkout['weight']);
				
		$shipment->setParameter('toName', $sale['name']);
		$shipment->setParameter('toPhone', $sale['phone']);
		$shipment->setParameter('toAddr1', $sale['street']);
		$shipment->setParameter('toCity', $sale['city']);
		$shipment->setParameter('toState',$state);
		$shipment->setParameter('toCode', $zipcode);
		$shipment->setParameter('negotiatedRates', true);
		
		$response = $shipment->submitShipment();
					
		if(isset($response['Fault'])) 
		{
			$result['error'] = $response['Fault']['detail']['desc'];	
		}
		else if(isset($response['error'])) 
		{
			$result['error'] = $response['error'];
		}
		else 
		{
			if(isset($response['pkgs']) && is_array($response['pkgs']) && count($response['pkgs']) > 0) 
			{
				$tracking = $response['pkgs'][0]['pkg_trk_num'];
				$label_img = 'img\shipping_label\fedex_' . $tracking . '.' . $this->config->item('fedex_image_type');
				
				if(@file_put_contents($label_img, base64_decode($response['pkgs'][0]['label_img'])))
				{	
					if(isset($response['negotiated_charges'])) 
						$amount = $response['negotiated_charges'];
					else 
						$amount = $response['charges'];
			
					$result = array(
						'tracking'   => $tracking,
						'amount'     => $amount,
						'label_img'  => $label_img
					);
				}
				else
				{
					$result['error'] = $this->lang->line('error_save_image_failed');
				}
			}
			else
			{	
				$result['error'] = $this->lang->line("error_create_shipping_label_faild");
			}
		}
		
		return $result;
	}
	
	public function get_shipping_fee($sale_id)
	{
		return false;
	}
	
	protected function get_state_short($state)
	{	
		$state_short = $state;
	
		$states_mappping = $this->config->item('fedex_state_mapping');
		
		if($states_mappping)
		{			
			foreach($states_mappping as $state_mappping)
			{
				if($state_mappping['state_long'] == strtolower($state))
				{
					$state_short = $state_mappping['state_short'];
					
					break;
				}
			}
		}
		
		return $state_short;	
	}
	
	protected function get_clean_zipcode($zipcode)
	{	
		return substr($zipcode, 0, 5);	
	}
}
