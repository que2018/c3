<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_label extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
	}
	
	function index()
	{
		$data['checkout_id'] = $this->input->get('checkout_id');
		
		$this->load->view('check/checkout_label', $data);
	}
	
	function check()
	{
		$this->load->model('check/checkout_model');
		
		$checkout_id = $this->input->post('checkout_id');
		
		$checkout = $this->checkout_model->get_checkout($checkout_id);
		
		//no shipping provider
		if(empty($checkout['shipping_provider']))
		{
			$outdata = array(
				'success'  => false,
				'message'  => $this->lang->line('error_shipping_provider_not_set')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//no shipping method
		if(empty($checkout['shipping_service']))
		{
			$outdata = array(
				'success'  => false,
				'message'  => $this->lang->line('error_shipping_method_not_set')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//check if it related to sale
		$result = $this->checkout_model->get_checkout_sale($checkout_id);
		
		if(!$result)
		{
			$outdata = array(
				'success'  => false,
				'message'  => $this->lang->line('error_checkout_not_related_to_sale')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//now ok
		$outdata = array(
			'success'  => true
		);
		
		echo json_encode($outdata);
		die();				
	}
	
	function execute()
	{	
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('finance/transaction_model');
	
		if($this->input->post('checkout_id'))
		{
			$checkout_id = $this->input->post('checkout_id');
			
			$checkout = $this->checkout_model->get_checkout($checkout_id);
			
			$code = $checkout['shipping_provider'];
			
			$this->load->model('shipping/' . $code . '_model');

			$result = $this->{$code . '_model'}->generate_checkout_label($checkout_id);
			
			if(!isset($result['error']))
			{	
				//update checkout
				$this->checkout_model->update_label($checkout_id, $result['label_img']);
				
				$this->checkout_model->update_tracking($checkout_id, $result['tracking']);
				
				//fee
				if($checkout['sale_id'])
				{
					$sale_id = $checkout['sale_id'];
					
					$sale = $this->sale_model->get_sale($sale_id);	
					
					if($sale['store_id'])
					{
						$store_id = $sale['store_id'];
						
						$store = $this->store_model->get_store($store_id);	
						
						$client_id = $store['client_id'];
						
						if($this->config->item($code . '_fee_type'))
						{
							$ratio = $this->config->item($code . '_fee_value');
							
							$amount = $result['amount'] * (1 + $ratio);
						}
						else 
						{
							$amount = $this->config->item($code . '_fee_value') + $result['amount'];
						}					
										
						$transaction_data = array(					
							'client_id'		  => $client_id,
							'type'		      => 'sale',
							'type_id'         => $sale_id,
							'amount'   		  => $amount,
							'comment'         => sprintf($this->lang->line('text_sale_checkout_transaction_note'), $sale_id, $checkout_id)
						);
											
						$this->transaction_model->add_transaction($transaction_data);	
					}						
				}
				
				//display info
				$data['label_img'] = base_url() . $result['label_img'];
				
				$data['width_type'] = $this->config->item('config_label_width_type');

				$data['width'] = $this->config->item('config_label_width');
				
				$data['margin_top'] = $this->config->item('config_label_posy');
				
				$this->load->view('check/checkout_label_success', $data);
			}
			else 
			{
				$data['message'] = $result['error'];
				
				$this->load->view('check/checkout_label_error', $data);
			}
		}
	}
}


