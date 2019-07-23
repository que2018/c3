<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sf_model extends CI_Model
{	
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'sf')); 
	}
	
	public function generate_sale_label($sale_id)
	{
		$ch = curl_init();

		$data['Order'] = array(
			'OrderId'           => 'value1',
			'CneeContactName'   => 'value1',
			'CneeCompany'       => 'value1',
			'CneeAddress'       => 'value1',
			'CneeCity'          => 'value1',
			'CneeProvince'      => 'value1',
			'CneeCountry'       => 'value1',
			'CneePostCode'      => 'value1',
			'CneePhone'         => 'value1',
			'CneeEmail'         => 'value1',
			'ReferenceNo1'      => 'value1',
			'ExpressType'       => 'value1',
			'ParcelQuantity'    => 'value1',
			'PayMethod'         => 'value1',
			'TaxPayType'        => 'value1',
			'Currency'          => 'value1',
			'Items'             => 'value1',
			'GateWay'           => 'value1',
			'postvar1'          => 'value1',
			'postvar1'          => 'value1'
		);

		curl_setopt($ch, CURLOPT_URL,"https://sit-api.sf-express-us.com/api/orderservice/submitorder");
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		$output = curl_exec($ch);

		curl_close ($ch);
		
		file_put_contents("log.txt", serialize($output));
	}
}






