<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Label extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
	}
	
	function index()
	{
		$data['id'] = $this->input->get('id');
		
		$unsolved = $this->input->get('unsolved');
		
		if($unsolved)
		{
			$this->load->view('sale/sale_label_unsolved', $data);
		}
		else
		{
			$this->load->view('sale/sale_label', $data);
		}
	}
	
	function check()
	{
		$this->load->model('sale/sale_model');
		$this->load->model('inventory/inventory_model');
		
		$id = $this->input->post('id');
		
		$sale = $this->sale_model->get_sale($id);
		
		//no shipping provider
		if(empty($sale['shipping_provider']))
		{
			$outdata = array(
				'success'  => false,
				'msg'      => $this->lang->line('error_shipping_provider_not_set')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//no shipping method
		if(empty($sale['shipping_service']))
		{
			$outdata = array(
				'success'  => false,
				'msg'      => $this->lang->line('error_shipping_method_not_set')
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
	
	function check_unsolved()
	{
		$this->load->model('sale/sale_model');
		$this->load->model('inventory/inventory_model');
		
		$id = $this->input->post('id');
		
		$sale = $this->sale_model->get_sale($id);
		
		//no shipping provider
		if(empty($sale['shipping_provider']))
		{
			$outdata = array(
				'success'  => false,
				'msg'      => $this->lang->line('error_shipping_provider_not_set')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//no shipping method
		if(empty($sale['shipping_service']))
		{
			$outdata = array(
				'success'  => false,
				'msg'      => $this->lang->line('error_shipping_method_not_set')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//inventory not enough
		$sale_products = $this->sale_model->get_sale_products($id);
		
		$outstock = false;
		
		foreach($sale_products as $sale_product)
		{
			$product_id = $sale_product['product_id'];
			
			$inventories = $this->inventory_model->get_inventories_by_product($product_id);
			
			if($inventories)
			{
				$sum_quantity = 0;
				
				foreach($inventories as $inventory)
				{
					$sum_quantity += $inventory['quantity'];
				}
				
				if($sum_quantity < $sale_product['quantity']) {
					$outstock = true;
					break;
				}
			}
			else
			{
				$outstock = true;
				break;
			}
		}
		
		if($outstock)
		{
			$outdata = array(
				'success'  => false,
				'msg'      => $this->lang->line('error_inventory_not_enough')
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
		
		$id = $this->input->post('id');
		
		$sale = $this->sale_model->get_sale($id);
		
		$code = $sale['shipping_provider'];
		
		$this->load->model('shipping/'. $code .'_model');

		$result = $this->{$code . '_model'}->generate_sale_label($id);
		
		if(!isset($result['error']))
		{
			$tracking = $result['tracking'];
			
			$this->sale_model->update_tracking($id, $tracking);
			
			$data['label_img'] = $result['img'];
			
			$sale_products_data = $this->sale_model->get_sale_products($id);
			
			$data['sale_products'] = array();
			
			foreach($sale_products_data as $sale_product_data)
			{
				$data['sale_products'][] = array(
					'sku'      => $sale_product_data['sku'],
					'quantity' => $sale_product_data['quantity']
				);
			}
			
			$this->load->view('sale/label_success', $data);
		}
		else 
		{
			$data['msg'] = $result['error'];
			
			$this->load->view('sale/label_error', $data);
		}
	}
	
	function execute_unsolved()
	{
		$this->load->model('sale/sale_model');
		$this->load->model('checkout/checkout_model');
		$this->load->model('inventory/inventory_model');
		
		$id = $this->input->post('id');
		
		$sale = $this->sale_model->get_sale($id);
		
		$code = $sale['shipping_provider'];
		
		$this->load->model('shipping/'. $code .'_model');

		$result = $this->{$code . '_model'}->generate_sale_label($id);
		
		if(!isset($result['error']))
		{
			//tracking
			$tracking = $result['tracking'];
			
			$this->sale_model->update_tracking($id, $tracking);
			
			//checkout & inventory
			$sale_products = $this->sale_model->get_sale_products($id);
			
			foreach($sale_products as $sale_product)
			{
				$product_id = $sale_product['product_id'];
				
				$inventories = $this->inventory_model->get_inventories_by_product($product_id);
				
				$target_inventory = $inventories[0];
				
				foreach($inventories as $inventory)
				{
					if($inventory['quantity'] > $target_inventory['quantity'])
						$target_inventory = $inventory;
				} 
				
				$checkout_products[] = array(
					'id'        => $sale_product['product_id'],
					'quantity'  => $sale_product['quantity']
				);
				
				$checkout_data = array(
					'location_id'       => $target_inventory['location_id'],
					'tracking'          => $tracking,
					'status'            => 2,
					'checkout_fees'     => null,
					'checkout_files'    => null,
					'checkout_products' => $checkout_products
				);
				
				$this->checkout_model->add_checkout($checkout_data);
			}
			
			$outdata = array(
				'success'   => true,
				'label_img' => $result['img']
			);
		}
		else 
		{
			$outdata = array(
				'success'  => false,
				'msg'      => $result['error']
			);
		}
					
		echo json_encode($outdata);
		die();
	}
}


