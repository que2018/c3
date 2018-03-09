<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Location_import extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('warehouse/location');
		
		$this->load->model('warehouse/location_model');
	}
	
	public function index() 
	{	
		$this->load->model('warehouse/warehouse_model');
	
		//warehouse
		$data['warehouses'] = array();
				
		$warehouses = $this->warehouse_model->get_all_warehouses();
				
		if($warehouses)
		{
			foreach($warehouses as $warehouse) 
			{
				$data['warehouses'][] = array(
					'warehouse_id' => $warehouse['id'],
					'name'         => $warehouse['name']
				);
			}
		}
	
		$this->load->view('common/header');
		$this->load->view('warehouse/location_import', $data);
		$this->load->view('common/footer');
	}
	
	public function upload() 
	{				
		if(!empty($_FILES)) 
		{	
			$temp_file = $_FILES['file']['tmp_name'];    

			//extension error
			$extension = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);			
			  
			if($extension != 'xlsx') 
			{
				$messages[] = $this->lang->line('error_file_type_not_excel');
				
				$outdata = array(
					'success'  => false,
					'messages' => $messages
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
				
		$warehouse_id = $this->input->post('warehouse_id');
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$total = $sheet->getHighestDataRow();
				
		$validated = true;		
				
		$messages = array();
		
		$locations = array();
		
		for($i = 2; $i <= $total; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i, null, true, false);

			$name = $row[0][0];
			
			$flag = true;
					
			//error name
			if(!isset($name) || empty($name))
			{
				$messages[] = sprintf($this->lang->line('error_row_name'), $i);
			
				$flag = false;
				
				if($validated) 
					$validated = false;
			}
			
			//name is used in database
			$location = $this->location_model->get_location_by_name($name);	
				
			if($location)
			{
				$messages[] = sprintf($this->lang->line('error_row_name_used'), $i, $name);
				
				$flag = false;
			}	
			
			//name is used in array
			foreach($locations as $location)
			{
				if($location['name'] == $name)
				{
					$messages[] = sprintf($this->lang->line('error_row_name_used'), $i, $name);
				
					$flag = false;
				}
			}
			
			if($flag)
			{				
				$locations[] = array(
					'name'          => $name,
					'code'          => $name . '000000',
					'warehouse_id'  => $warehouse_id
				);
			}
		}
		
		if($validated) 
		{
			foreach($locations as $location)
			{
				$this->location_model->add_location($location);
			}
			
			$count = count($locations);
			
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


