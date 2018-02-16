<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Postpony_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
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
		$this->lang->load('shipping/postpony');
	
		$this->load->model('sale/sale_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
						
		//get shipping info
		$sale = $this->sale_model->get_sale($sale_id);
		
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		
		$length_class = $this->length_class_model->get_length_class($sale['length_class_id']);
		
		$weight_class = $this->weight_class_model->get_weight_class($sale['weight_class_id']);
			
		$data['key'] = 	$this->config->item('postpony_key');
		$data['pwd'] = 	$this->config->item('postpony_pwd');
		$data['authorized_key'] = $this->config->item('postpony_authorized_key');
				
		$response = $this->send_request($data);
				
		$label_data = $response->LableData->base64Binary;
		
		//$tracking = $response->TrackNo;
		
		//$amount = $response->TotalFreight;
		
		$label_img = 'img/shipping_label/ted.png';
		
		if(@file_put_contents($label_img, base64_decode($label_data)))
		{					
			$result = array(
				'tracking'   => $tracking,
				'label_img'  => $label_img,
				'amount'     => $amount
			);
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
		$url = 'https://apitest.postpony.com/api/Ship';
		
		$xml  = '<?xml version="1.0" encoding="utf-8" ?>';
		$xml .= '<ShipRequest xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">';
		$xml .= '<UserCredential>';
		$xml .= '<Key>PY</Key>';
		$xml .= '<Pwd>pypypypypy</Pwd>';
		$xml .= '</UserCredential>';
		$xml .= '<AuthorizedKey>TESTTOKEN-ske39De3mkC39d</AuthorizedKey>';
		$xml .= '<LabelFormatType>PNG</LabelFormatType>';
		$xml .= '<RequstInfo>';
 		$xml .= '<Shipper>';
		$xml .= '<PersonName>my name</PersonName>';
		$xml .= '<CompanyName>shenma</CompanyName>';
		$xml .= '<PhoneNumber>2025551212</PhoneNumber>';
		$xml .= '<StreetLines>';
		$xml .= '<string>475 L Enfant Plaza SW</string>';
		$xml .= '<string>#4</string>';
		$xml .= '</StreetLines>';
		$xml .= '<City>Washington</City>';
		$xml .= '<StateOrProvinceCode>DC</StateOrProvinceCode>';
		$xml .= '<PostalCode>20260</PostalCode>';
		$xml .= '<CountryCode>US</CountryCode>';
		$xml .= '<CountryName>United States of America</CountryName>';
		$xml .= '<IsResidentialAddress xsi:nil="true" />';
		$xml .= '</Shipper>';
		$xml .= '<Recipient>';
		$xml .= '<PersonName>gaa</PersonName>';
		$xml .= '<CompanyName>shenzhou</CompanyName>';
		$xml .= '<PhoneNumber>8005763279</PhoneNumber>';
		$xml .= '<StreetLines>';
		$xml .= '<string>385 Sherman Ave. </string><string />';
		$xml .= '</StreetLines>';
		$xml .= '<City>Palo Alto</City>';
		$xml .= '<StateOrProvinceCode>CA</StateOrProvinceCode>';
		$xml .= '<PostalCode>94306</PostalCode>';
		$xml .= '<CountryCode>US</CountryCode>';
		$xml .= '<CountryName>United States of America</CountryName>';
		$xml .= '<IsResidentialAddress>false</IsResidentialAddress>';
		$xml .= '</Recipient>';
		$xml .= '<Package>';
		$xml .= '<LabelId>0</LabelId>';
		$xml .= '<Weight>0</Weight>';
		$xml .= '<ShipDate>2016-05-04T10:18:19.8642674+08:00</ShipDate>';
		$xml .= '<FTRCode>30.37 (a) </FTRCode>';
		$xml .= '<ContentsType>Gift</ContentsType>';
		$xml .= '<ElectronicExportType>NoEEISED</ElectronicExportType>';
		$xml .= '</Package>';
		$xml .= '<CustomsValue>1</CustomsValue>';
		$xml .= '<PackageItems>';
		$xml .= '<PackageItemInfo>';
		$xml .= '<PackageId>0</PackageId>';
		$xml .= '<Length>1</Length>';
		$xml .= '<Width>1</Width>';
		$xml .= '<Height>1</Height>';
		$xml .= '<Weight>1</Weight>';
		$xml .= '<WeightOz>0</WeightOz><Insurance>1</Insurance>';
		$xml .= '<UspsMailpiece>None</UspsMailpiece>';
		$xml .= '<IsOurInsurance>false</IsOurInsurance>';
		$xml .= '</PackageItemInfo>';
		$xml .= '</PackageItems>';
 		$xml .= '<CustomsList>';
		$xml .= '<CustomsItem>';
		$xml .= '<Quantity>1</Quantity>';
		$xml .= '<UnitPrice>1</UnitPrice>';
		$xml .= '<Description>teste</Description>';
		$xml .= '<Weight>1</Weight>';
		$xml .= '<CustomsValue>1</CustomsValue>';
		$xml .= '<CountryOfOrigin>CN</CountryOfOrigin>';
		$xml .= '</CustomsItem>';
		$xml .= '</CustomsList>'; 
 		$xml .= '<LbSize>S4X6</LbSize>';
		$xml .= '<Signature>None</Signature>';
		$xml .= '</RequstInfo>'; 
		$xml .= '<ShipType>FedEx2Day</ShipType>';
		$xml .= '</ShxipRequest>';
		
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
