<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inventory_import extends MX_Controller 
{
	public function index() 
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('inventory/inventory');
			
		$this->load->model('warehouse/location_model');

		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/basic.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/dropzone.css');
		$this->header->add_style(base_url(). 'assets/css/app/inventory/inventory_import.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');

		$this->header->set_title($this->lang->line('text_inventory_import'));
		
		$data['locations'] = array();
	
		$locations = $this->location_model->get_locations();	

		if($locations)
		{
			foreach($locations as $location) 
			{
				$data['locations'][] = array(
					'id'    => $location['id'],
					'name'  => $location['name']
				);
			}	
		}
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/inventory_import', $data);
	}
	
	public function upload() 
	{
		$this->lang->load('inventory/inventory');
		
		$this->load->model('inventory/inventory_model');
			
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
		
		$this->lang->load('inventory/inventory');
				
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$rows = $sheet->getHighestDataRow();
				
		$success = true;
		
		$messages = array();
		
		$inventories = array();
		
		for($i = 2; $i <= $rows; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':D' . $i, null, true, false);

			$sku       = trim($row[0][0]);
			$name      = trim($row[0][1]);
			$batch     = trim($row[0][2]);
			$quantity  = $row[0][3];
			
			$flag = true;
								
			//sku empty
			if(!isset($sku) || empty($sku))
			{
				$messages[] = sprintf($this->lang->line('error_row_sku_empty'), $i);
				
				$flag = false;
				
				if($success)
					$success = false;
			}
					
			//location empty
			if(!isset($name) || empty($name))
			{
				$messages[] = sprintf($this->lang->line('error_row_locatoin_empty'), $i);
				
				$flag = false;
				
				if($success)
					$success = false;
			}
			
			//location not found			
			$location = $this->location_model->get_location_by_name($name);	
				
			if(!$location)
			{
				$messages[] = sprintf($this->lang->line('error_row_location_not_found'), $i, $name);
				
				$flag = false;
				
				if($success)
					$success = false;
			}
			
			//quantity empty
			if(!isset($quantity))
			{
				$messages[] = sprintf($this->lang->line('error_row_quantity_empty'), $i);
				
				$flag = false;
				
				if($success)
					$success = false;
			}
			
			//duplicate data
			foreach($inventories as $inventory)
			{
				if(($inventory['product_id'] == $product['id']) && 
				   ($inventory['location_id'] == $location['id']) && 
				   ($inventory['batch'] == $batch)
				)
				{
					$messages[] = sprintf($this->lang->line('error_row_duplicated_data'), $i);
				
					$flag = false;
				
					if($success)
						$success = false;
				}
			} 
			
			if($flag)
			{
				$product = $this->product_model->get_product_by_sku($sku);	
				
				if(!$product)
				{
					$product = array(
						'client_id'          => '',
						'name'               => $sku,
						'upc'                => $sku,
						'sku'                => $sku,
						'asin'      	     => '',
						'price'              => 0,
						'image'              => '',
						'description'        => '',
						'length'             => 0,
						'width'              => 0,
						'height'             => 0,
						'weight'             => 0,
						'length_class_id'    => $this->config->item('config_length_class_id'),
						'weight_class_id'    => $this->config->item('config_weight_class_id'),
						'shipping_provider'  => $this->config->item('config_default_order_shipping_provider'),
						'shipping_service'   => $this->config->item('config_default_order_shipping_service'),
						'alert_quantity'     => 0
					);
					
					$product_id = $this->product_model->add_product($product);
				}
				else
				{
					$product_id = $product['id'];
				}
				
				$inventories[] = array(
					'product_id'   => $product_id,
					'quantity'     => $quantity,
					'batch'        => (isset($batch))?$batch:'',
					'location_id'  => $location['id']
				);
			}
		}
	
		$this->inventory_model->clear_inventory();
		
		if($inventories)
		{
			foreach($inventories as $inventory)
			{
				$this->inventory_model->add_inventory($inventory);
			}
		}
		
		$total = sizeof($inventories);
		
		$messages[] = sprintf($this->lang->line('text_rows_imported'), $total);
		
		$result = array(
			'success'   => $success,
			'messages'  => $messages
		);
		
		return $result;
	}
}


