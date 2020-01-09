<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin_import extends MX_Controller 
{
	public function index() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('check/checkin');
					
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_import.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/basic.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/dropzone/dropzone.css');
		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');
	
		$this->header->set_title($this->lang->line('text_import_checkin'));	
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');	
		
		$this->load->view('check/checkin_import', $data);
	}
	
	public function upload() 
	{
		$this->lang->load('check/checkin');
				
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
			
			$target_file = FILEPATH . $_FILES['file']['name'];  
	 
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
		
		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');

		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$rows = $sheet->getHighestDataRow(); 
	
		$validated = true;
		
		$checkin_products = array();
		
		$messages = array();
		
		for($i = 2; $i <= $rows; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':B' . $i, null, true, false);

			$sku            = isset($row[0][0])?$row[0][0]:'';
			$quantity_draft = isset($row[0][1])?$row[0][1]:'';
								
			//data error
			if(!$sku || !$quantity_draft)
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
						
			if($validated)
			{
				$checkin_products[] = array(
					'product_id'      => $product_info['id'],
					'quantity_draft'  => $quantity_draft
				);
			}
		}
		
		if($validated) 
		{
			$checkin_data = array(
				'tracking' 		    => '',
				'note' 		        => '',
				'status' 		    => 1,
				'checkin_products'  => $checkin_products		
			);
			
			$result = $this->checkin_model->add_checkin($checkin_data);

			if($result)
			{
				$messages[] = $this->lang->line('text_checkin_add_success');
			}
			else
			{
				$messages[] = $this->lang->line('error_checkin_internal');
			}

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


