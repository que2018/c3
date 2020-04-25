<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Import extends MX_Controller 
{	
	public function index() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('extension/shipping_model');

		$this->header->add_style(base_url(). 'assets/css/app/sale/sale_import.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/basic.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/dropzone.css');
		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');

		$this->header->set_title($this->lang->line('text_order_import'));

		//stores
		$stores = $this->store_model->get_stores();
				
		$data['stores'] = array();
		
		if($stores)
		{
			foreach($stores as $store) 
			{
				$data['stores'][] = array(
					'store_id' => $store['store_id'],
					'name'     => $store['name']
				);
			}
		}
		
		//shipping providers
		$data['shipping_providers'] = array();
		
		$shipping_providers_data = $this->shipping_model->get_shipping_providers();
				
		foreach($shipping_providers_data as $shipping_provider_data) 
		{
			$code = $shipping_provider_data['code'];
			
			if($this->config->item($code .'_status'))
			{
				$data['shipping_providers'][] = array(
					'code'     => $shipping_provider_data['code'],
					'name'     => $shipping_provider_data['name']
				);
			}
		}
		
		//shipping providers
		$data['shipping_services'] = array();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');	
		
		$this->load->view('sale/sale_import', $data);
	}
	
	public function upload() 
	{
		$this->lang->load('sale/sale');
				
		if(!empty($_FILES)) 
		{	
			$temp_file = $_FILES['file']['tmp_name'];    

			//extension error
			$extension = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);			
			  
			if($extension != 'xlsx') 
			{
				$outdata = array(
					'success'  => false,
					'message'  => $this->lang->line('error_file_type_not_excel')
				);
			
				echo json_encode($outdata);
				die();
			}
			
			//no store id
			$store_id = $this->input->post('store_id');
			
			if(!$store_id)
			{
				$messages[] = $this->lang->line('error_store_not_select');
				
				$outdata = array(
					'success'   => false,
					'messages'  => $messages
				);
				
				echo json_encode($outdata);
				die();
			}
			
			//no shipping provider
			$shipping_provider = $this->input->post('shipping_provider');
			
			if(!$shipping_provider)
			{
				$messages[] = $this->lang->line('error_shipping_provider_not_select');
				
				$outdata = array(
					'success'   => false,
					'messages'  => $messages
				);
				
				echo json_encode($outdata);
				die();
			}
			
			//no shipping service
			$shipping_service = $this->input->post('shipping_service');
			
			if(!$shipping_service)
			{
				$messages[] = $this->lang->line('error_shipping_service_not_select');
				
				$outdata = array(
					'success'   => false,
					'messages'  => $messages
				);
				
				echo json_encode($outdata);
				die();
			}
			
			$target_file = FILEPATH . $_FILES['file']['name'];  
	 
			move_uploaded_file($temp_file, $target_file);
												
			$result = $this->import_excel($store_id, $shipping_provider, $shipping_service, $target_file);
			
			if($result['success'])
			{
				$outdata = array(
					'success'   => true,
					'messages'  => $result['messages']
				);	
			}
			else
			{
				$outdata = array(
					'success'   => false,
					'messages'  => $result['messages']
				);
			}
			
			echo json_encode($outdata);
			die();
		}	
	}
	
	protected function import_excel($store_id, $shipping_provider, $shipping_service, $file) 
	{
		$this->load->library('phpexcel');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('catalog/product_model');
		
		$store = $this->store_model->get_store($store_id);

		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$rows = $sheet->getHighestDataRow(); 
	
		$validated = true;
		
		$sales = array();
		
		$messages = array();
		
		for($i = 2; $i <= $rows; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':Q' . $i, null, true, false);

			$store_sale_id  = $row[0][0];
			$date_added     = isset($row[0][1])?$row[0][1]:date('Y-m-d H:i:s');
			$sku 			= $row[0][2];
			$quantity 	    = isset($row[0][3])?$row[0][3]:1;
			$name 	    	= $row[0][4];
			$street 	    = $row[0][5];
			$street2 		= isset($row[0][6])?$row[0][6]:'';
			$city 			= $row[0][7];
			$state 			= $row[0][8];
			$zipcode 		= $row[0][9];	
			$country 		= isset($row[0][10])?$row[0][10]:'United States';
			$email 		    = isset($row[0][11])?$row[0][11]:'';
			$phone 		    = isset($row[0][12])?$row[0][12]:'';
			$length_value   = isset($row[0][13])?$row[0][13]:'';
			$width_value    = isset($row[0][14])?$row[0][14]:'';
			$height_value   = isset($row[0][15])?$row[0][15]:'';
			$weight_value   = isset($row[0][16])?$row[0][16]:'';
								
			//data error
			if(!$store_sale_id || !$name || !$street || !$city || !$state || !$zipcode)
			{
				$messages[] = sprintf($this->lang->line('error_row_data'), $i);
				
				if($validated)
					$validated = false;
			}
			
			//product not exist		
			$product_info = $this->product_model->get_product_by_sku($sku);
			
			if(!$product_info && (empty($length_value) || empty($width_value) || empty($height_value) || empty($weight_value))) 
			{
				if(!$product_info) 
				{
					$messages[] = sprintf($this->lang->line('error_sku_not_found'), $i, $sku);
				}
				
				if(empty($length_value) || empty($width_value) || empty($height_value) || empty($weight_value)) 
				{
					$messages[] = sprintf($this->lang->line('error_dimension_not_found'), $i);
				}
					
				if($validated)
					$validated = false;
			}
			else if($product_info && ($product_info['client_id'] != $store['client_id']))
			{				
				$messages[] = sprintf($this->lang->line('error_sku_client_error'), $i, $sku);
				
				if($validated)
					$validated = false;
			}
			
			//sale exist
			$sale_info = $this->sale_model->get_sale_by_store_sale_id($store_sale_id);
			
			if($sale_info) 
			{
				$messages[] = sprintf($this->lang->line('error_order_exist'), $store_sale_id);
				
				if($validated)
					$validated = false;
			}
							
			if($validated)
			{
				if(!empty($length_value) && !empty($width_value) && !empty($height_value) && !empty($weight_value))
				{
					$volume = array(
						'length'          => $length_value,
						'width'           => $width_value,
						'height'          => $height_value,
						'length_class_id' => $this->config->item('config_length_class_id'),
					);
					
					$weight = array(
						'weight'          => $weight_value,
						'weight_class_id' => $this->config->item('config_weight_class_id'),
					);
					
					$sale_products = [];
						
					$sale_products[] = array(
						'product_id'   => 0,
						'quantity' 	   => $quantity
					);
				}
				else
				{
					$sale_products_params = array();
					
					$sale_products_params[$product_info['id']] = $quantity;
				
					$volume = $this->sale_model->get_sale_products_volume($sale_products_params);
									
					//two way of set up weight
					$weight = $this->sale_model->get_sale_products_weight($sale_products_params);
					
					if($weight_value)
					{
						$weight['weight'] = $weight_value;
					}
						
					$sale_products = [];
						
					$sale_products[] = array(
						'product_id'   => $product_info['id'],
						'quantity' 	   => $quantity
					);
				}
						
				$sales[] = array(
					'store_id'           => $store_id,
					'store_sale_id'      => $store_sale_id,
					'name'      	     => $name,
					'street'             => $street,
					'street2'            => $street2,
					'city'               => $city,
					'state'              => $state,
					'zipcode'            => $zipcode,
					'country'            => $country,
					'email'              => $email,
					'phone'              => $phone,
					'alter_shipper'	     => false,
					'shipper_name'	     => '',
					'shipper_company'	 => '',
					'shipper_street'	 => '',
					'shipper_street2'	 => '',
					'shipper_city'	     => '',
					'shipper_state'      => '',
					'shipper_country'	 => '',
					'shipper_zipcode'	 => '',
					'shipper_email'	     => '',
					'shipper_phone'	     => '',
					'length'             => $volume['length'],
					'width'              => $volume['width'],
					'height'             => $volume['height'],
					'weight'             => $weight['weight'],
					'length_class_id'    => $volume['length_class_id'],
					'weight_class_id'    => $weight['weight_class_id'],
					'shipping_provider'  => $shipping_provider,
					'shipping_service'   => $shipping_service,
					'tracking'           => '',
					'note'               => '',
					'sale_products'      => $sale_products
				);
			}
		}
		
		if($validated) 
		{
			foreach($sales as $sale)
			{
				$this->sale_model->add_sale($sale);
			}
			
			$count = count($sales);
			
			$messages[] = sprintf($this->lang->line('text_success_rows_imported'), $count);
			
			$result = array(
				'success'  => true,
				'messages' => $messages
			);
		}
		else 
		{
			$messages[] = sprintf($this->lang->line('text_error_rows_imported'), 0);
			
			$result = array(
				'success'   => false,
				'messages'  => $messages
			);
		}
		
		return $result;
	}
}


