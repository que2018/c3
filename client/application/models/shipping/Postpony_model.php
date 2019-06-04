<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Postpony_model extends CI_Model
{	
	public function get_service($code)
	{	
		$q = $this->db->get_where('setting', array('key' => 'postpony_service'));
	
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
	
	public function rating($sale) 
	{		
		if($this->config->item('postpony_debug_mode'))
		{
			$url = 'https://apitest.postpony.com/api/Rate';
		}
		else
		{
			$url = 'https://api.postpony.com/api/Rate';
		}
			
		$xml  = '<ShippingRatesRequest xmlns:xsi="http://www.w3.org/2001/XMLSchemainstance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">';
		$xml .= '<UserCredential>';
		$xml .= '<Key>'.$this->config->item('postpony_key').'</Key>';
		$xml .= '<Pwd>'.$this->config->item('postpony_pwd').'</Pwd>';
		$xml .= '</UserCredential>';
		$xml .= '<PackageInfos>';
		$xml .= '<PackageItemInfo>';
		//$xml .= '<PackageId>0</PackageId>';
		$xml .= '<Length>'.$sale['length'].'</Length>';
		$xml .= '<Width>'.$sale['width'].'</Width>';
		$xml .= '<Height>'.$sale['height'].'</Height>';
		$xml .= '<Weight>'.$sale['weight'].'</Weight>';
		//$xml .= '<WeightOz>0</WeightOz>';
		$xml .= '<Insurance>1</Insurance>';
		//$xml .= '<UspsMailpiece>None</UspsMailpiece>';
		$xml .= '<IsOurInsurance>false</IsOurInsurance>';
		$xml .= '</PackageItemInfo>';
		$xml .= '</PackageInfos>';
		//$xml .= '<TotalInsuredValue xsi:nil="true"/>';
		$xml .= '<OriginalAddress>';
		$xml .= '<PersonName>'.$this->config->item('postpony_owner').'</PersonName>';
		$xml .= '<CompanyName>'.$this->config->item('postpony_company').'</CompanyName>';
		$xml .= '<PhoneNumber>'.$this->config->item('postpony_phone').'</PhoneNumber>';
		$xml .= '<StreetLines>';
		$xml .= '<string>'.$this->config->item('postpony_street').'</string>';
		$xml .= '<string>'.$this->config->item('postpony_street2').'</string>';
		$xml .= '</StreetLines>';
		$xml .= '<City>'.$this->config->item('postpony_city').'</City>';
		$xml .= '<StateOrProvinceCode>'.$this->config->item('postpony_state').'</StateOrProvinceCode>';
		$xml .= '<PostalCode>'.$this->config->item('postpony_postcode').'</PostalCode>';
		$xml .= '<CountryCode>US</CountryCode>';
		$xml .= '<CountryName>United States of America</CountryName>';
		$xml .= '<IsResidentialAddress>false</IsResidentialAddress>';
		$xml .= '</OriginalAddress>';
		$xml .= '<DestinationAddress>';
		$xml .= '<PersonName>'.$sale['name'].'</PersonName>';
		$xml .= '<CompanyName></CompanyName>';
		$xml .= '<PhoneNumber>'.$sale['phone'].'</PhoneNumber>';
		$xml .= '<StreetLines>';
		$xml .= '<string>'.$sale['street'].'</string>';
		$xml .= '<string>'.$sale['street2'].'</string>';
		$xml .= '</StreetLines>';
		$xml .= '<City>'.$sale['city'].'</City>';
		$xml .= '<StateOrProvinceCode>'.$sale['state'].'</StateOrProvinceCode>';
		$xml .= '<PostalCode>'.$sale['zipcode'].'</PostalCode>';
		$xml .= '<CountryCode>US</CountryCode>';
		$xml .= '<CountryName>United States of America</CountryName>';
		//$xml .= '<IsResidentialAddress>ture</IsResidentialAddress>';
		$xml .= '</DestinationAddress>';
		//$xml .= '<CustomValue>1</CustomValue>';
		$xml .= '<UpsRate>true</UpsRate>';
		$xml .= '<CanGetBaseRate>true</CanGetBaseRate>';
		$xml .= '</ShippingRatesRequest>';
				
		$headers = array(
			'Content-type: text/xml',
			'Content-length: ' . strlen($xml),
			'Connection: close'
		);
		
		$ch = curl_init(); 
		
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 10);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $xml);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

		$response = curl_exec($ch); 
								
		$result = simplexml_load_string($response);
		
		$this->load->model('extension/shipping_model');
				
		$shipping_services_data = $this->shipping_model->get_shipping_services($sale['shipping_provider']);
					
		if($shipping_services_data) 
		{
			foreach($shipping_services_data as $shipping_service_data) 
			{
				if($shipping_service_data['code'] == $sale['shipping_service']){
					$service_method = $shipping_service_data['method'];
					$service_method_name = $shipping_service_data['name'];
				}
			}
		}
		
		if(!$result){
			$outdata = array(
				'success' => false,
				'error'   => "NO data"
			);
		}else{
			if(!$result->Sucess){
				$outdata = array(
					'success' => false,
					'error'   => $result['error']
				);
			}else{
				
				$result_array = @json_decode(@json_encode($result), 1);
				
				$Fedex = array();
				$Usps = array();
				$Ups = array();
				if($result_array['Fedex']['Sucess'] == 'true'){
					$Fedex = $result_array['Fedex']['Data']['RateResultDetail'];
				}
				if($result_array['Usps']['Sucess'] == 'true'){
					$Usps = $result_array['Usps']['Data']['RateResultDetail'];
				}
				if($result_array['Ups']['Sucess'] == 'true'){
					$Ups = $result_array['Ups']['Data']['RateResultDetail'];
				}
				
				$service_p = explode(" ", $service_method_name);

				if($service_p[0] == "Fedex"){
					foreach($Fedex as $f){
						if($f['ShipType'] == $service_method){
							$rate = $f['Price'];
						}
					}
				}else if($service_p[0] == "UPS"){
					foreach($Ups as $f){
						if($f['ShipType'] == $service_method){
							$rate = $f['Price'];
						}
					}
				}else if($service_p[0] == "USPS"){
					foreach($Usps as $f){
						if($f['ShipType'] == $service_method){
							$rate = $f['Price'];
						}
					}
				}
				
				$this->load->model('store/store_model');
				
				$store = $this->store_model->get_store($sale['store_id']);	
					
				if($store && isset($rate))
				{
					$client_id = $store['client_id'];
					$code = $sale['shipping_provider'];
					
					if($this->config->item($code . '_fee_type'))
					{
						$ratio = $this->get_client_fee_value($client_id, $code);
						
						$markup = $rate * $ratio;
					}
					else 
					{
						$markup = $this->get_client_fee_value($client_id, $code);
					}					
						
					$rate = money_format('%n', $rate + $markup);	
				}
				
				if(isset($rate)){
					$outdata = array(
						'success'    => true,
						'rate'       => $rate
					);
				}else{
					$outdata = array(
						'success'    => false,
						'error'      => "NOT FOUND"
					);
				}
			}
		}
			
		return $outdata;
	}
	
	private function get_client_fee_value($client_id, $shipping_provider)
	{
		$client_fee_value = $this->config->item($shipping_provider . '_fee_value');
		
		$client_fees = $this->config->item($shipping_provider . '_client_fee');
		
		if($client_fees)
		{
			foreach($client_fees as $client_fee)
			{
				if($client_fee['client_id'] == $client_id)
				{
					$client_fee_value = $client_fee['fee'];
					break;
				}
			}
		}
		
		return $client_fee_value;
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
	
	protected function send_request($data)
	{	
		if($data['debug_mode'])
		{
			$url = 'https://apitest.postpony.com/api/Ship';
		}
		else
		{
			$url = 'https://api.postpony.com/api/Ship';
		}
			
		$shipDate = date("Y-m-d\TH:i:s");
							
		$xml  = '<?xml version="1.0" encoding="utf-8" ?>';
		$xml .= '<ShipRequest xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">';
		$xml .= '<UserCredential>';
		$xml .= '<Key>'.$data['key'].'</Key>';
		$xml .= '<Pwd>'.$data['pwd'].'</Pwd>';
		$xml .= '</UserCredential>';
		$xml .= '<AuthorizedKey>'.$data['authorized_key'].'</AuthorizedKey>';
		$xml .= '<LabelFormatType>PNG</LabelFormatType>';
		$xml .= '<RequstInfo>';
 		$xml .= '<Shipper>';
		$xml .= '<PersonName>'.$data['owner'].'</PersonName>';
		$xml .= '<CompanyName>'.$data['company'].'</CompanyName>';
		$xml .= '<PhoneNumber>'.$data['phone'].'</PhoneNumber>';
		$xml .= '<StreetLines>';
		$xml .= '<string>'.$data['street'].'</string>';
		$xml .= '<string>'.$data['street2'].'</string>';
		$xml .= '</StreetLines>';
		$xml .= '<City>'.$data['city'].'</City>';
		$xml .= '<StateOrProvinceCode>'.$data['state'].'</StateOrProvinceCode>';
		$xml .= '<PostalCode>'.$data['postcode'].'</PostalCode>';
		$xml .= '<CountryCode>US</CountryCode>';
		$xml .= '<CountryName>'.$data['country'].'</CountryName>';
		$xml .= '<IsResidentialAddress xsi:nil="true" />';
		$xml .= '</Shipper>';
		$xml .= '<Recipient>';
		$xml .= '<PersonName>'.$data['to_name'].'</PersonName>';
		$xml .= '<CompanyName>'.$data['to_company'].'</CompanyName>';
		$xml .= '<PhoneNumber>'.$data['to_phone'].'</PhoneNumber>';
		$xml .= '<StreetLines>';
		$xml .= '<string>'.$data['to_street'].'</string><string />';
		$xml .= '</StreetLines>';
		$xml .= '<City>'.$data['to_city'].'</City>';
		$xml .= '<StateOrProvinceCode>'.$data['to_state'].'</StateOrProvinceCode>';
		$xml .= '<PostalCode>'.$data['to_postcode'].'</PostalCode>';
		$xml .= '<CountryCode>US</CountryCode>';
		$xml .= '<CountryName>United States</CountryName>';
		$xml .= '<IsResidentialAddress>false</IsResidentialAddress>';
		$xml .= '</Recipient>';
		$xml .= '<Package>';
		$xml .= '<LabelId>0</LabelId>';
		$xml .= '<Weight>'.$data['weight'].'</Weight>';
		$xml .= '<ShipDate>'.$shipDate.'</ShipDate>';
		$xml .= '<FTRCode>30.37 (a) </FTRCode>';
		$xml .= '<ContentsType>Product</ContentsType>';
		$xml .= '<ElectronicExportType>NoEEISED</ElectronicExportType>';
		$xml .= '<ShippingNotes>'.$data['sale_detail'].'</ShippingNotes>';
		$xml .= '</Package>';
		$xml .= '<CustomsValue>1</CustomsValue>';
		$xml .= '<PackageItems>';
		$xml .= '<PackageItemInfo>';
		$xml .= '<PackageId>0</PackageId>';
		$xml .= '<Length>'.$data['length'].'</Length>';
		$xml .= '<Width>'.$data['width'].'</Width>';
		$xml .= '<Height>'.$data['height'].'</Height>';
		$xml .= '<Weight>'.$data['weight'].'</Weight>';
		$xml .= '<WeightOz>0</WeightOz>';
		$xml .= '<Insurance>0</Insurance>';
		$xml .= '<UspsMailpiece>None</UspsMailpiece>';
		$xml .= '<IsOurInsurance>false</IsOurInsurance>';
		$xml .= '</PackageItemInfo>';
		$xml .= '</PackageItems>';
 		$xml .= '<CustomsList>';
		$xml .= '<CustomsItem>';
		$xml .= '<Quantity>1</Quantity>';
		$xml .= '<UnitPrice>0</UnitPrice>';
		$xml .= '<Description>product</Description>';
		$xml .= '<Weight>'.$data['weight'].'</Weight>';
		$xml .= '<CustomsValue>1</CustomsValue>';
		$xml .= '<CountryOfOrigin>US</CountryOfOrigin>';
		$xml .= '</CustomsItem>';
		$xml .= '</CustomsList>'; 
 		$xml .= '<LbSize>S4X6</LbSize>';
		$xml .= '<Signature>None</Signature>';
		$xml .= '</RequstInfo>'; 
		$xml .= '<ShipType>'.$data['method'].'</ShipType>';
		$xml .= '</ShipRequest>';
				
		$headers = array(
			'Content-type: text/xml',
			'Content-length: ' . strlen($xml),
			'Connection: close'
		);
		
		$ch = curl_init(); 
		
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 10);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $xml);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

		$response = curl_exec($ch); 
								
		$result = simplexml_load_string($response);
		
		return $result;
	}
}