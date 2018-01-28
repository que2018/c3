<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Tracking extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('sale/tracking');
	}
	
	public function index() 
	{
		$this->load->view('common/header');
		$this->load->view('sale/sale_tracking');
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
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$rows = $sheet->getHighestDataRow(); 
	
		$validated = true;
	
		$messages = array();
		
		//sheet0
		$from_shipments = array();
		
		for($i = 2; $i <= $rows; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':H' . $i, null, true, false);

			$tracking  = $row[0][5];
			$fee       = $row[0][6];
			
			//data error
			if(!isset($tracking) || !isset($fee))
			{
				$messages[] = sprintf($this->lang->line('error_row_data'), $i);
				
				if($validated)
					$validated = false;
			}
			
			$from_shipments[] = array(
				'tracking'  => $tracking,
				'fee'       => $fee
			);
		}
		
		if($validated)
		{
			//sheet1
			$objPHPExcel = new PHPExcel();	
			$objPHPExcel->setActiveSheetIndex(0);
			$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
			
			$sheet = $obj_phpexcel->getSheet(1);
			$rows = $sheet->getHighestDataRow(); 
						
			for($i = 2; $i <= $rows; $i++)
			{ 
				$row = $sheet->rangeToArray('A' . $i . ':O' . $i, null, true, false);

				$store_sale_id  = isset($row[0][0])?$row[0][0]:'';
				$date_added     = isset($row[0][1])?$row[0][1]:'';
				$sku 			= isset($row[0][2])?$row[0][2]:'';
				$quantity 	    = isset($row[0][3])?$row[0][3]:'';
				$name 	    	= isset($row[0][4])?$row[0][4]:'';
				$street 	    = isset($row[0][5])?$row[0][5]:'';
				$street2 		= isset($row[0][6])?$row[0][6]:'';
				$city 			= isset($row[0][7])?$row[0][7]:'';
				$state 			= isset($row[0][8])?$row[0][8]:'';
				$zipcode 		= isset($row[0][9])?$row[0][9]:'';	
				$country 		= isset($row[0][10])?$row[0][10]:'';
				$email 		    = isset($row[0][11])?$row[0][11]:'';
				$phone 		    = isset($row[0][12])?$row[0][12]:'';
				$tracking 		= isset($row[0][13])?$row[0][13]:'';
				
				file_put_contents("lx.txt", $tracking . "\n", FILE_APPEND);
				
				$fee = '';
				
				foreach($from_shipments as $from_shipment)
				{
					if($from_shipment['tracking'] == $tracking)
					{
						$fee = $from_shipment['fee'];
						
						break;
					}
				}
				
				$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $store_sale_id);
				$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $date_added);
				$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $sku);
				$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $quantity);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $name);
				$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $street);
				$objPHPExcel->getActiveSheet()->SetCellValue('G'.$i, $street2);
				$objPHPExcel->getActiveSheet()->SetCellValue('H'.$i, $city); 
				$objPHPExcel->getActiveSheet()->SetCellValue('I'.$i, $state); 
				$objPHPExcel->getActiveSheet()->SetCellValue('J'.$i, $zipcode); 
				$objPHPExcel->getActiveSheet()->SetCellValue('K'.$i, $country); 
				$objPHPExcel->getActiveSheet()->SetCellValue('L'.$i, $email); 
				$objPHPExcel->getActiveSheet()->SetCellValue('M'.$i, $phone); 
				$objPHPExcel->getActiveSheet()->SetCellValue('N'.$i, $tracking); 
				$objPHPExcel->getActiveSheet()->SetCellValue('O'.$i, $fee); 
			}
			
			//save to excel
			PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);
		
			$objWriter->save(FCPATH  . 'assets/file/tracking.xlsx');
			
			$messages[] = $this->lang->line('text_convert_success');
			
			$result = array(
				'success'   => true,
				'messages'  => $messages
			);
		}
		else
		{
			$result = array(
				'success'   => false,
				'messages'  => $messages
			);
		}
					
		return $result;
	}
}


