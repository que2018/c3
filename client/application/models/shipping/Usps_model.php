<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Usps_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install() 
	{
		
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'usps')); 
	}
	
	public function generate_sale_label($sale_id)
	{
		$this->load->library('stamps');
	
		$this->lang->load('shipping/usps');
	
		$this->load->model('sale/sale_model');
						
		//get shipping info
		$sale          = $this->sale_model->get_sale($sale_id);			
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		$sale_volume   = $this->sale_model->get_sale_volume($sale_id);
		$sale_weight   = $this->sale_model->get_sale_weight($sale_id);
		
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
						'Length'      => $sale_volume['length_max'],
						'Width'       => $sale_volume['width_max'],
						'Height'      => $sale_volume['height_max'],
						'ServiceType' => $sale['shipping_service'],
						'PackageType' => 'Package'
					) 
				);
				
				$requestParams['Rate']['WeightLb'] = $sale_weight['weight_pound'];
				$requestParams['Rate']['WeightOz'] = $sale_weight['weight_ounce'];

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
							$result['img']       = base_url(). $label_img;	
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
}
