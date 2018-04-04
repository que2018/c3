<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale extends CI_Controller {

	public function index()
	{		
		$data = $this->get_list();
			
		$this->load->view('common/header');
		$this->load->view('sale/sale_list', $data);
		$this->load->view('common/footer');
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('sale/sale_list_table', $data);
	}
	
	protected function get_list()
	{	
		$this->lang->load('sale/sale');
	
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		
		$data['success'] = $this->session->flashdata('success');
	
		if($this->input->get('filter_sale_id'))
		{
			$filter_sale_id = $this->input->get('filter_sale_id');
		} 
		else 
		{
			$filter_sale_id = '';
		}
		
		if($this->input->get('filter_store_sale_id'))
		{
			$filter_store_sale_id = $this->input->get('filter_store_sale_id');
		} 
		else 
		{
			$filter_store_sale_id = '';
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
		
		if($this->input->get('sort'))
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'sale.id';
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
		
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$filter_data = array(
			'filter_sale_id'        => $filter_sale_id,
			'filter_store_sale_id'  => $filter_store_sale_id,
			'filter_tracking'       => $filter_tracking,
			'filter_status'         => $filter_status,
			'sort'                  => $sort,
			'order'                 => $order,
			'start'                 => ($page - 1) * $limit,
			'limit'                 => $limit
		);
		
		$sales = $this->sale_model->get_sales($filter_data);
		$sale_total = $this->sale_model->get_sale_total($filter_data);
		
		$data['sales'] = array();
		
		if($sales)
		{
			$this->load->model('store/store_model');
			
			foreach($sales as $sale)
			{
				//store
				$store_id = $sale['store_id'];

				$store = $this->store_model->get_store($store_id);	
				
				$store_name = $store['name'];	

				//checkout
				$checkout = $this->checkout_model->get_sale_checkout($sale['id']);	
					
				//sale products
				$sale_products = array();
				
				$sale_products_data = $this->sale_model->get_sale_products($sale['id']);	
				
				foreach($sale_products_data as $sale_product_data) 
				{
					$sale_products[] = array(
						'name'      => $sale_product_data['name'],
						'quantity'  => $sale_product_data['quantity']
					);
				}
			
				$length_class = $this->length_class_model->get_length_class($sale['length_class_id']);

				$weight_class = $this->weight_class_model->get_weight_class($sale['weight_class_id']);

				//shipping info
				if($sale['shipping_provider'] && $sale['shipping_service'])
				{
					$shipping_provider = $sale['shipping_provider'];
					$shipping_service_code  = $sale['shipping_service'];
					
					$shipping_service = $this->shipping_model->get_shipping_service($shipping_provider, $shipping_service_code);
					
					$shipping = $shipping_service['name'];
				}
				else
				{
					$shipping = '';
				}
				
				$data['sales'][] = array(
					'sale_id'         => $sale['id'],
					'store_name'      => $store_name,
					'store_sale_id'   => $sale['store_sale_id'],
					'tracking'        => $sale['tracking'],
					'status_id'       => $sale['status_id'],
					'name'            => $sale['name'],
					'length' 		  => $sale['length'],
					'width' 		  => $sale['width'],
					'height' 		  => $sale['height'],
					'weight' 		  => $sale['weight'],
					'length_class' 	  => $length_class['unit'],
					'weight_class' 	  => $weight_class['unit'],
					'shipping'        => $shipping,
					'date_added'      => $sale['date_added'],
					'sale_products'   => $sale_products,
					'checkout'        => $checkout,
					'edit'            => base_url() . 'sale/sale/edit?sale_id=' . $sale['id'] . $url
				);	
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
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
	
		$this->pagination->total  = $sale_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'sale/sale?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($sale_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($sale_total - $limit)) ? $sale_total : ((($page - 1) * $limit) + $limit), $sale_total, ceil($sale_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if ($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if ($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_sale_id']   	  = base_url().'sale/sale?sort=sale.id' . $url;
		$data['sort_store_sale_id']   = base_url().'sale/sale?sort=sale.store_sale_id' . $url;
		$data['sort_tracking']        = base_url().'sale/sale?sort=sale.tracking' . $url;
		$data['sort_status']          = base_url().'sale/sale?sort=sale.status_id' . $url;
		$data['sort_date_added']      = base_url().'sale/sale?sort=sale.date_added' . $url;

		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'sale/sale' . $url;
		
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
	
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
			
		$data['add'] = base_url() . 'sale/sale/add' . $url;
		
		$data['reload_url'] = base_url() . 'sale/sale/reload' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['page']  = $page;
		$data['limit'] = $limit;
		
		$data['filter_sale_id']   	  = $filter_sale_id;
		$data['filter_store_sale_id'] = $filter_store_sale_id;
		$data['filter_tracking']      = $filter_tracking;
		$data['filter_status']        = $filter_status;
		
		return $data;
	}

	public function add() 
	{
		$this->lang->load('sale/sale');
		
		$this->load->library('form_validation');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('catalog/product_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
	
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
	
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
	
		$this->form_validation->set_rules('status_id', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('name', $this->lang->line('text_customer_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_customer_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_customer_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_customer_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_customer_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_customer_zipcode'), 'required');
		$this->form_validation->set_rules('length', $this->lang->line('text_length'), 'required');
		$this->form_validation->set_rules('width', $this->lang->line('text_width'), 'required');
		$this->form_validation->set_rules('height', $this->lang->line('text_height'), 'required');
		$this->form_validation->set_rules('weight', $this->lang->line('text_weight'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class_id'), 'required');
		$this->form_validation->set_rules('sale_product[]', $this->lang->line('text_order_products'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_add_tracking');
		
		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data = array(
				'total'    		    => $this->input->post('total'),
				'status_id'    		=> $this->input->post('status_id'),
				'tracking'    		=> $this->input->post('tracking'),
				'note'     		    => $this->input->post('note'),
				'name'       		=> $this->input->post('name'),
				'street'      		=> $this->input->post('street'),
				'street2'      		=> $this->input->post('street2'),
				'city'        		=> $this->input->post('city'),
				'state'       		=> $this->input->post('state'),
				'country'     		=> $this->input->post('country'),
				'zipcode'           => $this->input->post('zipcode'),
				'email'             => $this->input->post('email'),
				'phone'             => $this->input->post('phone'),
				'length'            => $this->input->post('length'),
				'width'             => $this->input->post('width'),
				'height'            => $this->input->post('height'),
				'weight'            => $this->input->post('weight'),
				'length_class_id'   => $this->input->post('length_class_id'),
				'weight_class_id'   => $this->input->post('weight_class_id'),
				'shipping_provider' => $this->input->post('shipping_provider'),
				'shipping_service'  => $this->input->post('shipping_service'),
				'store_id'          => $this->input->post('store_id'),
				'store_sale_id'     => $this->input->post('store_sale_id'),
				'sale_fees'         => $this->input->post('sale_fee')
			);
			
			$data['sale_products'] = array();
			
			$sale_products = $this->input->post('sale_product');
			
			if($sale_products)
			{
				foreach($sale_products as $sale_product)
				{
					$product = $this->product_model->get_product($sale_product['product_id']);

					$data['sale_products'][] = array(
						'product_id'  => $product['id'],
						'upc'         => $product['upc'],
						'sku'         => $product['sku'],
						'name'        => $product['name'],
						'quantity'    => $sale_product['quantity']
					);
				}
			}
		}
		else
		{
			$data = array(
				'total'    		    => '',
				'status_id'    		=> '',
				'tracking'    		=> '',
				'note'     		    => '',
				'name'       		=> '',
				'street'      		=> '',
				'street2'      		=> '',
				'city'        		=> '',
				'state'       		=> '',
				'country'     		=> '',
				'zipcode'           => '',
				'email'             => '',
				'phone'             => '',
				'length'            => '',
				'width'             => '',
				'height'            => '',
				'weight'            => '',
				'length_class_id'   => '',
				'weight_class_id'   => '',
				'shipping_provider' => $this->config->item('config_default_order_shipping_provider'),
				'shipping_service'  => $this->config->item('config_default_order_shipping_service'),
				'store_id'          => '',
				'store_sale_id'     => '',
				'sale_fees'         => '',
				'sale_products'     => array()
			);
		}
	
		if($this->form_validation->run() == true)
		{
			$sale_id = $this->sale_model->add_sale($data);
			
			$this->adjust_shipping($sale_id);
						
			$this->session->set_flashdata('success', $this->lang->line('text_sale_add_success'));
			
			redirect(base_url() . 'sale/sale' . $url, 'refresh');
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
		
		//store
		$data['stores'] = array();
		
		$stores = $this->store_model->get_all_stores();
		
		if($stores)
		{
			foreach($stores as $store)
			{
				$data['stores'][] = array(
					'store_id'  => $store['id'],
					'name'      => $store['name']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		$data['cancel'] = base_url() . 'sale/sale' . $url;
		$data['action'] = base_url() . 'sale/sale/add' . $url;
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('sale/sale_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->lang->load('sale/sale');
		
		$this->load->library('form_validation');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('check/checkout_model');
		$this->load->model('catalog/product_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
	
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
						
		$sale_id = $this->input->get('sale_id');
	
		$this->form_validation->set_rules('status_id', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required');
		$this->form_validation->set_rules('width', $this->lang->line('text_width'), 'required');
		$this->form_validation->set_rules('height', $this->lang->line('text_height'), 'required');
		$this->form_validation->set_rules('weight', $this->lang->line('text_weight'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class_id'), 'required');
		$this->form_validation->set_rules('sale_product[]', $this->lang->line('text_sale_products'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_edit_tracking');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'total'    		    => $this->input->post('total'),
				'status_id'    		=> $this->input->post('status_id'),
				'tracking'          => $this->input->post('tracking'),
				'note'              => $this->input->post('note'),
				'name'              => $this->input->post('name'),
				'street'            => $this->input->post('street'),
				'street2'           => $this->input->post('street2'),
				'city'              => $this->input->post('city'),
				'state'             => $this->input->post('state'),
				'country'           => $this->input->post('country'),
				'zipcode'           => $this->input->post('zipcode'),
				'email'             => $this->input->post('email'),
				'phone'             => $this->input->post('phone'),
				'length'            => $this->input->post('length'),
				'width'             => $this->input->post('width'),
				'height'            => $this->input->post('height'),
				'weight'            => $this->input->post('weight'),
				'length_class_id'   => $this->input->post('length_class_id'),
				'weight_class_id'   => $this->input->post('weight_class_id'),
				'shipping_provider' => $this->input->post('shipping_provider'),
				'shipping_service'  => $this->input->post('shipping_service'),
				'store_id'          => $this->input->post('store_id'),
				'store_sale_id'     => $this->input->post('store_sale_id'),
				'sale_products'     => $this->input->post('sale_product'),
				'sale_labels'       => $this->input->post('sale_label'),
				'sale_fees'         => $this->input->post('sale_fee')
			);
						
			$this->sale_model->edit_sale($sale_id, $data);
			
			$this->adjust_shipping($sale_id);
						
			$this->session->set_flashdata('success', $this->lang->line('text_sale_edit_success'));
			
			if($this->input->get('unsolved'))
			{
				redirect(base_url() . 'sale/sale_unsolved' . $url, 'refresh');
			}
			else 
			{
				redirect(base_url() . 'sale/sale' . $url, 'refresh');
			}
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['total']       	    = $this->input->post('total');
			$data['status_id']       	= $this->input->post('status_id');
			$data['tracking']       	= $this->input->post('tracking');
			$data['note']        	    = $this->input->post('note');			
			$data['name']  		    	= $this->input->post('name');
			$data['street']         	= $this->input->post('street');
			$data['street2']         	= $this->input->post('street2');
			$data['city']           	= $this->input->post('city');
			$data['state']          	= $this->input->post('state');
			$data['country']        	= $this->input->post('country');
			$data['zipcode']        	= $this->input->post('zipcode');
			$data['email']        		= $this->input->post('email');
			$data['phone']        	    = $this->input->post('phone');
			$data['length']        	    = $this->input->post('length');
			$data['width']        	    = $this->input->post('width');
			$data['height']        	    = $this->input->post('height');
			$data['weight']        	    = $this->input->post('weight');
			$data['length_class_id']    = $this->input->post('length_class_id');
			$data['weight_class_id']    = $this->input->post('weight_class_id');
			$data['shipping_provider']  = $this->input->post('shipping_provider');
			$data['shipping_service']   = $this->input->post('shipping_service');
			$data['store_id']           = $this->input->post('store_id');
			$data['store_sale_id']      = $this->input->post('store_sale_id');
			$data['sale_labels']        = $this->input->post('sale_label');
			$data['sale_fees']          = $this->input->post('sale_fee');
			
			//sale products
			$data['sale_products'] = array();
			
			$sale_products = $this->input->post('sale_product');
			
			if($sale_products)
			{
				foreach($sale_products as $sale_product)
				{
					$product_id = $sale_product['product_id'];
					
					$product = $this->product_model->get_product($product_id);

					$data['sale_products'][] = array(
						'product_id'  => $product['id'],
						'upc'         => $product['upc'],
						'sku'         => $product['sku'],
						'name'        => $product['name'],
						'quantity'    => $sale_product['quantity']
					);
				}
			}
			
			//sale labels
			$data['sale_labels'] = array();
			
			$sale_labels = $this->input->post('sale_label');
			
			if($sale_labels)
			{
				foreach($sale_labels as $sale_label)
				{					
					if(is_file(FCPATH . $sale_label['path'])) 
					{
						$data['sale_labels'][] = array(
							'tracking'  => $sale_label['tracking'],
							'path'      => $sale_label['path'],
							'link'      => base_url() . $sale_label['path']
						);
					}
				}
			}
		}
		else
		{
			$sale = $this->sale_model->get_sale($sale_id);
			
			$data['total']       	    = $sale['total'];			
			$data['status_id']   		= $sale['status_id'];	
			$data['tracking']   		= $sale['tracking'];
			$data['note']    		    = $sale['note'];
			$data['name']       		= $sale['name'];
			$data['street']     		= $sale['street'];
			$data['street2']     		= $sale['street2'];
			$data['city']       		= $sale['city'];
			$data['state']      		= $sale['state'];
			$data['country']    		= $sale['country'];
			$data['zipcode']            = $sale['zipcode'];
			$data['email']              = $sale['email'];
			$data['phone']              = $sale['phone'];
			$data['length']        	    = $sale['length'];
			$data['width']        	    = $sale['width'];
			$data['height']        	    = $sale['height'];
			$data['weight']        	    = $sale['weight'];
			$data['length_class_id']    = $sale['length_class_id'];
			$data['weight_class_id']    = $sale['weight_class_id'];
			$data['shipping_provider']  = $sale['shipping_provider'];
			$data['shipping_service']   = $sale['shipping_service'];
			$data['store_id']           = $sale['store_id'];
			$data['store_sale_id']      = $sale['store_sale_id'];
			
			//sale products
			$sale_products = $this->sale_model->get_sale_products($sale_id);
			
			$data['sale_products'] = array();
			
			foreach($sale_products as $sale_product)
			{
				$product_id = $sale_product['product_id'];
				
				$data['sale_products'][] = array(
					'product_id'   => $product_id,
					'upc'          => $sale_product['upc'],
					'sku'          => $sale_product['sku'],
					'name'         => $sale_product['name'],
					'quantity'     => $sale_product['quantity']
				);
			}
			
			//sale labels
			$data['sale_labels'] = array();
			
			$sale_labels = $this->sale_model->get_sale_labels($sale_id);
			
			if($sale_labels)
			{
				foreach($sale_labels as $sale_label)
				{					
					if(is_file(FCPATH . $sale_label['path'])) 
					{
						$data['sale_labels'][] = array(
							'tracking'  => $sale_label['tracking'],
							'path'      => $sale_label['path'],
							'link'      => base_url() . $sale_label['path']
						);
					}
				}
			}
			
			//sale fees
			$data['sale_fees'] = array();
			
			$sale_fees = $this->sale_model->get_sale_fees($sale_id);	
			
			if($sale_fees) 
			{
				foreach($sale_fees as $sale_fee) {
					$data['sale_fees'][] = array(
						'name'   => $sale_fee['name'],
						'amount' => $sale_fee['amount']
					);
				}
			}
		}
		
		$data['sale_id'] = $sale_id;
		
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
		
		//shipping methods
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
		
		//store
		$data['stores'] = array();
		
		$stores = $this->store_model->get_all_stores();
		
		if($stores)
		{
			foreach($stores as $store)
			{
				$data['stores'][] = array(
					'store_id'  => $store['id'],
					'name'      => $store['name']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('unsolved'))
		{
			$data['cancel'] = base_url() . 'sale/sale_unsolved' . $url;
			$data['action'] = base_url() . 'sale/sale/edit' . $url . '&sale_id=' . $sale_id . '&unsolved=1';
		}
		else
		{
			$data['cancel'] = base_url() . 'sale/sale' . $url;
			$data['action'] = base_url() . 'sale/sale/edit' . $url . '&sale_id=' . $sale_id;
		}
				
		$data['error'] = validation_errors();
	
		$this->load->view('common/header');
		$this->load->view('sale/sale_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		$this->load->model('sale/sale_model');
		
		if($this->input->get('sale_id'))
		{
			$sale_id = $this->input->get('sale_id');
			
			$this->sale_model->delete_sale($sale_id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}
	
	function validate_add_tracking($tracking)
	{
		$this->load->model('sale/sale_model');
		
		if($tracking)
		{
			$result = $this->sale_model->get_sale_by_tracking($tracking);
		
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
		$this->load->model('sale/sale_model');
		
		if($tracking)
		{
			$result = $this->sale_model->get_sale_by_tracking($tracking);
		
			if($result)
			{
				$sale_id = $this->input->get('sale_id');
				
				if($sale_id != $result['id'])
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
	
	function adjust_shipping($sale_id)
	{
		$this->load->model('sale/sale_model');
		
		$sale = $this->sale_model->get_sale($sale_id);
		
		if(empty($sale['shipping_provider']) || empty($sale['shipping_service']))
		{
			$shipping_data = array(
				'shipping_provider' => $this->config->item('config_default_order_shipping_provider'),
				'shipping_service'  => $this->config->item('config_default_order_shipping_service')
			);
			
			$this->sale_model->update_shipping($sale_id, $shipping_data);
		}
	}
}


