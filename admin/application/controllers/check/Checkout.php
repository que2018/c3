<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkout extends CI_Controller {

	function index()
	{	
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_model');
	
		$data['success'] = $this->session->flashdata('success');
		
		if($this->input->get('filter_id'))
		{
			$filter_id = $this->input->get('filter_id');
		} 
		else 
		{
			$filter_id = '';
		}
		
		if($this->input->get('filter_sale_id'))
		{
			$filter_sale_id = $this->input->get('filter_sale_id');
		} 
		else 
		{
			$filter_sale_id = '';
		}
		
		if($this->input->get('filter_tracking'))
		{
			$filter_tracking = $this->input->get('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
		}
		
		if($this->input->get('filter_status'))
		{
			$filter_status = $this->input->get('filter_status');
		} 
		else 
		{
			$filter_status = '';
		}
	
		if($this->input->get('filter_date_added'))
		{
			$filter_date_added = $this->input->get('filter_date_added');
		} 
		else 
		{
			$filter_date_added = '';
		}
		
		if ($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'date_added';
		}

		if ($this->input->get('order')) 
		{
			$order = $this->input->get('order');
		} 
		else 
		{
			$order = 'DESC';
		}
		
		if($this->input->get('limit'))
		{
			$limit = $this->input->get('limit');
		} 
		else 
		{
			$limit = $this->config->item('config_page_limit');
		}
		
		if ($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		} 
		else 
		{
			$page = 1;
		}
		
		$filter_data = array(
			'filter_id'          => $filter_id,
			'filter_sale_id'     => $filter_sale_id,
			'filter_tracking'    => $filter_tracking,
			'filter_status'      => $filter_status,
			'filter_date_added'  => $filter_date_added,
			'sort'               => $sort,
			'order'              => $order,
			'start'              => ($page - 1) * $limit,
			'limit'              => $limit
		);
		
		$checkouts = $this->checkout_model->get_checkouts($filter_data);	
		$checkout_total = $this->checkout_model->get_checkout_total($filter_data);
		
		$data['checkouts'] = array();
		
		if($checkouts) 
		{
			foreach($checkouts as $checkout)
			{	
				$checkout_products = array();
				
				$checkout_products_data = $this->checkout_model->get_checkout_products($checkout['id']);	
				
				foreach($checkout_products_data as $checkout_product_data) {
					$checkout_products[] = array(
						'name'        => $checkout_product_data['name'],
						'quantity'    => $checkout_product_data['quantity'],
						'location'    => $checkout_product_data['location_name']
					);
				}
			
				$data['checkouts'][] = array(
					'checkout_id'        => $checkout['id'],
					'sale_id'       	 => $checkout['sale_id'],
					'tracking'       	 => $checkout['tracking'],
					'status'         	 => $checkout['status'],
					'shipping_provider'  => $checkout['shipping_provider'],
					'date_added'     	 => $checkout['date_added'],
					'checkout_products'  => $checkout_products
				);
			}
		}
		
		$url = '';
	
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
	
		$this->pagination->total  = $checkout_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'check/checkout?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($checkout_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($checkout_total - $limit)) ? $checkout_total : ((($page - 1) * $limit) + $limit), $checkout_total, ceil($checkout_total / $limit));

		$url = '';
		
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if ($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_id']         = base_url() . 'check/checkout?sort=id' . $url;
		$data['sort_sale_id']    = base_url() . 'check/checkout?sort=sale_to_checkout.sale_id' . $url;
		$data['sort_tracking']   = base_url() . 'check/checkout?sort=tracking' . $url;
		$data['sort_status']     = base_url() . 'check/checkout?sort=status' . $url;
		$data['sort_date_added'] = base_url() . 'check/checkout?sort=date_added' . $url;
	
		$url = '';
		
		if ($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
		
		$data['filter_url'] = base_url().'check/checkout'.$url;
	
		$data['sort']   = $sort;
		$data['order']  = $order;
		$data['limit']  = $limit;
		
		$data['filter_id']          = $filter_id;
		$data['filter_sale_id']     = $filter_sale_id;
		$data['filter_tracking']    = $filter_tracking;
		$data['filter_status']      = $filter_status;
		$data['filter_date_added']  = $filter_date_added;
				
		$this->load->view('common/header');
		$this->load->view('check/checkout_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add()
	{
		$this->lang->load('check/checkout');
		
		$this->load->library('form_validation');
		
		$this->load->model('check/checkout_model');
		$this->load->model('catalog/product_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');

		$this->form_validation->set_rules('sale_id', $this->lang->line('text_sale_id'), 'callback_validate_sale');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_add_tracking');
		$this->form_validation->set_rules('length', $this->lang->line('text_length'), 'required');
		$this->form_validation->set_rules('width', $this->lang->line('text_width'), 'required');
		$this->form_validation->set_rules('height', $this->lang->line('text_height'), 'required');
		$this->form_validation->set_rules('weight', $this->lang->line('text_weight'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class'), 'required');
		$this->form_validation->set_rules('checkout_product', $this->lang->line('text_checkout_product'), 'callback_validate_checkout_product');
		$this->form_validation->set_rules('checkout_fee', $this->lang->line('text_checkout_fee'), 'callback_validate_checkout_fee');

		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data = array(
				'sale_id'        	=> $this->input->post('sale_id'),
				'tracking'       	=> $this->input->post('tracking'),
				'status'         	=> $this->input->post('status'),
				'length'            => $this->input->post('length'),
				'width'             => $this->input->post('width'),
				'height'            => $this->input->post('height'),
				'weight'            => $this->input->post('weight'),
				'length_class_id'   => $this->input->post('length_class_id'),
				'weight_class_id'   => $this->input->post('weight_class_id'),
				'shipping_provider' => $this->input->post('shipping_provider'),
				'shipping_service'  => $this->input->post('shipping_service'),
				'checkout_fees'  	=> $this->input->post('checkout_fee'),
				'note'           	=> $this->input->post('note')
			);
			
			$checkout_products = $this->input->post('checkout_product');
				
			$data['checkout_products'] = array();
				
			if($checkout_products)
			{	
				foreach($checkout_products as $checkout_product) 
				{
					$product_data = $this->product_model->get_product($checkout_product['product_id']);	
					
					$data['checkout_products'][] = array(
						'product_id'   => $product_data['id'],
						'name'         => $product_data['name'],
						'upc'          => $product_data['upc'],
						'sku'          => $product_data['sku'],
						'quantity'     => $checkout_product['quantity'],
						'location_id'  => $checkout_product['location_id']
					);
				}
			}
		}
		else
		{
			$data = array(
				'sale_id'        	=> $this->input->post('sale_id'),
				'tracking'       	=> $this->input->post('tracking'),
				'status'         	=> $this->input->post('status'),
				'length'            => $this->input->post('length'),
				'width'             => $this->input->post('width'),
				'height'            => $this->input->post('height'),
				'weight'            => $this->input->post('weight'),
				'length_class_id'   => $this->input->post('length_class_id'),
				'weight_class_id'   => $this->input->post('weight_class_id'),
				'shipping_provider' => $this->config->item('config_default_order_shipping_provider'),
				'shipping_service'  => $this->config->item('config_default_order_shipping_service'),
				'checkout_fees'  	=> $this->input->post('checkout_fee'),
				'note'           	=> $this->input->post('note'),
				'checkout_products' => array()
			);
		}
		
		//length classes
		$length_classes = $this->length_class_model->get_all_length_classes();
		
		$data['length_classes'] = array();
		
		if($length_classes) 
		{
			foreach($length_classes as $length_class)
			{
				$data['length_classes'][] = array(
					'id'    => $length_class['id'],
					'unit'  => $length_class['unit']
				);
			}
		}
			
		//weight classses
		$weight_classes = $this->weight_class_model->get_all_weight_classes();
		
		$data['weight_classes'] = array();
		
		if($weight_classes) 
		{
			foreach($weight_classes as $weight_class)
			{
				$data['weight_classes'][] = array(
					'id'    => $weight_class['id'],
					'unit'  => $weight_class['unit']
				);
			}
		}
		
		//shipping providers			
		$shipping_providers_data = $this->shipping_model->get_shipping_providers();
				
		$data['shipping_providers'] = array();
		
		foreach($shipping_providers_data as $shipping_provider_data) 
		{
			$code = $shipping_provider_data['code'];
			
			if($this->config->item($code .'_status'))
			{
				$data['shipping_providers'][] = array(
					'code'     => $shipping_provider_data['code'],
					'name'     => $shipping_provider_data['name']
				);
			}
		}
		
		//shipping services		
		$shipping_provider = $data['shipping_provider'];
		
		$shipping_services_data = $this->shipping_model->get_shipping_services($shipping_provider);
				
		$data['shipping_services'] = array();
		
		if($shipping_services_data) 
		{
			foreach($shipping_services_data as $shipping_service_data) 
			{
				$data['shipping_services'][] = array(
					'code'     => $shipping_service_data['code'],
					'name'     => $shipping_service_data['name']
				);
			}
		}
		
		if($this->form_validation->run() == true)
		{
			$this->checkout_model->add_checkout($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkout_add_success'));
			
			redirect(base_url() . 'check/checkout', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('check/checkout_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit()
	{
		$this->lang->load('check/checkout');
		
		$this->load->library('form_validation');
		
		$this->load->model('check/checkout_model');
		$this->load->model('catalog/product_model');		
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		$this->load->model('inventory/inventory_model');
		
		$checkout_id = $this->input->get('checkout_id');
		
		$this->form_validation->set_rules('sale_id', $this->lang->line('text_sale_id'), 'callback_validate_sale');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_edit_tracking');
		$this->form_validation->set_rules('length', $this->lang->line('text_length'), 'required');
		$this->form_validation->set_rules('width', $this->lang->line('text_width'), 'required');
		$this->form_validation->set_rules('height', $this->lang->line('text_height'), 'required');
		$this->form_validation->set_rules('weight', $this->lang->line('text_weight'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class'), 'required');
		$this->form_validation->set_rules('checkout_product', $this->lang->line('text_checkout_product'), 'callback_validate_checkout_product');
		$this->form_validation->set_rules('checkout_fee', $this->lang->line('text_checkout_fee'), 'callback_validate_checkout_fee');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'sale_id'            => $this->input->post('sale_id'),
				'status'             => $this->input->post('status'),
				'tracking'           => $this->input->post('tracking'),
				'length'             => $this->input->post('length'),
				'width'              => $this->input->post('width'),
				'height'             => $this->input->post('height'),
				'weight'             => $this->input->post('weight'),
				'length_class_id'    => $this->input->post('length_class_id'),
				'weight_class_id'    => $this->input->post('weight_class_id'),
				'shipping_provider'  => $this->input->post('shipping_provider'),
				'shipping_service'   => $this->input->post('shipping_service'),
				'note'               => $this->input->post('note'),
				'checkout_products'  => $this->input->post('checkout_product'),
				'checkout_fees'      => $this->input->post('checkout_fee')				
			);
			
			$this->checkout_model->edit_checkout($checkout_id, $data);
			
			//udpate sale status
			/* $sale = $this->checkout_model->get_checkout_sale($checkout_id);
					
			if($sale) 
			{
				$this->load->model('sale/sale_model');
				
				if($data['status'] == 1)
				{
					$this->sale_model->update_status($sale['id'], 1);
				}
				else
				{
					$this->sale_model->update_status($sale['id'], 2);
				}
			} */
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkout_edit_success'));
			
			redirect(base_url() . 'check/checkout', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['checkout_id']     	= $this->input->get('checkout_id');
			$data['sale_id']         	= $this->input->post('sale_id');
			$data['tracking']        	= $this->input->post('tracking');
			$data['status']          	= $this->input->post('status');
			$data['length']          	= $this->input->post('length');
			$data['width']          	= $this->input->post('width');
			$data['height']          	= $this->input->post('height');
			$data['length_class_id']    = $this->input->post('length_class_id');
			$data['weight_class_id']    = $this->input->post('weight_class_id');
			$data['shipping_provider']  = $this->input->post('shipping_provider');
			$data['shipping_service']   = $this->input->post('shipping_service');
			$data['note']            	= $this->input->post('note');
			$data['checkout_fees']   	= $this->input->post('checkout_fee');
			
			$checkout_products = $this->input->post('checkout_product');
			
			$data['checkout_products'] = array();
						
			if($checkout_products)
		    {	
				foreach($checkout_products as $checkout_product) 
				{
					$locations = array();
					
					$product_id = $checkout_product['product_id'];
					
					$product_data = $this->product_model->get_product($product_id);	
					
					$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);	
				
					if($inventories_data)
					{
						foreach($inventories_data as $inventory_data)
						{
							$locations[] = array(
								'location_id' => $inventory_data['location_id'],
								'name'        => $inventory_data['location_name']
							);
						}
					}
						
					if(isset($checkout_product['location_id']))	
					{
						$location_id = $checkout_product['location_id'];
					}
					else
					{
						$location_id = '';
					}
						
					$data['checkout_products'][] = array(
						'product_id'   => $product_data['id'],
						'name'         => $product_data['name'],
						'upc'          => $product_data['upc'],
						'sku'          => $product_data['sku'],
						'quantity'     => $checkout_product['quantity'],
						'location_id'  => $location_id,
						'locations'    => $locations
					);
				}
			}						
		}
		else
		{
			$checkout = $this->checkout_model->get_checkout($checkout_id);	
		
			$data['sale_id']  	  		= $checkout['sale_id'];
			$data['location_id']  		= $checkout['location_id'];
			$data['tracking']     		= $checkout['tracking'];
			$data['status']       		= $checkout['status'];
			$data['length']          	= $checkout['length'];
			$data['width']          	= $checkout['width'];
			$data['height']          	= $checkout['height'];
			$data['weight']          	= $checkout['weight'];
			$data['length_class_id']    = $checkout['length_class_id'];
			$data['weight_class_id']    = $checkout['weight_class_id'];
			$data['shipping_provider']  = $checkout['shipping_provider'];
			$data['shipping_service']   = $checkout['shipping_service'];
			$data['note']         		= $checkout['note'];
			
			$data['checkout_products'] = array();
			
			$chekout_products = $this->checkout_model->get_checkout_products($checkout_id);	
			
			foreach($chekout_products as $chekout_product) 
			{
				$locations = array();
				
				$product_id = $chekout_product['product_id'];
								
				$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);	
				
				if($inventories_data)
				{
					foreach($inventories_data as $inventory_data)
					{
						$locations[] = array(
							'location_id' => $inventory_data['location_id'],
							'name'        => $inventory_data['location_name']
						);
					}
				}
				
				$data['checkout_products'][] = array(
					'product_id'  => $product_id,
					'name'        => $chekout_product['name'],
					'upc'         => $chekout_product['upc'],
					'sku'         => $chekout_product['sku'],
					'quantity'    => $chekout_product['quantity'],
					'location_id' => $chekout_product['location_id'],
					'locations'   => $locations
				);
			}

			$data['checkout_fees'] = array();
			
			$checkout_fees_data = $this->checkout_model->get_checkout_fees($checkout_id);	
			
			if($checkout_fees_data) 
			{
				foreach($checkout_fees_data as $checkout_fee_data) {
					$data['checkout_fees'][] = array(
						'name'   => $checkout_fee_data['name'],
						'amount' => $checkout_fee_data['amount']
					);
				}
			}
		}
		
		//length classes
		$length_classes = $this->length_class_model->get_all_length_classes();
		
		$data['length_classes'] = array();
		
		if($length_classes) 
		{
			foreach($length_classes as $length_class)
			{
				$data['length_classes'][] = array(
					'id'    => $length_class['id'],
					'unit'  => $length_class['unit']
				);
			}
		}
			
		//weight classses
		$weight_classes = $this->weight_class_model->get_all_weight_classes();
		
		$data['weight_classes'] = array();
		
		if($weight_classes) 
		{
			foreach($weight_classes as $weight_class)
			{
				$data['weight_classes'][] = array(
					'id'    => $weight_class['id'],
					'unit'  => $weight_class['unit']
				);
			}
		}
		
		//shipping providers			
		$shipping_providers_data = $this->shipping_model->get_shipping_providers();
				
		$data['shipping_providers'] = array();
		
		foreach($shipping_providers_data as $shipping_provider_data) 
		{
			$code = $shipping_provider_data['code'];
			
			if($this->config->item($code .'_status'))
			{
				$data['shipping_providers'][] = array(
					'code'     => $shipping_provider_data['code'],
					'name'     => $shipping_provider_data['name']
				);
			}
		}
		
		//shipping services		
		$shipping_provider = $data['shipping_provider'];
		
		$shipping_services_data = $this->shipping_model->get_shipping_services($shipping_provider);
				
		$data['shipping_services'] = array();
		
		if($shipping_services_data) 
		{
			foreach($shipping_services_data as $shipping_service_data) 
			{
				$data['shipping_services'][] = array(
					'code'     => $shipping_service_data['code'],
					'name'     => $shipping_service_data['name']
				);
			}
		}
			
		//label
		$checkout = $this->checkout_model->get_checkout($checkout_id);
		
		if(is_file(FCPATH . $checkout['label'])) 
		{
			$data['label'] = base_url() . $checkout['label'];
		}
		else
		{
			$data['label'] = false;
		}	
			
		$data['checkout_id'] = $this->input->get('checkout_id');	
			
		$data['checkout_edit_title'] = sprintf($this->lang->line('text_checkout_edit_title'), $checkout_id);
			
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('check/checkout_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		$this->load->model('check/checkout_model');
		
		if($this->input->get('checkout_id'))
		{
			$checkout_id = $this->input->get('checkout_id');
			
			$this->checkout_model->delete_checkout($checkout_id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}

	function validate_checkout_product()
	{	
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');

		if($this->input->post('checkout_product'))
		{
			$validated = true;
			
			$error_message = '';
			
			$checkout_products = $this->input->post('checkout_product');
			
			foreach($checkout_products as $checkout_product)
			{
				if(!isset($checkout_product['location_id']) && empty($checkout_product['location_id']))
				{
					$product_id = $checkout_product['product_id'];
					
					$product_info = $this->product_model->get_product($product_id);
					
					$error_message .= sprintf($this->lang->line('error_checkout_product_no_location'), $product_info['name']);
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
				else
				{
					$product_id = $checkout_product['product_id'];
					$location_id  = $checkout_product['location_id'];
					$quantity     = $checkout_product['quantity'];
					
					$product_info = $this->product_model->get_product($product_id);

					if(!$quantity)
					{					
						$error_message .= sprintf($this->lang->line('error_checkout_product_quantity_required'), $product_info['name']);
						$error_message .= '<br>';
						
						if($validated) 
							$validated = false;
					}
					
					$inventory = $this->inventory_model->get_inventory_by_location_product($location_id, $product_id);
					
					if($inventory['quantity'] < $quantity)
					{
						$location_info = $this->location_model->get_location($location_id);
						
						$error_message .= sprintf($this->lang->line('error_checkout_product_inventory_insufficient'), $product_info['name'], $location_info['name'], $inventory['quantity']);
						$error_message .= '<br>';
						
						if($validated)
							$validated = false;
					}
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkout_product', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			$this->form_validation->set_message('validate_checkout_product', $this->lang->line('error_checkout_product_required'));
			
			return false;
		}	
	}
	
	function validate_checkout_fee()
	{		
		if($this->input->post('checkout_fee'))
		{
			$validated = true;
			
			$error_message = '';
			
			$checkout_fees = $this->input->post('checkout_fee');
			
			foreach($checkout_fees as $row => $checkout_fee)
			{
				if(empty($checkout_fee['name']))
				{
					$error_message .= sprintf($this->lang->line('error_checkout_fee_name_required'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
				
				if(empty($checkout_fee['amount']))
				{
					$error_message .= sprintf($this->lang->line('error_checkout_fee_amount_required'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkout_fee', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{			
			return true;
		}	
	}
	
	function validate_add_tracking($tracking)
	{
		$this->load->model('check/checkout_model');
		
		if($tracking)
		{
			$result = $this->checkout_model->get_checkout_by_tracking($tracking);
		
			if($result)
			{
				$this->form_validation->set_message('validate_add_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
						
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}
	
	function validate_edit_tracking($tracking)
	{
		$this->load->model('check/checkout_model');
		
		if($tracking)
		{
			$result = $this->checkout_model->get_checkout_by_tracking($tracking);
		
			if($result)
			{
				$checkout_id = $this->input->get('checkout_id');
				
				if($checkout_id != $result['id'])
				{
					$this->form_validation->set_message('validate_edit_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
					
					return false;
				}
				else
				{
					return true;
				}
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}
	
	function validate_sale($sale_id)
	{
		$this->load->model('sale/sale_model');

		if($sale_id)
		{
			$result = $this->sale_model->get_sale($sale_id);
			
			if(!$result)
			{
				$this->form_validation->set_message('validate_sale', sprintf($this->lang->line('error_sale_not_exist'), $sale_id));
						
				return false;
			}
			else 
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}
}

