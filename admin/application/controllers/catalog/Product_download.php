<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_download extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
	}
		
	function products() 
	{
		$this->load->library('phpexcel');
		
		/* $this->phpexcel->getProperties()->setCreator('activape');
		$this->phpexcel->getProperties()->setLastModifiedBy('activape');
		$this->phpexcel->getProperties()->setTitle('activape'); */
		
		$this->phpexcel->getActiveSheet()->setCellValue('A1', $this->lang->line('column_name'));
		$this->phpexcel->getActiveSheet()->setCellValue('B1', $this->lang->line('column_upc'));
		$this->phpexcel->getActiveSheet()->setCellValue('C1', $this->lang->line('column_asin'));
		$this->phpexcel->getActiveSheet()->setCellValue('D1', $this->lang->line('column_sku'));

		$products = $this->product_model->get_products();	
		
		$row = 2;
		
		if($products)
		{
			foreach($products as $product)
			{
				$this->phpexcel->getActiveSheet()->setCellValue('A' . $row, $product['name']);
				$this->phpexcel->getActiveSheet()->setCellValue('B' . $row, $product['upc']);
				$this->phpexcel->getActiveSheet()->setCellValue('C' . $row, $product['asin']);
				$this->phpexcel->getActiveSheet()->setCellValue('D' . $row, $product['sku']);
				
				$row++;
			}
		}
		
		$file_writer = PHPExcel_IOFactory::createWriter($this->phpexcel, 'Excel2007');
		$file = FCPATH . 'assets/file/export/products.xlsx';
		$file_writer->save($file);
		
		$link = base_url() . 'assets/file/export/products.xlsx';
		
		$outdata = array(
			'success' => true,
			'link'    => $link
		);
		
		echo json_encode($outdata);
	}
}


