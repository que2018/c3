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
		$this->lang->load('shipping/jd');

		$this->load->model('sale/sale_model');
	
		$sale = $this->sale_model->get_sale($sale_id);	
		
		if(empty($sale['jd_delivery_id']))
		{
			$result = $this->generate_delivery_id($sale_id);
		}
		else if(!empty($sale['jd_delivery_id']) && empty($sale['tracking']))
		{
			$result = $this->print_label($sale_id);
		}
		else
		{
			$result['error'] = $this->lang->line('error_label_printed');
		}
		
		return $result;
	}
	
	private function generate_delivery_id($sale_id) 
	{
		$this->lang->load('shipping/jd');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');

		$sale = $this->sale_model->get_sale($sale_id);	
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		
		$store_id = $sale['store_id'];
		
		$store = $this->store_model->get_store($store_id);		
		$client = $this->client_model->get_client($store['client_id']);	

		$goodsDtoList = array();
		
		foreach($sale_products as $sale_product)
		{
			$goodsDtoList[] = array(
				'productId'            => $sale_product['id'],
				'snCode'               => '',
				'productName'          => $sale_product['name'],
				'productCount'         => $sale_product['quantity'],
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
			'senderName'        => $client['firstname'].' '.$client['lastname'],
			'senderAddress'     => trim($client['street']),	
			'senderMobile'      => trim($client['phone']),	
			'senderProvince'    => trim($client['state']),	
			'senderCity'        => trim($client['city']),	
			'senderPostcode'    => trim($client['zipcode']),	
			'receiveName'       => $sale['name'],	
			'receiveAddress'    => trim($sale['street']),
			'receiveTel'    	=> ($sale['phone'])?$sale['phone']:$client['phone'],
			'receiveMobile'    	=> ($sale['phone'])?$sale['phone']:$client['phone'],
			'province'          => $this->get_state_long(trim($sale['state'])),	
			'city'              => trim($sale['city']),	
			'postcode'          => trim($sale['zipcode']),	
			'packageCount'      => 1,
			'collectionValue'   => $this->config->item('jd_collection_value'),
			'country'           => 'US',
			'urlArgs'           => $this->config->item('jd_url_args'),
			'serviceLevel'      => $sale['shipping_service'],	
			'goodsDtoList'      => $goodsDtoList
		);
				
		$payload = "[".json_encode($data)."]";	
								
		//$post_url = "http://us-api.jd.com/b2b/ql_i18n_ldop_us/outerMerchantOrder/glscReceiveOrderUat";
		$post_url = "https://us-api.jd.com/b2b/ql_i18n_ldop_us/outerMerchantOrder/glscReceiveOrderIsv";

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
		
		if($output)
		{
			$response = json_decode($output);

			if(isset($response))
			{
				if($response->resultCode == 100)
				{	
					$delivery_id = $response->deliveryId;
					
					$this->sale_model->update_jd_delivery_id($sale_id, $delivery_id);

					$result['success'] = true; 
					$result['pending'] = true; 
					$result['message'] = $this->lang->line('text_delivery_id_success');						
				} 
				else
				{
					$result['success'] = false; 
					$result['message'] = $this->lang->line('text_order_error').$response->resultMessage;
				}
			}
			else
			{
				$result['success'] = false; 
				$result['message'] = $this->lang->line('error_jd_response_format');
			}
		}
		else
		{
			$result['success'] = false; 
			$result['message'] = $this->lang->line('error_jd_gateway_no_response');
		}
		
		return $result;
	}
	
	public function print_label($sale_id)
	{
		$this->load->library('distance');
		$this->load->library('pdftoimage');
		
		$this->load->model('sale/sale_model');

		$sale = $this->sale_model->get_sale($sale_id);	
		
		$delivery_id = $sale['jd_delivery_id'];
		
		$data = array(
			'customerId'  => $this->config->item('jd_customer_id'),
			'orderId'     => $sale_id,
			'deliveryId'  => $delivery_id,
			'urlArgs'     => $this->config->item('jd_url_args')
		);
		
		$payload = "[".json_encode($data)."]";	
				
		//$post_url = "http://us-api.jd.com/b2b/ql_i18n_ldop_us/outerMerchantPrint/glscPrint4Uat";
		$post_url = "https://us-api.jd.com/b2b/ql_i18n_ldop_us/outerMerchantPrint/glscPrint";
					
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
		
		if($output)
		{
			$response = json_decode($output, true);
			
			if(isset($response))
			{
				if($response['statusCode'] == 0)
				{
					$data = $response['data'];
				
					//tracking
					$trackings = array_keys($data);
					$tracking = $trackings[0];
					
					//label data
					$base64_strings = reset($data);
					$base64_string = $base64_strings[0];
					$pdf_decoded = base64_decode($base64_string);
					
					$label_pdf = LABELPATH . $tracking . '.pdf';
					
					$pdf = fopen($label_pdf, 'w');
					$write_result = fwrite($pdf, $pdf_decoded);
					fclose($pdf);
					
					if($write_result)
					{
						$label_img = LABELPATH . $tracking . '.jpg';
						
						$convert_result = $this->pdftoimage->convert($label_pdf, $label_img);

						if($convert_result)
						{
							$amount = $this->get_shipping_fee($sale_id);
							$gas_fee = (int)$this->config->item('jd_gas_fee');

							$result['success'] = true; 
							$result['tracking'] = $tracking;
							$result['amount'] = $amount;
							$result['amount_addi'] = (int)$amount * $gas_fee / 100;	
							$result['label_img'] = $tracking . '.jpg';	
						}
						else
						{
							$result['success'] = false; 
							$result['message'] = $this->lang->line('error_pdf_image_conversion');
						}	
					}
					else
					{
						$result['success'] = false; 
						$result['message'] = $this->lang->line('error_write_pdf');
					}
				}
				else
				{		
					$result['success'] = false; 
					$result['message'] = $this->lang->line('text_print_error').$response['statusMessage'];
				}
			}
			else
			{
				$result['success'] = false; 
				$result['message'] = $this->lang->line('error_jd_response_format');
			}
		}
		else
		{
			$result['success'] = false; 
			$result['message'] = $this->lang->line('error_jd_gateway_no_response');
		}
		
		return $result;
	}
	
	public function get_shipping_fee($sale_id) 
	{
		$this->load->library('phpexcel');
		$this->load->library('distance');

		$this->load->model('sale/sale_model');
		$this->load->model('setting/weight_class_model');

		$zone_column_mapping = array(
			2   => 'B',
			3   => 'C',
			4   => 'D',
			5   => 'E',
			6   => 'F',
			7   => 'G',
			8   => 'H',
			9   => 'I',
			10  => 'J'
		);

		$sale = $this->sale_model->get_sale($sale_id);	
		
		//get zone
		$column = null;
		
		$state = $this->get_state_long(trim($sale['state']));

		if((strtolower($state) == 'hawaii')||(strtolower($state) == 'alaska'))
		{
			$zipcode = (int)$sale['zipcode'];

			$jd_fedex_zones_mapping_addi = $this->config->item('jd_fedex_zone_mapping_addi');
			
			if($jd_fedex_zones_mapping_addi)
			{
				foreach($jd_fedex_zones_mapping_addi as $jd_fedex_zone_mapping_addi)
				{
					$zipcode_from = (int)$jd_fedex_zone_mapping_addi['zipcode_from'];
					$zipcode_to   = (int)$jd_fedex_zone_mapping_addi['zipcode_to'];
						
					if($sale['shipping_service'] == 'FEDEX_GRD')
					{
						$zone = $jd_fedex_zone_mapping_addi['ground_zone'];
					}
					else
					{
						$zone = $jd_fedex_zone_mapping_addi['express_zone'];
					}	
						
					if(($zipcode_from <= $zipcode) && ($zipcode <= $zipcode_to))
					{
						$column = $zone_column_mapping[$zone];
						
						break;
					}	
				}
			}
		}
		else
		{
			$zipcode_prefix = (int)substr($sale['zipcode'], 0, 3);

			$jd_fedex_zones_mapping = $this->config->item('jd_fedex_zone_mapping');
			
			if($jd_fedex_zones_mapping)
			{
				foreach($jd_fedex_zones_mapping as $jd_fedex_zone_mapping)
				{
					$zipcode_from = (int)$jd_fedex_zone_mapping['zipcode_from'];
					$zipcode_to   = (int)$jd_fedex_zone_mapping['zipcode_to'];
					
					if($sale['shipping_service'] == 'FEDEX_GRD')
					{
						$zone = $jd_fedex_zone_mapping['ground_zone'];
					}
					else if($sale['shipping_service'] == 'FEDEX_2D')
					{
						$zone = $jd_fedex_zone_mapping['express_zone'];
					}
					else
					{
						$zone = $jd_fedex_zone_mapping['ground_zone'];
					}
					
					if(($zipcode_from <= $zipcode_prefix) && ($zipcode_prefix <= $zipcode_to))
					{
						$column = $zone_column_mapping[$zone];
						
						break;
					}	
				}
			}
		}
						
		if($column)
		{
			//get weight in lbs
			$weight = $sale['weight'];
			$weight_class_id = $sale['weight_class_id'];
			$weight = $this->weight_class_model->to_config($weight_class_id, $weight);	
			
			//run pricing table
			if($sale['shipping_service'] == 'FEDEX_GRD') 
				$jd_price_table = $this->config->item('jd_fedex_ground_price_table');
			
			if($sale['shipping_service'] == 'FEDEX_2D') 
				$jd_price_table = $this->config->item('jd_fedex_two_day_price_table');

			if($sale['shipping_service'] == 'DHL_EXPM') 
				$jd_price_table = $this->config->item('jd_dhl_express_price_table');
			
			if($sale['shipping_service'] == 'UPS_GROUND') 
				$jd_price_table = $this->config->item('jd_ups_ground_price_table');
		
			if(file_exists($jd_price_table))
			{
				try {
					//get price table
					$fileType = PHPExcel_IOFactory::identify($jd_price_table);
					$objReader = PHPExcel_IOFactory::createReader($fileType);
					$objPHPExcel = $objReader->load($jd_price_table);
					
					$sheet = $objPHPExcel->getSheet(0); 
					$highestRow = $sheet->getHighestRow(); 
					$highestColumn = $sheet->getHighestColumn();
									
					$price = null;

					for($row = 2; $row <= $highestRow; $row++) 
					{
						$cell = $sheet->getCell("A".$row);
						
						$weight_threshold = $cell->getValue();
												
						if($weight > $weight_threshold)
						{
							continue;
						}
						else
						{
							$cell = $sheet->getCell($column.$row);
							
							$price = $cell->getValue();
							
							break;
						}
					}
					
					if(isset($price))
					{
						return $price;
					}
					else
					{
						return false;
					}
					
				} catch(Exception $e) {
					return false;
				}
			}
			else
			{
				return false;
			}
		}
		else
		{
			return false;
		}
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
		}
		else
		{
			$blocksize = 64;
			$hashfunc = 'sha1';
	 
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
	
	private function get_state_long($state)
	{	
		$state_long = $state;
	
		$states_mappping = $this->config->item('jd_state_mapping');
		
		if($states_mappping)
		{			
			foreach($states_mappping as $state_mappping)
			{
				if(strtolower($state_mappping['state_short']) == strtolower($state))
				{
					$state_long = $state_mappping['state_long'];
					
					break;
				}
			}
		}
		
		return $state_long;	
	}
}






