<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Jd_model extends CI_Model
{	
	public function install(){}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'jd')); 
	}
	
	public function generate_sale_label($sale_id)
	{
		$this->load->model('sale/sale_model');

		//get sale info
		$sale = $this->sale_model->get_sale($sale_id);	
		$sale_detail = $this->sale_model->get_sale_detail($sale_id);
		$sale_products = $this->sale_model->get_sale_products($sale_id);

		$goodsDtoList = array();
		
		foreach($sale_products as $sale_product)
		{
			$goodsDtoList[] = array(
				'productId'            => $sale_product['id'],
				'snCode'               => '',
				'productName'          => $sale_product['name'],
				'productCount'         => $sale_product['quantity'],
				'halfReason'           => 0,
				'productNameLocleList' => ''
			);
		}
		
		$data = array(
			'source'            => $this->config->item('jd_source'),
			'salePlat'          => $this->config->item('jd_sale_plat'),
			'customerCode'      => $this->config->item('jd_customer_code'),
			'customerName'      => $sale['name'],
			'orderId'           => $sale['id'],
			'thrOrderId'        => $sale['id'],
			'senderName'        => $this->config->item('jd_sender_name'),
			'senderAddress'     => $this->config->item('jd_sender_address'),
			'senderMobile'      => $this->config->item('jd_sender_mobile'),
			'senderProvince'    => $this->config->item('jd_sender_province'),
			'senderCity'        => $this->config->item('jd_sender_city'),
			'senderPostcode'    => $this->config->item('jd_sender_postcode'),
			'receiveName'       => $sale['name'],
			'receiveAddress'    => $sale['street'],
			'receiveTel'    	=> $sale['phone'],
			'receiveMobile'    	=> $sale['phone'],
			'province'          => $sale['state'],
			'city'              => $sale['city'],
			'postcode'          => $sale['zipcode'],	
			'packageCount'      => 1,
			'collectionValue'   => $this->config->item('jd_collection_value'),
			'country'           => $sale['country'],
			'urlArgs'           => $this->config->item('jd_url_args'),
			'serviceLevel'      => $sale['shipping_service'],	
			'goodsDtoList'      => $goodsDtoList
			//'collectionMoney'   => 100.0,
			//'pickMethod'        => $this->config->item('jd_service_pickup_method'),
			//'description'       => $sale_detail,
			//'collectionValue'   => 
			//'goodsType'         => $this->config->item('jd_good_type'),
		);
				
		$payload = "[".json_encode($data)."]";	
								
		$post_url = "http://us-api.jd.com/b2b/ql_i18n_ldop_us/outerMerchantOrder/glscReceiveOrderUat";

		$content_md5 = MD5($payload);
		
		$macUser = $this->config->item('jd_user');
		$macKey = $this->config->item('jd_secret_key');

		$xdate = $this->get_server_time();
		$txt = "X-Date: " . $xdate . "\n" . "content-md5: " . $content_md5;
		$sign = $this->HmacSHA1Encrypt($txt, $macKey);		
		$auth = "hmac username=\"" . $macUser . "\", algorithm=\"hmac-sha1\", headers=\"X-Date content-md5\",signature=\"" . $sign . "\"";
		
		$ch = curl_init();	

		curl_setopt($ch, CURLOPT_URL, $post_url);
		
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'X-Date: '.$xdate,
			'content-md5: '.$content_md5,
			'Authorization: '.$auth,
			'content-type: application/json'
		));
		
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		$output = curl_exec($ch);
		
		curl_close($ch);
		
		$response = json_decode($output);
		
		/* ------------------------ login begin ------------------------ */
		
		file_put_contents("order.txt", "");
		file_put_contents("order.txt", "-------- xdate -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $xdate . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- content md5 -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $content_md5 . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- txt -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $txt . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- macUser -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $macUser . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- macKey -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $macKey . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- sign -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $sign . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- auth -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $auth . "\n\n", FILE_APPEND);
		file_put_contents("order.txt", "-------- response -------- \n\n", FILE_APPEND);
		file_put_contents("order.txt", $output . "\n\n", FILE_APPEND);

		/* ------------------------ login end ------------------------ */
		
		
		if($response->resultCode == 100)
		{	
			sleep(10);
	
			$delivery_id = $response->deliveryId;
									
			$result = $this->print_label($sale_id, $delivery_id);
		} 
		else
		{
			$result['error'] = $response->statusMessage;
		}
		
		return $result;
	}
	
	public function print_label($sale_id, $delivery_id)
	{
		$data = array(
			'customerId'  => 41,
			'orderId'     => $sale_id,
			'deliveryId'  => $delivery_id,
			'urlArgs'     => $this->config->item('jd_url_args')
		);
		
		$payload = "[".json_encode($data)."]";	
		
		file_put_contents("payload.txt", $payload);
		
		$post_url = "http://us-api.jd.com/b2b/ql_i18n_ldop_us/outerMerchantPrint/glscPrint4Uat";
					
		$content_md5 = MD5($payload);
		
		$macUser = $this->config->item('jd_user');
		$macKey = $this->config->item('jd_secret_key');

		$xdate = $this->get_server_time();
		$txt = "X-Date: " . $xdate . "\n" . "content-md5: " . $content_md5;
		$sign = $this->HmacSHA1Encrypt($txt, $macKey);		
		$auth = "hmac username=\"" . $macUser . "\", algorithm=\"hmac-sha1\", headers=\"X-Date content-md5\",signature=\"" . $sign . "\"";
		
		$ch = curl_init();	

		curl_setopt($ch, CURLOPT_URL, $post_url);
		
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'X-Date: '.$xdate,
			'content-md5: '.$content_md5,
			'Authorization: '.$auth,
			'content-type: application/json'
		));

		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		$output = curl_exec($ch);
		
		curl_close($ch);
				
		$response = json_decode($output);
		
		file_put_contents("label.txt", $output);
		
		if($response->statusCode == 0)
		{
			$data = $response->data;
						
			foreach($data as $tracking => $base64_strings) 
			{
				$result['tracking'] = $tracking;
				$result['amount'] = 30;
				$result['label_img'] = '';
				
				foreach($base64_strings as $index => $base64_string)
				{	
					$pdf_decoded = base64_decode($base64_string);
					$pdf = fopen($index.'.pdf','w');
					fwrite($pdf, $pdf_decoded);
					fclose($pdf);
				
					//$this->base64_to_pdf($value);
				}
			}
		}
		else
		{
			$result['error'] = $response->statusMessage;
		}
		
		return $result;
	}
	
	private function get_server_time() {		
		$dateTime = gmdate("D, d M Y H:i:s") . " GMT";
		
		return $dateTime;
    }
	
	private function HmacSHA1Encrypt(String $encryptText, String $encryptKey )
	{
		$signature = "";
		
		if(function_exists('hash_hmac'))
		{
			$hash_hmac = hash_hmac("sha1",$encryptText,$encryptKey,true);
			$signature = base64_encode($hash_hmac);
	 
		}else
		{
			$blocksize = 64;
			$hashfunc  = 'sha1';
	 
			if(strlen($encryptKey) > $blocksize) 
			{
				$encryptKey = pack("H*", $hashfunc($encryptKey));
			}
	 
			$encryptKey = str_pad($encryptKey, $blocksize, chr(0x00));
			$ipad = str_repeat(chr(0x36), $blocksize);
			$opad = str_repeat(chr(0x5c), $blocksize);
			$hmac = pack("H*", $hashfunc(($encryptKey ^ $opad).pack('H*', $hashfunc(($encryptKey ^ $ipad).$str))));
			$signature = base64_encode($hmac);
		}
		
		return $signature;
	}
	
	private function base64_to_pdf($base64_string) {
		$pdf_decoded = base64_decode($base64_string);
		$pdf = fopen ('test.pdf','w');
		fwrite($pdf,$pdf_decoded);
		fclose($pdf);
	}
}






