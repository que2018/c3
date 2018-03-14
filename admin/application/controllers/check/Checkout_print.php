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

		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');

		if($this->input->post('checkout_id'))
		{
			$checkout_ids = $this->input->post('checkout_id');
			
			$pdf = new FPDF();
			
			$pdf->AddPage();
			
			foreach($checkout_ids as $i => $checkout_id)
			{
				$checkout = $this->checkout_model->get_checkout($checkout_id);	
				
				$pdf->Cell(40,10 * $i, $checkout['id']);
			}
			
			$dest_path = 'C:\xampp\htdocs\c3\admin\assets\pdf\checkout.pdf';
			
			$pdf->Output('F', $dest_path);
			
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


