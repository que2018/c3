<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usps_model extends CI_Model
{		
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'usps')); 
	}
	
	public function get_service($code)
	{	
		$q = $this->db->get_where('setting', array('key' => 'usps_service'));
	
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
	
	public function generate_sale_label($sale_id)
	{
		$this->load->library('stamps');
	
		$this->lang->load('shipping/usps');
	
		$this->load->model('sale/sale_model');
		$this->load->model('setting/weight_class_model');
										
		//get shipping info
		$sale = $this->sale_model->get_sale($sale_id);			
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		
		$weight = $this->weight_class_model->to_pound_and_ounce($sale['weight_class_id'], $sale['weight']);
		
		$sale_shipping_service = $this->get_service($sale['shipping_service']);
		
		$wsdl = base_url() . $this->config->item('usps_stamps_wsdl_file');
		$client = new SoapClient($wsdl);
		
		$address = array(
			'FullName'		=> $sale['name'],
			'Address1'		=> $sale['street'],
			'Address2'      => '',
			'City'          => $sale['city'],
			'State'			=> $sale['state'],
			'PostalCode'	=> $sale['zipcode'],
			'PhoneNumber'	=> $sale['phone'],
			'Country'		=> $sale['country']
		);
			
		$fromAddress = array(
			'FirstName'		=> $this->config->item('usps_owner'),
			'LastName'		=> '',
			'Company'		=> $this->config->item('usps_company'),
			'Address1'		=> $this->config->item('usps_street'),
			'Address2'		=> $this->config->item('usps_street2'),
			'City'			=> $this->config->item('usps_city'),
			'State'			=> $this->config->item('usps_state'),
			'ZIPCode'		=> $this->config->item('usps_postcode'),
			'Country'		=> $this->config->item('usps_country'),
			'PhoneNumber'	=> $this->config->item('usps_phone')
		);

		$credentials = array(
			'username'       => $this->config->item('usps_stamps_username'),
			'password'       => $this->config->item('usps_stamps_password'),
			'integration_id' => $this->config->item('usps_stamps_integration_id')
		); 
		
		$authenicatorResponse = $this->stamps->getAuthenicator($client, $credentials);
		
		if($authenicatorResponse['success'] == 'true') 
		{
			$authenicator = $authenicatorResponse['response']->Authenticator;				
			$cleanseResponse = $this->stamps->cleanseAddress($client, $authenicator, $address);

			if($cleanseResponse['success'] == 'true') 
			{
				$authenicator = $cleanseResponse['response']->Authenticator;

				$requestParams = array(
					'Authenticator' => $authenicator,
					'Rate' => array(
						'FromZIPCode' => $fromAddress['ZIPCode'],
						'ToZIPCode'   => $cleanseResponse['response']->Address->ZIPCode,
						'ToCountry'   => $address['Country'],
						'ShipDate'    => date('Y-m-d'),
						'Length'      => $sale['length'],
						'Width'       => $sale['width'],
						'Height'      => $sale['height'],
						'WeightLb'    => $weight['pound'],
						'WeightOz'    => $weight['ounce'],
						'ServiceType' => $sale_shipping_service['method'],
						'PackageType' => $sale_shipping_service['package']
					) 
				);

				try {
					$response = $client->GetRates($requestParams);
					$authenicator = $response->Authenticator;
					$ratesResponse = $response;
					$selectedRate = $ratesResponse->Rates->Rate;
						
					$additions = array();
					foreach($selectedRate->AddOns->AddOnV5 as $addon) 
					{
						if((isset($addon->Amount)&&($addon->AddOnType == 'US-A-INS' || $addon->AddOnType == 'US-A-SC')) || ($addon->AddOnType == 'SC-A-HP'))
						{
							if($addon->AddOnType == 'US-A-INS' && $order['insurance'] > 0) 
							{
								$additions[] = $addon;
							}
							
							if($addon->AddOnType == 'SC-A-HP') 
							{
								$additions[] = $addon;
							}
						}
					}
					
					$selectedRate->AddOns = array();
					
					if(sizeof($additions) > 0) 
					{
						$selectedRate->AddOns = $additions;
					}
					
					if(isset($order['insurance']) && is_numeric($order['insurance']) && $order['insurance'] > 0) 
					{
						$selectedRate->InsuredValue = $order['insurance'];
					}
					
					$requestParams = array(
						'Authenticator'		=> $authenicator,
						'IntegratorTxID'	=> $sale_id . "-" . rand(0, 1000),
						'Rate'				=> $selectedRate,
						'From'				=> $fromAddress,
						'To'				=> $cleanseResponse['response']->Address,
					);
					
					try {
						$response = $client->CreateIndicium($requestParams);
												
						$label_img_path = FCPATH . 'img/shipping_label/stamps_' . $sale_id . '.png';  
						
						$label_img = 'img/shipping_label/stamps_' . $sale_id . ".png";  
						
						if(file_put_contents($label_img_path, file_get_contents($response->URL)))
						{
							$result['amount']    = $response->Rate->Amount;
							$result['label_img'] = $label_img;	
							$result['tracking']  = $response->TrackingNumber;	
						}
						else
						{
							$result['error'] = $this->lang->line('error_save_image_failed');
						}
						
					} catch (Exception $ex) {
						$result['error'] = $ex->faultstring;
					}
				} catch( SoapFault $fault ) {
					$result['error'] = $fault->faultstring;
				}
			}
			else 
			{
				$result['error'] = $this->lang->line('error_destination_address');
								
				/* if(isset($authenicatorResponse['response']->CandidateAddresses->Address))
				{
					$result['error'][] = $this->lang->line("available_candidate_addresses");
					
					foreach($authenicatorResponse['response']->CandidateAddresses->Address as $candidate_address)
					{
						$result['error'][] = $candidate_address->Address1;
						$result['error'][] = $candidate_address->City;
						$result['error'][] = $candidate_address->State;
						$result['error'][] = $candidate_address->ZIPCode;
						$result['error'][] = $candidate_address->ZIPCodeAddOn;					
					}
				}  */
			}
		}
		else 
		{
			$result['error'] = $this->lang->line('error_stamps_credentials');
		}
				
		return $result;
	}
	
	public function generate_checkout_label($checkout_id)
	{
		$this->load->library('stamps');
	
		$this->lang->load('shipping/usps');
	
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
										
		//get shipping info
		$checkout = $this->checkout_model->get_checkout($checkout_id);			

		$sale = $this->sale_model->get_sale($checkout['sale_id']);	
		
		$weight = $this->weight_class_model->to_pound_and_ounce($checkout['weight_class_id'], $checkout['weight']);
		
		$shipping_service = $this->get_service($checkout['shipping_service']);
		
		$wsdl = base_url() . $this->config->item('usps_stamps_wsdl_file');
		$client = new SoapClient($wsdl);
		
		$address = array(
			'FullName'		=> $sale['name'],
			'Address1'		=> $sale['street'],
			'Address2'      => $sale['street2'],
			'City'          => $sale['city'],
			'State'			=> $sale['state'],
			'PostalCode'	=> $sale['zipcode'],
			'PhoneNumber'	=> $sale['phone'],
			'Country'		=> $sale['country']
		);
			
		$fromAddress = array(
			'FirstName'		=> $this->config->item('usps_owner'),
			'LastName'		=> '',
			'Company'		=> $this->config->item('usps_company'),
			'Address1'		=> $this->config->item('usps_street'),
			'Address2'		=> $this->config->item('usps_street2'),
			'City'			=> $this->config->item('usps_city'),
			'State'			=> $this->config->item('usps_state'),
			'ZIPCode'		=> $this->config->item('usps_postcode'),
			'Country'		=> $this->config->item('usps_country'),
			'PhoneNumber'	=> $this->config->item('usps_phone')
		);

		$credentials = array(
			'username'       => $this->config->item('usps_stamps_username'),
			'password'       => $this->config->item('usps_stamps_password'),
			'integration_id' => $this->config->item('usps_stamps_integration_id')
		); 
		
		$authenicatorResponse = $this->stamps->getAuthenicator($client, $credentials);
		
		if($authenicatorResponse['success'] == 'true') 
		{
			$authenicator = $authenicatorResponse['response']->Authenticator;				
			$cleanseResponse = $this->stamps->cleanseAddress($client, $authenicator, $address);

			if($cleanseResponse['success'] == 'true') 
			{
				$authenicator = $cleanseResponse['response']->Authenticator;

				$requestParams = array(
					'Authenticator' => $authenicator,
					'Rate' => array(
						'FromZIPCode' => $fromAddress['ZIPCode'],
						'ToZIPCode'   => $cleanseResponse['response']->Address->ZIPCode,
						'ToCountry'   => $address['Country'],
						'ShipDate'    => date('Y-m-d'),
						'Length'      => $checkout['length'],
						'Width'       => $checkout['width'],
						'Height'      => $checkout['height'],
						'WeightLb'    => $weight['pound'],
						'WeightOz'    => $weight['ounce'],
						'ServiceType' => $shipping_service['method'],
						'PackageType' => $shipping_service['package']
					) 
				);

				try {
					$response = $client->GetRates($requestParams);
					$authenicator = $response->Authenticator;
					$ratesResponse = $response;
					$selectedRate = $ratesResponse->Rates->Rate;
						
					$additions = array();
					foreach($selectedRate->AddOns->AddOnV5 as $addon) 
					{
						if((isset($addon->Amount)&&($addon->AddOnType == 'US-A-INS' || $addon->AddOnType == 'US-A-SC')) || ($addon->AddOnType == 'SC-A-HP'))
						{
							if($addon->AddOnType == 'US-A-INS' && $order['insurance'] > 0) 
							{
								$additions[] = $addon;
							}
							
							if($addon->AddOnType == 'SC-A-HP') 
							{
								$additions[] = $addon;
							}
						}
					}
					
					$selectedRate->AddOns = array();
					
					if(sizeof($additions) > 0) 
					{
						$selectedRate->AddOns = $additions;
					}
					
					if(isset($order['insurance']) && is_numeric($order['insurance']) && $order['insurance'] > 0) 
					{
						$selectedRate->InsuredValue = $order['insurance'];
					}
					
					$requestParams = array(
						'Authenticator'		=> $authenicator,
						'IntegratorTxID'	=> $checkout_id . "-" . rand(0, 1000),
						'Rate'				=> $selectedRate,
						'From'				=> $fromAddress,
						'To'				=> $cleanseResponse['response']->Address,
					);
					
					try {
						$response = $client->CreateIndicium($requestParams);
																		
						$label_img = 'img/shipping_label/stamps_' . $checkout_id . ".png";  
						
						if(file_put_contents($label_img, file_get_contents($response->URL)))
						{
							$result = array(
								'tracking'   => $response->TrackingNumber,
								'amount'     => $response->Rate->Amount,
								'label_img'  => $label_img
							);
						}
						else
						{
							$result['error'] = $this->lang->line('error_save_image_failed');
						}
						
					} catch (Exception $ex) {
						$result['error'] = $ex->faultstring;
					}
				} catch( SoapFault $fault ) {
					$result['error'] = $fault->faultstring;
				}
			}
			else 
			{
				$result['error'] = $this->lang->line('error_destination_address');
			}
		}
		else 
		{
			$result['error'] = $this->lang->line('error_stamps_credentials');
		}
				
		return $result;
	}
}
