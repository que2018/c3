<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkout_print extends CI_Controller {

	public function index()
	{
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
		
		$checkout_id = $this->input->get('checkout_id');
				
		$this->load->model('warehouse/location_model');
		
		$checkout = $this->checkout_model->get_checkout($checkout_id);	
		
		$data['location_id']   = $checkout['location_id'];
		$data['tracking']      = $checkout['tracking'];
		$data['note']          = $checkout['note'];
		$data['status']        = $checkout['status'];

		$data['title'] = sprintf($this->lang->line('text_print_title'), $checkout_id);

		$data['checkout_products'] = array();
		
		$checkout_products = $this->checkout_model->get_checkout_products($checkout_id);	
		
		foreach($checkout_products as $checkout_product) 
		{
			$location_id = $checkout_product['location_id'];

			$location = $this->location_model->get_location($location_id);	
			
			if($location)
				$location_name = $location['name'];
			else 
				$location_name = '';
			
			$data['checkout_products'][] = array(
				'product_id'    => $checkout_product['product_id'],
				'name'          => $checkout_product['name'],
				'upc'           => $checkout_product['upc'],
				'sku'           => $checkout_product['sku'],
				'quantity'      => $checkout_product['quantity'],
				'location_name' => $location_name
			);
		}
		
		$data['checkout_id'] = $checkout_id;
			
		$this->load->view('check/checkout_print', $data);
	}
	
	public function bulk_print_d() 
	{
		$this->load->library('pdf');
		$this->load->library('printnode');

		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
		$this->load->model('warehouse/location_model');

		if($this->input->post('checkout_id'))
		{
			//get data
			$checkout_ids = $this->input->post('checkout_id');
			
			$checkouts = array();
			
			foreach($checkout_ids as $checkout_id)
			{
				$checkout = $this->checkout_model->get_checkout($checkout_id);	
				
				$checkout_products = array();
				
				$checkout_products_data = $this->checkout_model->get_checkout_products($checkout_id);	
				
				foreach($checkout_products_data as $checkout_product_data) 
				{
					$location_id = $checkout_product_data['location_id'];

					$location = $this->location_model->get_location($location_id);	
					
					$location_name = ($location)?$location['name']:'';
					
					$checkout_products[] = array(
						'name'          => $checkout_product_data['name'],
						'sku'           => $checkout_product_data['sku'],
						'quantity'      => $checkout_product_data['quantity'],
						'location_name' => $location_name
					);
				}
				
				$checkouts[] = array(
					'checkout_id'       => $checkout_id,
					'checkout_products' => $checkout_products
				);
			}
			
			//generate pdf
			$pdf = new FPDF();
			
			$pdf->AddPage();
			
			foreach($checkouts as $checkout)
			{
				$title = sprintf($this->lang->line('text_print_title'), $checkout['checkout_id']);
				
				$pdf->SetFont('Arial','B', 15);
				$pdf->Cell(40, 10, $title, 0);
				$pdf->Ln();
				
				//header
				$pdf->SetFont('Arial','B', 10);
				
				$header = array(
					$this->lang->line('column_name'),
					$this->lang->line('column_sku'),
					$this->lang->line('column_quantity'),
					$this->lang->line('column_location')
				);
				
				foreach($header as $col)
					$pdf->Cell(40, 7, $col, 1);
					
				$pdf->Ln();
				
				//body
				foreach($checkout['checkout_products'] as $row)
				{
					foreach($row as $col)
					{
						$pdf->Cell(40, 6, $col, 1);
					}
						
					$pdf->Ln();
				}
				
				$pdf->Ln();
			}
			
			$dest_path = FCPATH . 'assets/pdf/checkout_' . $checkout_id . '.pdf';
			
			$pdf->Output('F', $dest_path);
			
			$print_id = $this->config->item('config_printnode_general_printer_id');
			
			$this->printnode->set_printer_id($print_id);
			$this->printnode->submit_print_job($dest_path);
			
			$outdata = array(
				'success' => true
			);
		}
		else 
		{
			$outdata = array(
				'success' => false,
				'message' => $this->lang->line('error_checkout_id_empty')
			);
		}
		
		echo json_encode($outdata);
		die();
	}
}


