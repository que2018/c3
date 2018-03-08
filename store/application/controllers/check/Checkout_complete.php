<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkout_complete extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
	}
	
	public function index()
	{
		$this->load->library('form_validation');
		
		$tracking = $this->input->post('tracking');
		
		$this->form_validation->set_rules('checkout_product[]', $this->lang->line('text_checkout_product'), 'required');
		
		$data = array(
			'checkout_products'  => $this->input->post('checkout_product')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->checkout_model->edit_rapid_checkout($tracking, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_rapid_checkout_add_success'));
			
			redirect(base_url() . 'check/checkout', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$checkout = $this->checkout_model->get_checkout_by_tracking($tracking);
		
			if($checkout)
			{
				$data['location_name'] = $checkout['location_name'];
			}
			else
			{
				$data['location_name'] = '';
			}
		}
		else
		{
			$data['location_name'] = '';
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('check/checkout_complete', $data);
		$this->load->view('common/footer');
	}
	
	function get_checkout()
	{		
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
												
			$result = $this->checkout_model->get_checkout($code);
			
			if(!$result) 
			{
				$result = $this->checkout_model->get_checkout_by_tracking($code);
			}
				
			if(!$result) 
			{
				$result = $this->checkout_model->get_sale_checkout($code);
			}	
				
			if(!$result)
			{
				$outdata = array(
					'success'   => false,
					'message'   => $this->lang->line('error_checkout_not_found')
				);
				
				echo json_encode($outdata);
				die();
			}
			 
			//find checkout
			$checkout_id = $result['id']; 
			
			$checkout_products_data = $this->checkout_model->get_checkout_products($checkout_id);				

			$checkout_products = array();
			
			foreach($checkout_products_data as $checkout_product_data)
			{
				$checkout_products[] = array(
					'product_name'   => $checkout_product_data['product_name'],
					'upc'            => $checkout_product_data['upc'],
					'sku'            => $checkout_product_data['sku'],
					'quantity'       => $checkout_product_data['quantity'],
					'location_name'  => $checkout_product_data['location_name']
				);
			}
			
			$checkout = array(
				'checkout_id'        => $checkout_id,
				'tracking'           => $result['tracking'],
				'checkout_products'  => $checkout_products
			);			
					
			$outdata = array(
				'success'   => true,
				'checkout'  => $checkout
			);
				
			echo json_encode($outdata);
		}
	}
	
	function complete()
	{		
		if($this->input->get('checkout_id'))
		{
			$checkout_id = $this->input->get('checkout_id');
									
			$checkout = $this->checkout_model->get_checkout($checkout_id);
			
			if(!$checkout) 
			{
				$outdata = array(
					'success'  => false,
					'level'    => 2,
					'message'  => $this->lang->line('error_checkout_not_found')
				);
				
			}
			else
			{
				if($checkout['status'] == 2)
				{
					$outdata = array(
						'success'  => false,
						'level'    => 1,
						'message'  => $this->lang->line('error_checkout_already_acompleted')
					);
				}
				else
				{
					//complete checkout
					$this->checkout_model->complete_checkout($checkout_id);
					
					//complete sale
					$sale = $this->checkout_model->get_checkout_sale($checkout_id);
					
					if($sale) 
					{	
						file_put_contents("lg.txt", "hello, find ... ");
				
						$this->load->model('sale/sale_model');
						
						$this->sale_model->complete_sale($sale['id']);
					}
					else
					{
						file_put_contents("lg.txt", "hello, not find ... ");
					}
				
					$outdata = array(
						'success'  => true,
						'message'  => $this->lang->line('text_checkout_is_completed')

					);
				}	
			}
				
			echo json_encode($outdata);
		}
	}
}


