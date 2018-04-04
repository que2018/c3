<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Import extends CI_Controller 
{	
	public function index() 
	{	
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
	
		$stores = $this->store_model->get_stores();
				
		$data['stores'] = array();
		
		if($stores)
		{
			foreach($stores as $store) 
			{
				$data['stores'][] = array(
					'store_id' => $store['id'],
					'name'     => $store['name']
				);
			}
		}
	
		$this->load->view('common/header');
		$this->load->view('sale/sale_import', $data);
		$this->load->view('common/footer');
	}
	
	public function upload() 
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
						
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
			
			//no store selected
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
			
			$target_file = UPLOADPATH . $_FILES['file']['name'];  
	 
			move_uploaded_file($temp_file, $target_file);
									
			$result = $this->import_excel($store_id, $target_file);
			
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
	
	protected function import_excel($store_id, $file) 
	{
		$this->lang->load('sale/sale');
				
		$this->load->library('phpexcel');
		
		$this->load->model('sale/sale_model');
		$this->load->model('catalog/product_model');
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$rows = $sheet->getHighestDataRow(); 
	
		$validated = true;
		
		$sales = array();
		
		$messages = array();
		
		for($i = 2; $i <= $rows; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':M' . $i, null, true, false);

			$store_sale_id  = $row[0][0];
			$date_added     = $row[0][1];
			$sku 			= $row[0][2];
			$quantity 	    = $row[0][3];
			$name 	    	= $row[0][4];
			$street 	    = $row[0][5];
			$street2 		= isset($row[0][6])?$row[0][6]:'';
			$city 			= $row[0][7];
			$state 			= $row[0][8];
			$zipcode 		= $row[0][9];	
			$country 		= $row[0][10];
			$email 		    = isset($row[0][11])?$row[0][11]:'';
			$phone 		    = isset($row[0][12])?$row[0][12]:'';
					
			//data error
			if(!$store_sale_id || !$date_added || !$sku || !$quantity || !$name || !$street || !$city || !$state || !$zipcode || !$country)
			{
				$messages[] = sprintf($this->lang->line('error_row_data'), $i);
				
				if($validated)
					$validated = false;
			}
			
			//sku not exist		
			$product_info = $this->product_model->get_product_by_sku($sku);
			
			if(!$product_info) 
			{
				$messages[] = sprintf($this->lang->line('error_sku_not_found'), $i, $sku);
				
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
				$sale_products_params = array();
				
				$sale_products_params[$product_info['id']] = $quantity;
			
				$volume = $this->sale_model->get_sale_products_volume($sale_products_params);
				
				$weight = $this->sale_model->get_sale_products_weight($sale_products_params);
					
				$sale_products = [];
					
				$sale_products[] = array(
					'product_id'   => $product_info['id'],
					'quantity' 	   => $quantity,
				);
			
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
					'length'             => $volume['length'],
					'width'              => $volume['width'],
					'height'             => $volume['height'],
					'weight'             => $weight['weight'],
					'length_class_id'    => $volume['length_class_id'],
					'weight_class_id'    => $weight['weight_class_id'],
					'shipping_provider'  => $this->config->item('config_default_order_shipping_provider'),
					'shipping_service'   => $this->config->item('config_default_order_shipping_service'),
					'total'              => 0,
					'tracking'           => '',
					'status_id'          => 1,
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


