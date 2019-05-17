<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller 
{
	public function index()
	{
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		
		$data['success'] = $this->session->flashdata('success');
		                   
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
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
			'filter_name'     => $filter_name,
			'filter_upc'      => $filter_upc,
			'filter_sku'      => $filter_sku,
			'filter_quantity' => $filter_quantity,			
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
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
					'product_id'  		=> $product['id'],
					'upc'         		=> $product['upc'],
					'sku'         		=> $product['sku'],
					'asin'        		=> $product['asin'],
					'name'        		=> $product['name'],
					'length'       		=> $product['length'],					
					'width'        		=> $product['width'],
					'height'       		=> $product['height'],
					'weight'       		=> $product['weight'],
					'length_class' 		=> $length_class['unit'],
					'weight_class' 		=> $weight_class['unit'],
					'shipping_provider' => $product['shipping_provider'],
					'quantity'          => ($quantity)?$quantity:0
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
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
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
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
		
		$data['sort_name']       = base_url() . 'catalog/product?sort=name' . $url;		
		$data['sort_client']     = base_url() . 'catalog/product?sort=client_id' . $url;
		$data['sort_upc']        = base_url() . 'catalog/product?&sort=upc' . $url;
		$data['sort_sku']        = base_url() . 'catalog/product?sort=sku' . $url;
		$data['sort_quantity']   = base_url() . 'catalog/product?sort=quantity'  .$url;
		
		$url = '';
		
		if ($this->input->get('limit')) 
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
		
		$data['filter_url'] = base_url() . 'catalog/product' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']         = $filter_name;
		$data['filter_upc']          = $filter_upc;
		$data['filter_sku']          = $filter_sku;
		$data['filter_quantity']     = $filter_quantity;
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->load->library('form_validation');
	
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
	
		$this->form_validation->set_rules('sku', $this->lang->line('text_sku'), 'required');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('length', $this->lang->line('text_length'), 'required');
		$this->form_validation->set_rules('weight', $this->lang->line('text_weight'), 'required');
		$this->form_validation->set_rules('height', $this->lang->line('text_height'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class'), 'required');

		$data = array(
			'upc'                => $this->input->post('upc'),
			'sku'                => $this->input->post('sku'),
			'asin'               => $this->input->post('asin'),
			'name'               => $this->input->post('name'),
			'alert_quantity'     => $this->input->post('alert_quantity'),
			'length'             => $this->input->post('length'),
			'width'              => $this->input->post('width'),
			'height'             => $this->input->post('height'),
			'weight'             => $this->input->post('weight'),
			'length_class_id'    => $this->input->post('length_class_id'),
			'weight_class_id'    => $this->input->post('weight_class_id'),
			'shipping_provider'  => $this->input->post('shipping_provider'),
			'shipping_service'   => $this->input->post('shipping_service'),
			'client_id'          => $this->input->post('client_id')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->product_model->add_product($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_product_add_success'));
			
			redirect(base_url() . 'catalog/product', 'refresh');
		}
				
		//length classes
		$length_classes = $this->length_class_model->get_length_classes();
		
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
		$weight_classes = $this->weight_class_model->get_weight_classes();
		
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
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->load->library('form_validation');
		
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
	
		$product_id = $this->input->get('product_id');
	
		$this->form_validation->set_rules('sku', $this->lang->line('text_sku'), 'required');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('length', $this->lang->line('text_length'), 'required');
		$this->form_validation->set_rules('weight', $this->lang->line('text_weight'), 'required');
		$this->form_validation->set_rules('height', $this->lang->line('text_height'), 'required');
		$this->form_validation->set_rules('length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('weight_class_id', $this->lang->line('text_weight_class'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'upc'                => $this->input->post('upc'),
				'sku'                => $this->input->post('sku'),
				'asin'               => $this->input->post('asin'),
				'name'               => $this->input->post('name'),
				'length'             => $this->input->post('length'),
				'width'              => $this->input->post('width'),
				'height'             => $this->input->post('height'),
				'weight'             => $this->input->post('weight'),
				'length_class_id'    => $this->input->post('length_class_id'),
				'weight_class_id'    => $this->input->post('weight_class_id'),
				'shipping_provider'  => $this->input->post('shipping_provider'),
				'shipping_service'   => $this->input->post('shipping_service'),
				'alert_quantity'     => $this->input->post('alert_quantity'),
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
			$data['length']            = $this->input->post('length');
			$data['width']             = $this->input->post('width');
			$data['height']            = $this->input->post('height');
			$data['weight']            = $this->input->post('weight');
			$data['length_class_id']   = $this->input->post('length_class_id');
			$data['weight_class_id']   = $this->input->post('weight_class_id');
			$data['shipping_provider'] = $this->input->post('shipping_provider');
			$data['shipping_service']  = $this->input->post('shipping_service');
			$data['alert_quantity']    = $this->input->post('alert_quantity');
		}
		else
		{
			$product = $this->product_model->get_product($product_id);
			
			$data['upc']               = $product['upc'];
			$data['sku']               = $product['sku'];
			$data['asin']              = $product['asin'];
			$data['name']              = $product['name'];
			$data['length']            = $product['length'];
			$data['width']             = $product['width'];
			$data['height']            = $product['height'];
			$data['weight']            = $product['weight'];
			$data['length_class_id']   = $product['length_class_id'];
			$data['weight_class_id']   = $product['weight_class_id'];
			$data['shipping_provider'] = $product['shipping_provider'];
			$data['shipping_service']  = $product['shipping_service'];
			$data['alert_quantity']    = $product['alert_quantity'];
		}

		$data['product_id'] = $product_id;
		
		//quantity
		$quantity = $this->inventory_model->get_product_quantity($product_id);
		
		$data['quantity'] = ($quantity)?$quantity:0;
		
		//length classes
		$length_classes = $this->length_class_model->get_length_classes();
		
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
		$weight_classes = $this->weight_class_model->get_weight_classes();
		
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
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function view() 
	{	
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
	
		$product_id = $this->input->get('product_id');
	
		$product = $this->product_model->get_product($product_id);
			
		$data['upc']               = $product['upc'];
		$data['sku']               = $product['sku'];
		$data['asin']              = $product['asin'];
		$data['name']              = $product['name'];
		$data['length']            = $product['length'];
		$data['width']             = $product['width'];
		$data['height']            = $product['height'];
		$data['weight']            = $product['weight'];
		$data['length_class_id']   = $product['length_class_id'];
		$data['weight_class_id']   = $product['weight_class_id'];
		$data['shipping_provider'] = $product['shipping_provider'];
		$data['shipping_service']  = $product['shipping_service'];
		$data['alert_quantity']    = $product['alert_quantity'];

		//quantity
		$quantity = $this->inventory_model->get_product_quantity($product_id);
		
		$data['quantity'] = ($quantity)?$quantity:0;
		
		//length classes
		$length_classes = $this->length_class_model->get_length_classes();
		
		$data['length_classes'] = array();
		
		if($length_classes) 
		{
			foreach($length_classes as $length_class)
			{
				$data['length_classes'][] = array(
					'length_class_id'  => $length_class['id'],
					'unit'             => $length_class['unit']
				);
			}
		}
		
		//weight classses
		$weight_classes = $this->weight_class_model->get_weight_classes();
		
		$data['weight_classes'] = array();
		
		if($weight_classes) 
		{
			foreach($weight_classes as $weight_class)
			{
				$data['weight_classes'][] = array(
					'weight_class_id'  => $weight_class['id'],
					'unit'  		   => $weight_class['unit']
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
		
		$data['product_id'] = $product_id;
		
		$this->load->view('common/header');
		$this->load->view('catalog/product_view', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		$this->lang->load('catalog/product');
		
		$this->load->model('catalog/product_model');	
		$this->load->model('inventory/transfer_model');
		$this->load->model('inventory/inventory_model');
		
		if($this->input->get('id'))
		{
			$product_id = $this->input->get('id');
			
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
				$this->product_model->delete_product($id);

				$outdata = array(
					'success' => true
				);
			}
				
			echo json_encode($outdata);
		}
	}
	
	public function import() 
	{	
		$this->load->view('common/header');
		$this->load->view('catalog/product_import');
		$this->load->view('common/footer');
	}
	
	public function upload() 
	{
		$this->lang->load('catalog/product');
				
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
		
		$mode = $this->input->post('mode');
		
		$this->load->model('catalog/product_model');
		
		$obj_phpexcel = PHPExcel_IOFactory::load($file);		
		$sheet = $obj_phpexcel->getSheet(0);
		$total = $sheet->getHighestRow();
				
		$flag = true;
		
		$success = 0;
		$fail = 0;
		
		$products = array();
		
		$messages = array();
		
		for($i = 1; $i <= $total; $i++)
		{ 
			$row = $sheet->rangeToArray('A' . $i . ':L' . $i, null, true, false);

			$name   = $row[0][0];
			$sku    = $row[0][1];
			$price  = $row[0][2];
					
			//empty name
			if(!$name)
			{
				$messages[] = sprintf($this->lang->line('error_row_name'), $i);
				
				$fail++;
				
				$flag = false;
				
				continue;
			}
			
			//sku empty
			if(!$sku)
			{
				$messages[] = sprintf($this->lang->line('error_row_sku'), $i);
				
				$fail++;
				
				$flag = false;
				
				continue;
			}
			
			//price empty
			if(!$price)
			{
				$messages[] = sprintf($this->lang->line('error_row_price'), $i);
				
				$fail++;
				
				continue;
			}
			
			//sku exist
			if($mode == 2)
			{
				$product_info = $this->product_model->get_product_by_sku($sku);	
					
				if($product_info)
				{
					$messages[] = sprintf($this->lang->line('error_row_sku_exist'), $i);
					
					$fail++;
					
					continue;
				}	
			}
				
			$products[] = array(
				'upc'                => '',
				'sku'                => $sku,
				'asin'      	     => '',
				'name'               => $name,
				'price'              => $price,
				'image'              => '',
				'description'        => '',
				'weight'             => 0,
				'weight_class_id'    => 6,
				'length_class_id'    => 1,
				'length'             => 0,
				'width'              => 0,
				'height'             => 0,
				'shipping_provider'  => '',
				'shipping_service'   => '',
				'alert_quantity'     => 0
			);
		}
		
		if($flag) 
		{
			if($mode == 1)
				$this->product_model->clear_product();

			foreach($products as $product)
			{
				$this->product_model->add_product($product);
			}
			
			$success = count($products);
			
			$messages[] = sprintf($this->lang->line('text_rows_imported'), $total, $success, $fail);
			
			$result = array(
				'success'  => true,
				'messages' => $messages
			);
		}
		else 
		{
			$messages[] = sprintf($this->lang->line('text_rows_imported'), $total, 0, $total);
			
			$result = array(
				'success'   => false,
				'messages'  => $messages
			);
		}
		
		return $result;
	}
}


