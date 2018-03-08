<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Product extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
	}
	
	function index()
	{
		$this->load->model('client/client_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		
		$data['success'] = $this->session->flashdata('success');
		
		if($this->input->get('filter_client_id'))
		{
			$filter_client_id = $this->input->get('filter_client_id');
		} 
		else 
		{
			$filter_client_id = '';
		}
	
		if($this->input->get('filter_upc'))
		{
			$filter_upc = $this->input->get('filter_upc');
		} 
		else 
		{
			$filter_upc = '';
		}
		
		if($this->input->get('filter_sku'))
		{
			$filter_sku = $this->input->get('filter_sku');
		} 
		else 
		{
			$filter_sku = '';
		}
	
		if($this->input->get('filter_quantity'))
		{
			$filter_quantity = $this->input->get('filter_quantity');
		} 
		else 
		{
			$filter_quantity = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'product.date_added';
		}

		if($this->input->get('order')) 
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
		
		if($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		} 
		else 
		{
			$page = 1;
		}
		
		$filter_data = array(
			'filter_client_id' => $filter_client_id,
			'filter_upc'       => $filter_upc,
			'filter_sku'       => $filter_sku,
			'filter_quantity'  => $filter_quantity,			
			'sort'             => $sort,
			'order'            => $order,
			'start'            => ($page - 1) * $limit,
			'limit'            => $limit
		);
		
		$products = $this->product_model->get_products($filter_data);	
		$product_total = $this->product_model->get_product_total($filter_data);
		
		$data['products'] = array();
		
		if($products) 
		{
			foreach($products as $product)
			{	
				$this->load->model('inventory/inventory_model');
			
				$quantity = $this->inventory_model->get_product_quantity($product['id']);	

				$length_class = $this->length_class_model->get_length_class($product['length_class_id']);

				$weight_class = $this->weight_class_model->get_weight_class($product['weight_class_id']);

				$data['products'][] = array(
					'product_id'   		=> $product['id'],
					'client'       		=> $product['client'],
					'upc'          		=> $product['upc'],
					'sku'          		=> $product['sku'],
					'name'         		=> $product['name'],
					'length'       		=> $product['length'],					
					'width'        		=> $product['width'],
					'height'       		=> $product['height'],
					'weight'       		=> $product['weight'],
					'length_class' 		=> $length_class['unit'],
					'weight_class' 		=> $weight_class['unit'],
					'shipping_provider' => $product['shipping_provider'],
					'quantity'    		=> ($quantity)?$quantity:0
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
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
	
		$this->pagination->total  = $product_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'catalog/product?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

		$url = '';
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
			
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
			
		if ($this->input->get('limit')) 
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
		
		$data['sort_name']       = base_url() . 'catalog/product?sort=product.name' . $url;		
		$data['sort_client']     = base_url() . 'catalog/product?sort=client.id' . $url;
		$data['sort_upc']        = base_url() . 'catalog/product?&sort=product.upc' . $url;
		$data['sort_sku']        = base_url() . 'catalog/product?sort=product.sku' . $url;
		$data['sort_quantity']   = base_url() . 'catalog/product?sort=product.quantity' . $url;

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
		
		$data['filter_url'] = base_url().'catalog/product'  .$url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_client_id']     = $filter_client_id;
		$data['filter_upc']           = $filter_upc;
		$data['filter_sku']           = $filter_sku;
		$data['filter_quantity']      = $filter_quantity;
		
		//edit permission
		$data['modifiable'] = $this->auth->has_permission('modify', 'catalog');
		
		//client
		$data['clients'] = array();
		
		$clients = $this->client_model->get_all_clients();
		
		if($clients)
		{
			foreach($clients as $client)
			{	
				$data['clients'][] = array(
					'client_id'  => $client['id'],
					'name'       => $client['name']
				);	
			}
		}
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->load->library('form_validation');
		
		$this->load->library('predis');
		
		$this->predis->test();

		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
	
		$this->form_validation->set_rules('sku', $this->lang->line('text_sku'), 'required|callback_validate_edit_sku');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class'), 'required');
		$this->form_validation->set_rules('price',$this->lang->line('error_price_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('length',$this->lang->line('error_length_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('width',$this->lang->line('error_width_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('height',$this->lang->line('error_height_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('weight',$this->lang->line('error_weight_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('alert_quantity',$this->lang->line('error_alert_quantity_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');

		$data = array(
			'upc'                => $this->input->post('upc'),
			'sku'                => $this->input->post('sku'),
			'asin'               => $this->input->post('asin'),
			'name'               => $this->input->post('name'),
			'price'              => $this->input->post('price'),
			'alert_quantity'     => $this->input->post('alert_quantity'),
			'length'             => $this->input->post('length'),
			'width'              => $this->input->post('width'),
			'height'             => $this->input->post('height'),
			'weight'             => $this->input->post('weight'),
			'length_class_id'    => $this->input->post('length_class_id'),
			'weight_class_id'    => $this->input->post('weight_class_id'),
			'shipping_provider'  => $this->input->post('shipping_provider'),
			'shipping_service'   => $this->input->post('shipping_service'),
			'client_id'          => $this->input->post('client_id'),
			'product_fees'       => $this->input->post('product_fee')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->product_model->add_product($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_product_add_success'));
			
			redirect(base_url() . 'catalog/product', 'refresh');
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
		$this->load->model('extension/shipping_model');
		
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
		
		//clients
		$data['clients'] = array();
		
		$this->load->model('client/client_model');
		
		$clients = $this->client_model->get_all_clients();
				
		if($clients)
		{
			foreach($clients as $client) 
			{
				$data['clients'][] = array(
					'id'    => $client['id'],
					'name'  => $client['name']
				);
			}
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->load->library('form_validation');
		
		$this->load->model('extension/shipping_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
	
		$product_id = $this->input->get('product_id');
	
		$this->form_validation->set_message('regex_match', '%s');

		$this->form_validation->set_rules('sku', $this->lang->line('text_sku'), 'required|callback_validate_edit_sku');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class'), 'required');
		$this->form_validation->set_rules('price',$this->lang->line('error_price_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('length',$this->lang->line('error_length_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('width',$this->lang->line('error_width_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('height',$this->lang->line('error_height_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('weight',$this->lang->line('error_weight_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		$this->form_validation->set_rules('alert_quantity',$this->lang->line('error_alert_quantity_positive_number'),'regex_match[/^[+]?\d+([.]\d+)?$/]');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'upc'                => $this->input->post('upc'),
				'sku'                => $this->input->post('sku'),
				'asin'               => $this->input->post('asin'),
				'name'               => $this->input->post('name'),
				'price'              => $this->input->post('price'),
				'length'             => $this->input->post('length'),
				'width'              => $this->input->post('width'),
				'height'             => $this->input->post('height'),
				'weight'             => $this->input->post('weight'),
				'length_class_id'    => $this->input->post('length_class_id'),
				'weight_class_id'    => $this->input->post('weight_class_id'),
				'shipping_provider'  => $this->input->post('shipping_provider'),
				'shipping_service'   => $this->input->post('shipping_service'),
				'alert_quantity'     => $this->input->post('alert_quantity'),
				'client_id'          => $this->input->post('client_id'),
				'product_fees'       => $this->input->post('product_fee')
			);
			
			$this->product_model->edit_product($product_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_product_edit_success'));
			
			redirect(base_url() . 'catalog/product', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{	
			$data['upc']               = $this->input->post('upc');
			$data['sku']               = $this->input->post('sku');
			$data['asin']              = $this->input->post('asin');
			$data['name']              = $this->input->post('name');
			$data['price']             = $this->input->post('price');
			$data['length']            = $this->input->post('length');
			$data['width']             = $this->input->post('width');
			$data['height']            = $this->input->post('height');
			$data['weight']            = $this->input->post('weight');
			$data['length_class_id']   = $this->input->post('length_class_id');
			$data['weight_class_id']   = $this->input->post('weight_class_id');
			$data['shipping_provider'] = $this->input->post('shipping_provider');
			$data['shipping_service']  = $this->input->post('shipping_service');
			$data['alert_quantity']    = $this->input->post('alert_quantity');
			$data['client_id']         = $this->input->post('client_id');
			$data['product_fees']      = $this->input->post('product_fee');
		}
		else
		{
			$product = $this->product_model->get_product($product_id);
			
			$data['upc']               = $product['upc'];
			$data['sku']               = $product['sku'];
			$data['asin']              = $product['asin'];
			$data['name']              = $product['name'];
			$data['price']             = $product['price'];
			$data['length']            = $product['length'];
			$data['width']             = $product['width'];
			$data['height']            = $product['height'];
			$data['weight']            = $product['weight'];
			$data['length_class_id']   = $product['length_class_id'];
			$data['weight_class_id']   = $product['weight_class_id'];
			$data['shipping_provider'] = $product['shipping_provider'];
			$data['shipping_service']  = $product['shipping_service'];
			$data['alert_quantity']    = $product['alert_quantity'];
			$data['client_id']    	   = $product['client_id'];
			
			$data['product_fees'] = array();
			
			$product_fees_data = $this->product_model->get_product_fees($product_id);	
			
			if($product_fees_data) 
			{
				foreach($product_fees_data as $product_fee_data) {
					$data['product_fees'][] = array(
						'name'   => $product_fee_data['name'],
						'type'   => $product_fee_data['type'],
						'amount' => $product_fee_data['amount']
					);
				}
			} 
		}

		$data['product_id'] = $product_id;
		
		//quantity
		$quantity = $this->inventory_model->get_product_quantity($product_id);
		
		$data['quantity'] = ($quantity)?$quantity:0;
		
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
		$data['shipping_services'] = array();
		
		if($data['shipping_provider'])
		{
			$shipping_provider = $data['shipping_provider'];
			
			$shipping_services_data = $this->shipping_model->get_shipping_services($shipping_provider);
					
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
		}
		
		//clients
		$data['clients'] = array();
		
		$this->load->model('client/client_model');
		
		$clients_data = $this->client_model->get_all_clients();
				
		if($clients_data)
		{
			foreach($clients_data as $client_data) 
			{
				$data['clients'][] = array(
					'id'    => $client_data['id'],
					'name'  => $client_data['name']
				);
			}
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		$this->load->model('inventory/inventory_model');
		
		$this->load->model('inventory/transfer_model');
		
		if($this->input->get('product_id'))
		{
			$product_id = $this->input->get('product_id');
			
			$transfer = $this->transfer_model->get_transfer_by_product($product_id);
			
			$inventory = $this->inventory_model->get_inventories_by_product($product_id);
			
			if($transfer || $inventory)
			{
				$msgs = [];
				
				if($transfer) 
					$msgs[] = $this->lang->line('error_can_not_delete_transfer_exist');

				if($inventory) 
					$msgs[] = $this->lang->line('error_can_not_delete_inventory_exist');

				$outdata = array(
					'success' => false,
					'msgs'    => $msgs
				);
			}
			else
			{
				$this->product_model->delete_product($product_id);

				$outdata = array(
					'success' => true
				);
			}
				
			echo json_encode($outdata);
		}
	}
	
	function validate_add_sku($sku)
	{
		$result = $this->product_model->get_product_by_sku($sku);
		
		if($result)
		{
			$this->form_validation->set_message('validate_add_sku', sprintf($this->lang->line('error_sku_is_used'), $sku));
		
			return false;
		}
		else 
		{
			return true;
		}
	}
	
	function validate_edit_sku($sku)
	{
		$result = $this->product_model->get_product_by_sku($sku);
		
		if($result && $this->input->get('product_id'))
		{
			$product_id = $this->input->get('product_id');
		
			if($product_id == $result['id'])
			{
				return true;
			}
			else
			{
				$this->form_validation->set_message('validate_edit_sku', sprintf($this->lang->line('error_sku_is_used'), $sku));
			
				return false;
			}
			
		}
		else 
		{
			return true;
		}
	}
}


