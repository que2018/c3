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

		$volumn = $sale['length'] * $sale['width'] * $sale['height'];

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
			'orderId'           => $sale['id'],
			'source'            => $this->config->item('jd_source'),
			'packageCount'      => 1,
			'senderAddress'     => $this->config->item('jd_sender_address'),
			'senderName'        => $this->config->item('jd_sender_name'),
			'senderProvince'    => $this->config->item('jd_sender_province'),
			'senderCity'        => $this->config->item('jd_sender_city'),
			'senderPostcode'    => $this->config->item('jd_sender_postcode'),
			'receiveName'       => $sale['name'],
			'receiveAddress'    => $sale['street'],
			'Province'          => $sale['state'],
			'city'              => $sale['city'],
			'country'           => $sale['country'],
			'postcode'          => $sale['zipcode'],	
			'salePlat'          => $this->config->item('jd_sale_plat'),
			'serviceLevel'      => $this->config->item('jd_service_level'),
			'pickMethod'        => $this->config->item('jd_service_pickup_method'),
			'description'       => $sale_detail,
			'collectionValue'   => $this->config->item('jd_collection_value'),
			'goodsType'         => $this->config->item('jd_good_type'),
			'goodsDtoList'      => $goodsDtoList
		);
					
		//$payload = "[".json_encode($data)."]";	
        $payload = "[{'source':'ISV','salePlat':'0010001','customerCode':'010K101','customerName':'ec139','orderId':'676555512','thrOrderId':'676555512','senderName':'MrGao','senderAddress':'Pergudangan Marunda Center, Sagara Makmur','senderMobile':'18811700000','senderProvince':'California','senderCity':'Fullerton','senderPostcode':'92831','receiveName':'GaoYaofei','receiveAddress':'Beijingdaxin','receiveTel':'1321313213','receiveMobile':'18811766317','province':'Arizona','city':'Casa Grande','postcode':'85193','packageCount':1,'collectionValue':1,'collectionMoney':100.00,'country':'US','urlArgs':'lyz'}]";
				
		$post_url = "http://test-gateway.jdwl.com/b2b/qli18n_waybill/glscOuterMerchantOrder/i18nReceiveOrderIsv";

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
		
		curl_close ($ch);

		/* ------------------------ login begin ------------------------ */
		
		file_put_contents("log.txt", "");
		file_put_contents("log.txt", "-------- xdate -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $xdate . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- content md5 -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $content_md5 . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- txt -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $txt . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- macUser -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $macUser . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- macKey -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $macKey . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- sign -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $sign . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- auth -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $auth . "\n\n", FILE_APPEND);
		file_put_contents("log.txt", "-------- response -------- \n\n", FILE_APPEND);
		file_put_contents("log.txt", $output . "\n\n", FILE_APPEND);

		/* ------------------------ login end ------------------------ */
	}
	
	private function generate_jd_label($sale_id, $deliveryId)
	{
		$data = array(
			'customerId'  => '',
			'orderId'     => $sale_id,
			'deliveryId'  => $deliveryId,
			'urlArgs'     => $this->config->item('jd_url_args')
		);
						
		$ch = curl_init();	

		curl_setopt($ch, CURLOPT_URL,"https://sit-api.sf-express-us.com/api/orderservice/submitorder");
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		$output = curl_exec($ch);
		
		file_put_contents("label.txt", serialize($output));

		curl_close ($ch); 
	}
	
	private function get_server_time() {		
		$dateTime = gmdate("D, d M Y H:i:s") . " GMT";
		
		return $dateTime;
    }
	
	private function HmacSHA1Encrypt(String $encryptText, String $encryptKey )
	{
		$signature = "";
		if(function_exists('hash_hmac')){
	 
			$hash_hmac = hash_hmac("sha1",$encryptText,$encryptKey,true);
			$signature = base64_encode($hash_hmac);
	 
		}else{
	 
			$blocksize = 64;
			$hashfunc  = 'sha1';
	 
			if(strlen($encryptKey) > $blocksize) {
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
}






