<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Postpony_model extends CI_Model
{	
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'postpony')); 
	}
	
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
	
	public function generate_sale_label($sale_id)
	{
		$this->load->model('sale/sale_model');
		
		$this->lang->load('shipping/postpony');
				
		//get shipping info
		$sale = $this->sale_model->get_sale($sale_id);
		
		$data['sale_detail'] = $this->sale_model->get_sale_detail($sale_id);
	
		$data['key'] = $this->config->item('postpony_key');
		$data['pwd'] = $this->config->item('postpony_pwd');
		$data['authorized_key'] = $this->config->item('postpony_authorized_key');	
		$data['debug_mode'] = $this->config->item('postpony_debug_mode');	
		$data['owner'] = $this->config->item('postpony_owner');
		$data['company'] = $this->config->item('postpony_company');
		$data['street'] = $this->config->item('postpony_street');
		$data['street2'] = $this->config->item('postpony_street2');
		$data['city'] = $this->config->item('postpony_city');
		$data['state'] = $this->config->item('postpony_state');
		$data['postcode'] = $this->config->item('postpony_postcode');
		$data['country'] = $this->config->item('postpony_country');
		$data['phone'] = $this->config->item('postpony_phone');
		
		//service 
		$shipping_service = $this->get_service($sale['shipping_service']);
		
		$data['method'] = $shipping_service['method'];
		
		//recipient
		$data['to_name'] = $sale['name'];
		$data['to_company'] = '';
		$data['to_phone'] = $sale['phone'];
		
		if($sale['street2'])
		{
			$data['to_street'] = $sale['street'] .' '. $sale['street2'];
		}
		else
		{
			$data['to_street'] = $sale['street'];
		}
		
		$data['to_city'] = $sale['city'];		
		$data['to_state'] = $this->get_state_short($sale['state']);
		$data['to_postcode'] = $this->get_clean_zipcode($sale['zipcode']);
		
		//length & weight
		$data['length'] = $sale['length'];
		$data['width'] = $sale['width'];
		$data['height'] = $sale['height'];
		$data['weight'] = $sale['weight'];
		
		$response = $this->send_request($data);
								
		if($response->Sucess == 'true')
		{			
			$label_data = $response->LableData->base64Binary;
			
			$response_array = @json_decode(@json_encode($response), 1);
			
			$amount = $response_array['TotalFreight'];
						
			$tracking = $response_array['MainTrackingNum'];
												
			$label_img = 'img/shipping_label/' . $tracking . '.png';
			
			if(@file_put_contents($label_img, base64_decode($label_data)))
			{					
				$result = array(
					'tracking'   => $tracking,
					'label_img'  => $label_img,
					'amount'     => $amount
				);
			}
		}
		else
		{
			$result['error'] = $response->Msg;
		}
			
		return $result;
	}
	
	public function generate_checkout_label($checkout_id){}
	
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
		$xml .= '<CountryCode>'.$data['country'].'</CountryCode>';
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
		$xml .= '<CountryName>United States of America</CountryName>';
		$xml .= '<IsResidentialAddress>false</IsResidentialAddress>';
		$xml .= '</Recipient>';
		$xml .= '<Package>';
		$xml .= '<LabelId>0</LabelId>';
		$xml .= '<Weight>'.$data['weight'].'</Weight>';
		$xml .= '<ShipDate>2018-04-10T10:18:19.8642674+08:00</ShipDate>';
		$xml .= '<FTRCode>30.37 (a) </FTRCode>';
		$xml .= '<ContentsType>Gift</ContentsType>';
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
		$xml .= '<UnitPrice>1</UnitPrice>';
		$xml .= '<Description>teste</Description>';
		$xml .= '<Weight>'.$data['weight'].'</Weight>';
		$xml .= '<CustomsValue>1</CustomsValue>';
		$xml .= '<CountryOfOrigin>CN</CountryOfOrigin>';
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
