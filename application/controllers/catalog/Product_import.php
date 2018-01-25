<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Product_import extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
	}
	
	public function index() 
	{	
		//clients
		$data['clients'] = array();
		
		$this->load->model('client/client_model');
		
		$clients = $this->client_model->get_all_clients();
				
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
		
		$length_classes = $this->length_class_model->get_all_length_classes();
		
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
		
		$weight_classes = $this->weight_class_model->get_all_weight_classes();
		
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
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_import', $data);
		$this->load->view('common/footer');
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
	
	protected function import_excel($file) 
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
					
			//error name
			if(!isset($name) || empty($name))
			{
				$messages[] = sprintf($this->lang->line('error_row_name'), $i);
			
				$flag = false;
			}
			
			//error upc
			if(!isset($upc) || empty($upc))
			{
				$messages[] = sprintf($this->lang->line('error_row_upc'), $i);

				$flag = false;
			}
			
			//error sku
			if(!isset($sku) || empty($sku))
			{
				$messages[] = sprintf($this->lang->line('error_row_sku'), $i);
			
				$flag = false;
			}
			
			//sku exist
			$product_info = $this->product_model->get_product_by_sku($sku);	
					
			if($product_info)
			{
				$messages[] = sprintf($this->lang->line('error_row_sku_exist'), $i, $sku);
			
				$flag = false;
			}	
			
			//error price
			if(!isset($price))
			{
				$messages[] = sprintf($this->lang->line('error_row_price'), $i);
				
				$flag = false;
			}
			
			//error length
			if(!isset($length))
			{
				$messages[] = sprintf($this->lang->line('error_row_length'), $i);
					
				$flag = false;
			}
			
			//error width
			if(!isset($width))
			{
				$messages[] = sprintf($this->lang->line('error_row_width'), $i);
				
				$flag = false;
			}
			
			//error height
			if(!isset($height))
			{
				$messages[] = sprintf($this->lang->line('error_row_height'), $i);

				$flag = false;
			}
			
			//error weight
			if(!isset($weight))
			{
				$messages[] = sprintf($this->lang->line('error_row_weight'), $i);

				$flag = false;
			}
			
			if($flag)
			{				
				$products[] = array(
					'client_id'          => $client_id,
					'name'               => $name,
					'upc'                => $upc,
					'sku'                => $sku,
					'asin'      	     => '',
					'price'              => $price,
					'image'              => '',
					'description'        => '',
					'length'             => $length,
					'width'              => $width,
					'height'             => $height,
					'weight'             => $weight,
					'length_class_id'    => $length_class_id,
					'weight_class_id'    => $weight_class_id,
					'shipping_provider'  => '',
					'shipping_service'   => '',
					'alert_quantity'     => 0
				);
			}
			else 
			{
				if($validated) 
					$validated = false;
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


