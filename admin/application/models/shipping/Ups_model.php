<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ups_model extends CI_Model
{		
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'ups')); 
	}
	
	public function generate_sale_label($sale_id)
	{
		$this->load->library('image');
		
		$this->lang->load('shipping/ups');
	
		$this->load->model('sale/sale_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
						
		//get shipping info
		$sale = $this->sale_model->get_sale($sale_id);			
		$sale_detail = $this->sale_model->get_sale_detail($sale_id);
		
		$length_class = $this->length_class_model->get_length_class($sale['length_class_id']);

		$weight_class = $this->weight_class_model->get_weight_class($sale['weight_class_id']);

		$sale_shipping_service = $this->get_service($sale['shipping_service']);
		
		//exceed max weight
		$weight = $this->weight_class_model->to_config($sale['weight_class_id'], $sale['weight']);

		if($weight > $this->config->item('ups_weight_max')) 
		{
			$result = array(
				'success'  => false,
				'message'  => $this->lang->line('error_weight_exceed')
			);
			
			return $result;
		}
		
		require_once APPPATH . 'libraries/RocketShipIt/autoload.php';
		$config = new \RocketShipIt\Config;
		
		$config->setDefault('generic', 'debugMode', $this->config->item('ups_debug_mode'));
		$config->setDefault('generic', 'timezone', $this->config->item('ups_time_zone'));
		$config->setDefault('generic', 'shipper', $this->config->item('ups_owner'));
		$config->setDefault('generic', 'shipContact', $this->config->item('ups_owner'));
		$config->setDefault('generic', 'shipAddr1', $this->config->item('ups_street'));	
		$config->setDefault('generic', 'shipAddr2',  $this->config->item('ups_street2'));	
		$config->setDefault('generic', 'shipCity', $this->config->item('ups_city'));
		$config->setDefault('generic', 'shipState', $this->config->item('ups_state'));
		$config->setDefault('generic', 'shipCode', $this->config->item('ups_postcode'));
		$config->setDefault('generic', 'shipCountry', $this->config->item('ups_country'));
		$config->setDefault('generic', 'shipPhone', $this->config->item('ups_phone'));
		$config->setDefault('generic', 'toCountry', $this->config->item('ups_country'));
		
		$config->setDefault('ups', 'license', $this->config->item('ups_access_key'));
		$config->setDefault('ups', 'username', $this->config->item('ups_username'));
		$config->setDefault('ups', 'password', $this->config->item('ups_password'));
		$config->setDefault('ups', 'accountNumber', $this->config->item('ups_account_number'));
		$config->setDefault('ups', 'PickupType', $this->config->item('ups_pickup_method'));
		$config->setDefault('ups', 'toCountryCode', $this->config->item('ups_country'));
		$config->setDefault('ups', 'shipmentDescription', $sale_detail);		
		$config->setDefault('ups', 'service', $sale_shipping_service['method']);			
		$config->setDefault('ups', 'packagingType', $sale_shipping_service['package']);
		$config->setDefault('ups', 'imageType', $this->config->item('ups_image_type'));
		$config->setDefault('ups', 'lengthUnit', $length_class['unit']);
		$config->setDefault('ups', 'weightUnit', $weight_class['unit']);

		$shipment = new \RocketShipIt\Shipment('UPS', array('config' => $config));
			
		$package = new \RocketShipIt\Package('UPS');
		$package->setParameter('length', $sale['length']);
		$package->setParameter('width', $sale['width']);
		$package->setParameter('height', $sale['height']);
		$package->setParameter('weight', $sale['weight']);
		
		$shipment->addPackageToShipment($package);	
			
		$state = $this->get_state_short($sale['state']);
		$zipcode = $this->get_clean_zipcode($sale['zipcode']);
			
		$shipment->setParameter('toName', $sale['name']);
		$shipment->setParameter('toPhone', $sale['phone']);
		$shipment->setParameter('toAddr1', $sale['street']);
		$shipment->setParameter('toCity', $sale['city']);
		$shipment->setParameter('toState',$state);
		$shipment->setParameter('toCode', $zipcode);
		$shipment->setParameter('negotiatedRates', true);
		
		if($sale_shipping_service['method'] == 'M4') 
		{
			$shipment->setParameter('packageId', '1');
			$shipment->setParameter('uspsEndorsement', '1');
		}
		
		$response = $shipment->submitShipment();
						
		if(isset($response['error']) && $response['error'] != '') 
		{	
			$result = array(
				'success'  => false,
				'message'  => $response['error']
			);
		} 
		else 
		{
			if(isset($response['pkgs']) && is_array($response['pkgs']) && count($response['pkgs']) > 0) 
			{
				$tracking = $response['pkgs'][0]['pkg_trk_num'];
			
				$file_path = LABELPATH . $tracking . '.' . $this->config->item('ups_image_type');

				if(@file_put_contents($file_path, base64_decode($response['pkgs'][0]['label_img'])))
				{	
					$this->image->rotate($file_path, 90);
			
					if(($this->config->item('ups_fee_type') == 0)||($this->config->item('ups_fee_type') == 1))
					{
						if(isset($response['negotiated_charges'])) 
						{
							$amount = $response['negotiated_charges'];
						}
						else 
						{
							$amount = $response['charges'];
						}
					}
					else
					{
						$amount = 0;
						
						$ups_self_defined_fees = $this->config->item('ups_self_defined_fee');
						
						if(isset($ups_self_defined_fees))
						{
							$weight = $this->weight_class_model->to_config($sale['weight_class_id'], $sale['weight']);

							foreach($ups_self_defined_fees as $ups_self_defined_fee)
							{
								if($ups_self_defined_fee['weight'] >= $weight)
								{
									$amount = $ups_self_defined_fee['price'];	
									
									break;
								}
							}
						}
					}
					
					$result = array(
						'success'    => true,
						'tracking'   => $tracking,
						'label_img'  => $tracking . '.' . $this->config->item('ups_image_type'),
						'amount'     => $amount
					);
				}
				else
				{
					$result = array(
						'success'  => false,
						'message'  => $this->lang->line('error_save_image_failed')
					);
				}
			}
			else
			{	
				$result = array(
					'success'  => false,
					'message'  => $this->lang->line("error_create_shipping_label_faild")
				);
			}
		}
		
		return $result;
	}
	
	public function generate_checkout_label($checkout_id)
	{
		$this->load->library('image');
		
		$this->lang->load('shipping/ups');
	
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
		
		$config->setDefault('generic', 'debugMode', $this->config->item('ups_debug_mode'));
		$config->setDefault('generic', 'timezone', $this->config->item('ups_time_zone'));
		$config->setDefault('generic', 'shipper', $this->config->item('ups_owner'));
		$config->setDefault('generic', 'shipContact', $this->config->item('ups_owner'));
		$config->setDefault('generic', 'shipAddr1', $this->config->item('ups_street'));	
		$config->setDefault('generic', 'shipAddr2',  $this->config->item('ups_street2'));	
		$config->setDefault('generic', 'shipCity', $this->config->item('ups_city'));
		$config->setDefault('generic', 'shipState', $this->config->item('ups_state'));
		$config->setDefault('generic', 'shipCode', $this->config->item('ups_postcode'));
		$config->setDefault('generic', 'shipCountry', $this->config->item('ups_country'));
		$config->setDefault('generic', 'shipPhone', $this->config->item('ups_phone'));
		$config->setDefault('generic', 'toCountry', $this->config->item('ups_country'));
		
		$config->setDefault('ups', 'license', $this->config->item('ups_access_key'));
		$config->setDefault('ups', 'username', $this->config->item('ups_username'));
		$config->setDefault('ups', 'password', $this->config->item('ups_password'));
		$config->setDefault('ups', 'accountNumber', $this->config->item('ups_account_number'));
		$config->setDefault('ups', 'PickupType', $this->config->item('ups_pickup_method'));
		$config->setDefault('ups', 'toCountryCode', $this->config->item('ups_country'));
		$config->setDefault('ups', 'shipmentDescription', $this->config->item('ups_description'));		
		$config->setDefault('ups', 'service', $shipping_service['method']);			
		$config->setDefault('ups', 'packagingType', $shipping_service['package']);
		$config->setDefault('ups', 'imageType', $this->config->item('ups_image_type'));
		$config->setDefault('ups', 'lengthUnit', $length_class['unit']);
		$config->setDefault('ups', 'weightUnit', $weight_class['unit']);

		$shipment = new \RocketShipIt\Shipment('UPS', array('config' => $config));
			
		$package = new \RocketShipIt\Package('UPS');
		$package->setParameter('length', $checkout['length']);
		$package->setParameter('width', $checkout['width']);
		$package->setParameter('height', $checkout['height']);
		$package->setParameter('weight', $checkout['weight']);
		
		$shipment->addPackageToShipment($package);	
				
		$state = $this->get_state_short($sale['state']);
		$zipcode = $this->get_clean_zipcode($sale['zipcode']);		
		
		$shipment->setParameter('toName', $sale['name']);
		$shipment->setParameter('toPhone', $sale['phone']);
		$shipment->setParameter('toAddr1', $sale['street']);
		$shipment->setParameter('toCity', $sale['city']);
		$shipment->setParameter('toState',$state);
		$shipment->setParameter('toCode', $zipcode);
		$shipment->setParameter('negotiatedRates', true);
		
		$response = $shipment->submitShipment();
				
		if(isset($response['error']) && $response['error'] != '') 
		{
			$result['error'] = $response['error'];	
		} 
		else 
		{
			if(isset($response['pkgs']) && is_array($response['pkgs']) && count($response['pkgs']) > 0) 
			{
				$tracking = $response['pkgs'][0]['pkg_trk_num'];
				$label_img = 'img/shipping_label/ups_' . $tracking . '.' . $this->config->item('ups_image_type');
				
				if(@file_put_contents($label_img, base64_decode($response['pkgs'][0]['label_img'])))
				{	
					$file_path = FCPATH . $label_img;
			
					$this->image->rotate($file_path, 90);
			
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
	
	protected function get_service($code)
	{	
		$q = $this->db->get_where('setting', array('key' => 'ups_service'));
	
		if($q->num_rows() > 0)
		{
			$services = array();
			
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
	
	protected function get_state_short($state)
	{	
		$state_short = $state;
	
		$states_mappping = $this->config->item('ups_state_mapping');
		
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







