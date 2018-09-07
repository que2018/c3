<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_import extends MX_Controller 
{
	public function index() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('catalog/product');
		
		$this->load->model('client/client_model');
		$this->load->model('catalog/product_model');
	
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/basic.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/dropzone.css');
		$this->header->add_style(base_url(). 'assets/css/app/catalog/product_import.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');

		$this->header->set_title($this->lang->line('text_import_product'));
	
		//clients
		$data['clients'] = array();
		
		
		$clients = $this->client_model->get_clients();
				
		if($clients)
		{
			foreach($clients as $client) 
			{
				$data['clients'][] = array(
					'id'    => $client['id'],
					'name'  => $client['name']
				);
			}
		}
	
		//length classes
		$data['length_classes'] = array();
		
		$this->load->model('setting/length_class_model');
		
		$length_classes = $this->length_class_model->get_length_classes();
		
		if($length_classes) 
		{
			foreach($length_classes as $length_class)
			{
				$data['length_classes'][] = array(
					'length_class_id' => $length_class['id'],
					'unit'            => $length_class['unit']
				);
			}
		}
			
		//weight classses
		$data['weight_classes'] = array();
		
		$this->load->model('setting/weight_class_model');
		
		$weight_classes = $this->weight_class_model->get_weight_classes();
		
		if($weight_classes) 
		{
			foreach($weight_classes as $weight_class)
			{
				$data['weight_classes'][] = array(
					'weight_class_id' => $weight_class['id'],
					'unit'            => $weight_class['unit']
				);
			}
		}
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('catalog/product_import', $data);
	}
	
	public function upload() 
	{
		$this->lang->load('catalog/product');

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
		
			$target_file = UPLOADPATH . $_FILES['file']['name'];  
	 
			move_uploaded_file($temp_file, $target_file);
									
			$result = $this->import_excel($target_file);
			
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
	
	private function import_excel($file) 
	{		
		$this->load->library('phpexcel');
		
		$this->load->model('catalog/product_model');
		
		$client_id        = $this->input->post('client_id');
		$length_class_id  = $this->input->post('length_class_id');
		$weight_class_id  = $this->input->post('weight_class_id');
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$total = $sheet->getHighestDataRow();
				
		$products = array();
	
		$messages = array();
		
		$validated = true;
		
		for($i = 2; $i <= $total; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':H' . $i, null, true, false);

			$name    = $row[0][0];
			$upc     = $row[0][1];
			$sku     = $row[0][2];
			$price   = $row[0][3];
			$length  = $row[0][4];
			$width   = $row[0][5];
			$height  = $row[0][6];
			$weight  = $row[0][7];
				
			$flag = true;
					
			//error upc
			if(!isset($upc) || empty($upc))
			{
				$messages[] = sprintf($this->lang->line('error_row_upc'), $i);

				$flag = false;
				
				$validated = false;
			}
			
			//error sku
			if(!isset($sku) || empty($sku))
			{
				$messages[] = sprintf($this->lang->line('error_row_sku'), $i);
			
				$flag = false;
				
				$validated = false;
			}
						
			//sku exist in database
			$product_info = $this->product_model->get_product_by_sku($sku);	
					
			if($product_info)
			{
				$messages[] = sprintf($this->lang->line('error_row_sku_exist'), $i, $sku);
			
				$flag = false;
				
				$validated = false;
			}

			//sku exist in array
			foreach($products as $product)
			{
				if($product['sku'] == $sku)
				{
					$messages[] = sprintf($this->lang->line('error_row_sku_exist'), $i, $sku);
			
					$flag = false;
					
					break;
				}
			}		
			
			//upc exist in database
			$product_info = $this->product_model->get_product_by_upc($upc);	
					
			if($product_info)
			{
				$messages[] = sprintf($this->lang->line('error_row_upc_exist'), $i, $upc);
			
				$flag = false;
				
				$validated = false;
			}
			
			//upc exist in array
			foreach($products as $product)
			{
				if($product['upc'] == $upc)
				{
					$messages[] = sprintf($this->lang->line('error_row_upc_exist'), $i, $upc);
			
					$flag = false;
					
					break;
				}
			}	
			
			if($flag)
			{				
				$products[] = array(
					'client_id'          => $client_id,
					'name'               => isset($name)?$name:'',
					'upc'                => $upc,
					'sku'                => $sku,
					'asin'      	     => '',
					'price'              => isset($price)?$price:0,
					'image'              => '',
					'description'        => '',
					'length'             => isset($length)?$length:0,
					'width'              => isset($width)?$width:0,
					'height'             => isset($height)?$height:0,
					'weight'             => isset($weight)?$weight:0,
					'length_class_id'    => $length_class_id,
					'weight_class_id'    => $weight_class_id,
					'shipping_provider'  => $this->config->item('config_default_order_shipping_provider'),
					'shipping_service'   => $this->config->item('config_default_order_shipping_service'),
					'alert_quantity'     => 0
				);
			}
		}
		
		if($validated) 
		{
			if($client_id) 
			{
				$this->product_model->clear_client_product($client_id);
			}
			else
			{
				$this->product_model->clear_non_client_product();
			}

			foreach($products as $product)
			{
				$this->product_model->add_product($product);
			}
			
			$count = count($products);
			
			$messages[] = sprintf($this->lang->line('text_rows_imported'), $count);
			
			$result = array(
				'success'  => true,
				'messages' => $messages
			);
		}
		else 
		{
			$messages[] = sprintf($this->lang->line('text_rows_imported'), 0);
			
			$result = array(
				'success'   => false,
				'messages'  => $messages
			);
		}
		
		return $result;
	}
}


