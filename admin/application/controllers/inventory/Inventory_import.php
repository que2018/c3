<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_import extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('inventory/inventory');
		
		$this->load->model('inventory/inventory_model');
	}
	
	public function index() 
	{	
		$data['locations'] = array();
	
		$this->load->model('warehouse/location_model');
			
		$locations = $this->location_model->get_all_locations();	

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
		
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_import', $data);
		$this->load->view('common/footer');
	}
	
	public function upload() 
	{
		$this->lang->load('inventory/inventory');
				
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
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$rows = $sheet->getHighestDataRow();
				
		$validated = true;
		
		$messages = array();
		
		$inventories = array();
		
		for($i = 2; $i <= $rows; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':C' . $i, null, true, false);

			$sku       = $row[0][0];
			$name      = $row[0][1];
			$quantity  = $row[0][2];
								
			//sku empty
			if(!isset($sku) || empty($sku))
			{
				$messages[] = sprintf($this->lang->line('error_row_sku_empty'), $i);
				
				if($validated)
					$validated = false;
			}
				
			//sku not found	
			$product = $this->product_model->get_product_by_sku($sku);	
				
			if(!$product)
			{
				$messages[] = sprintf($this->lang->line('error_row_sku_not_found'), $i, $sku);
				
				if($validated)
					$validated = false;
			}	

			//location empty
			if(!isset($name) || empty($name))
			{
				$messages[] = sprintf($this->lang->line('error_row_locatoin_empty'), $i);
				
				if($validated)
					$validated = false;
			}
			
			//location not found			
			$location = $this->location_model->get_location_by_name($name);	
				
			if(!$location)
			{
				$messages[] = sprintf($this->lang->line('error_row_location_not_found'), $i, $name);
				
				if($validated)
					$validated = false;
			}

			//quantity empty
			if(!isset($quantity))
			{
				$messages[] = sprintf($this->lang->line('error_row_quantity_empty'), $i);
				
				if($validated)
					$validated = false;
			}
			
			//duplicate data
			/* foreach($inventories as $inventory)
			{
				if(($inventory['product_id'] == $product['id']) && ($inventory['location_id'] == $location['id']))
				{
					$messages[] = sprintf($this->lang->line('error_row_duplicated_data'), $i);
				
					if($validated)
						$validated = false;
				}
			} */
			
			if($validated)
			{
				$inventories[] = array(
					'product_id'   => $product['id'],
					'quantity'     => $quantity,
					'location_id'  => $location['id']
				);
			}
		}
		
		if($validated) 
		{
			foreach($inventories as $inventory)
			{
				//$product_id = $inventory['product_id'];
				//$location_id = $inventory['location_id'];
				//$this->inventory_model->delete_inventory_by_location_product($location_id, $product_id);
				//$this->inventory_model->set_inventory($inventory);
				
				$this->inventory_model->add_inventory($inventory);
			}
			
			$total = sizeof($inventories);
			
			$messages[] = sprintf($this->lang->line('text_rows_imported'), $total);
			
			$result = array(
				'success'   => true,
				'messages'  => $messages
			);
		}
		else 
		{
			$messages[] = sprintf($this->lang->line('text_no_rows_imported'));
			
			$result = array(
				'success'   => false,
				'messages'  => $messages
			);
		}
		
		return $result;
	}
}


