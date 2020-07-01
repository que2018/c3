<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_group extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('check/checkout_group');
		
		$this->header->add_style(base_url(). 'assets/css/app/check/checkout_group_list.css');

		$this->header->set_title($this->lang->line('text_checkout_group'));
	
		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkout_group_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('check/checkout_group_list_table', $data);
	}
	
	public function filter()
	{
		$data = $this->get_list();
			
		$this->load->view('check/checkout_list_filter', $data);
	}

	protected function get_list()
	{	
		$this->lang->load('check/checkout');
		
		$this->load->model('check/checkout_group_model');
			
		if($this->input->get('filter_checkout_group_id'))
		{
			$filter_checkout_group_id = $this->input->get('filter_checkout_group_id');
		} 
		else 
		{
			$filter_checkout_group_id = '';
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
			'filter_checkout_group_id' => $filter_checkout_group_id,
			'filter_status'      	   => $filter_status,
			'filter_date_added'        => $filter_date_added,
			'sort'                     => $sort,
			'order'                    => $order,
			'start'                    => ($page - 1) * $limit,
			'limit'                    => $limit
		);
		
		$checkout_groups = $this->checkout_group_model->get_checkout_groups($filter_data);	
		$checkout_group_total = $this->checkout_group_model->get_checkout_group_total($filter_data);
		
		$data['checkout_groups'] = array();
		
		if($checkout_groups) 
		{
			foreach($checkout_groups as $checkout_group)
			{	
				$data['checkout_groups'][] = array(
					'checkout_group_id'  => $checkout_group['checkout_group_id'],
					'status'         	 => $checkout_group['status'],
					'date_added'     	 => $checkout_group['date_added'],
				);
			}
		}
		
		$url = '';
	
		if($this->input->get('filter_checkout_group_id')) 
		{
			$url .= '&filter_checkout_group_id=' . $this->input->get('filter_checkout_group_id');
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
	
		$this->pagination->total  = $checkout_group_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'check/checkout_group?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($checkout_group_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($checkout_group_total - $limit)) ? $checkout_group_total : ((($page - 1) * $limit) + $limit), $checkout_group_total, ceil($checkout_group_total / $limit));

		$url = '';
		
		if($this->input->get('filter_checkout_group_id')) 
		{
			$url .= '&filter_checkout_group_id=' . $this->input->get('filter_checkout_group_id');
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
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
		
		$data['sort_checkout_group_id'] = base_url() . 'check/checkout_group?sort=checkout_group_id' . $url;
		$data['sort_status']            = base_url() . 'check/checkout_group?sort=status' . $url;
		$data['sort_date_added']        = base_url() . 'check/checkout_group?sort=date_added' . $url;
	
		$url = '';
		
		if($this->input->get('limit')) 
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
				
		$data['filter_url'] = base_url() . 'check/checkout_group/filter' . $url;
		
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page='.$this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
		
		if($this->input->get('filter_checkout_group_id')) 
		{
			$url .= '&filter_checkout_group_id=' . $this->input->get('filter_checkout_group_id');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
		
		$data['reload'] = base_url() . 'check/checkout_group/reload' . $url;
	
		$data['sort']   = $sort;
		$data['order']  = $order;
		$data['limit']  = $limit;
		
		$data['filter_checkout_group_id'] = $filter_checkout_group_id;
		$data['filter_status']            = $filter_status;
		$data['filter_date_added']        = $filter_date_added;
				
		return $data;
	}
	
	public function add()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('currency');
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('check/checkout_group');
		
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_group_model');

		$this->header->add_style(base_url(). 'assets/css/app/check/checkout_group_add.css');	

		$this->header->set_title($this->lang->line('text_checkout_group_add'));

		$this->form_validation->set_rules('sale_id', $this->lang->line('text_sale_id'), 'callback_validate_sale');

		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data['sale_ids'] = $this->input->post('sale_id');
		}
		else
		{
			$data['sale_ids'] = array();
		}
		
		if($this->form_validation->run() == true)
		{
			$this->checkout_group_model->add_checkout_group($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkout_group_add_success'));
			
			redirect(base_url() . 'check/checkout_group', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkout_group_add', $data);
	}
	
	public function edit()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('currency');
		$this->load->library('phpexcel');
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('check/checkout_group');
		
		$this->load->model('extension/fee_model');
		$this->load->model('check/checkout_group_model');
		$this->load->model('catalog/product_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');

		$this->header->add_style(base_url(). 'assets/css/app/check/checkout_group_edit.css');	
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/jasny/jasny-bootstrap.min.css');						
		$this->header->add_style(base_url(). 'assets/js/plugins/selectize/css/selectize.bootstrap3.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');		
		$this->header->add_script(base_url(). 'assets/js/plugins/jasny/jasny-bootstrap.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/selectize/js/standalone/selectize.js');

		$this->header->set_title($this->lang->line('text_checkout_edit'));
		
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
		$this->form_validation->set_rules('checkout_product', $this->lang->line('text_checkout_product'), 'callback_validate_checkout_client');

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
				'checkout_fee_code'  => $this->input->post('checkout_fee_code'),
				'note'               => $this->input->post('note'),
				'checkout_products'  => $this->input->post('checkout_product'),
				'checkout_labels'    => $this->input->post('checkout_label'),
				'checkout_files'     => $this->input->post('checkout_file')
			);
			
			$this->checkout_model->edit_checkout($checkout_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkout_edit_success'));
			
			redirect(base_url() . 'check/checkout_group', 'refresh');
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
			$data['weight']          	= $this->input->post('weight');
			$data['length_class_id']    = $this->input->post('length_class_id');
			$data['weight_class_id']    = $this->input->post('weight_class_id');
			$data['shipping_provider']  = $this->input->post('shipping_provider');
			$data['shipping_service']   = $this->input->post('shipping_service');
			$data['checkout_fee_code']   = $this->input->post('checkout_fee_code');
			$data['note']            	= $this->input->post('note');
			$data['checkout_labels']    = $this->input->post('checkout_label');
			$data['checkout_files']     = $this->input->post('checkout_file');
			
			$checkout_products = $this->input->post('checkout_product');
			
			if($checkout_products)
			{	
				foreach($checkout_products as $checkout_product) 
				{
					$product_id = $checkout_product['product_id'];
					
					$product_data = $this->product_model->get_product($product_id);	
					
					$inventories = array();
					
					$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);	
				
					if($inventories_data)
					{
						foreach($inventories_data as $inventory_data)
						{
							if($inventory_data['batch'])
							{
								$location_name = sprintf($this->lang->line('text_location_batch'), $inventory_data['location_name'], $inventory_data['batch']);
							}
							else
							{
								$location_name = $inventory_data['location_name'];
							}
					
							$inventories[] = array(
								'inventory_id'  => $inventory_data['id'],
								'location_name' => $location_name,
								'quantity'      => $inventory_data['quantity']
							);
						}
					}
						
					$data['checkout_products'][] = array(
						'product_id'    => $product_data['id'],
						'name'          => $product_data['name'],
						'upc'           => $product_data['upc'],
						'sku'           => $product_data['sku'],
						'quantity'      => $checkout_product['quantity'],
						'inventory_id'  => (isset($checkout_product['inventory_id']))?$checkout_product['inventory_id']:null,
						'inventories'   => $inventories
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
			$data['checkout_fee_code']  = $checkout['checkout_fee_code'];
			$data['note']         		= $checkout['note'];
			
			//checkout products
			$data['checkout_products'] = array();
			
			$checkout_products = $this->checkout_model->get_checkout_products($checkout_id);	
			
			if($checkout_products)
			{	
				foreach($checkout_products as $checkout_product) 
				{
					$product_id = $checkout_product['product_id'];
					
					$product_data = $this->product_model->get_product($product_id);	
					
					$inventories = array();
					
					$inventories_data = $this->inventory_model->get_inventories_by_product($product_id);	
				
					if($inventories_data)
					{
						foreach($inventories_data as $inventory_data)
						{
							if($inventory_data['batch'])
							{
								$location_name = sprintf($this->lang->line('text_location_batch'), $inventory_data['location_name'], $inventory_data['batch']);
							}
							else
							{
								$location_name = $inventory_data['location_name'];
							}
							
							$inventories[] = array(
								'inventory_id'  => $inventory_data['id'],
								'location_name' => $location_name,
								'quantity'      => $inventory_data['quantity']
							);
						}
					}
						
					$data['checkout_products'][] = array(
						'product_id'    => $product_data['id'],
						'name'          => $product_data['name'],
						'upc'           => $product_data['upc'],
						'sku'           => $product_data['sku'],
						'quantity'      => $checkout_product['quantity'],
						'inventory_id'  => $checkout_product['inventory_id'],
						'inventories'   => $inventories
					);
				}
			}
			
			//checkout labels
			$data['checkout_labels'] = array();
			
			$checkout_labels = $this->checkout_model->get_checkout_labels($checkout_id);
			
			if($checkout_labels)
			{
				foreach($checkout_labels as $checkout_label)
				{					
					if(is_file(FCPATH . $checkout_label['path'])) 
					{
						$data['checkout_labels'][] = array(
							'tracking'  => $checkout_label['tracking'],
							'path'      => $checkout_label['path'],
							'link'      => base_url() . $checkout_label['path']
						);
					}
				}
			}
			
			//checkout file
			$data['checkout_files'] = array();
			
			$checkout_files = $this->checkout_model->get_checkout_files($checkout_id);
			
			if($checkout_files)
			{
				foreach($checkout_files as $checkout_file)
				{					
					if(is_file(FILEPATH . $checkout_file['path'])) 
					{
						$data['checkout_files'][] = array(
							'name'  => basename($checkout_file['path']),
							'path'  => $checkout_file['path'],
							'url'   => $this->config->item('media_url') . '/file/' . $checkout_file['path']
						);
					}
				}
			}

			//excel export begin
			$objPHPExcel = new PHPExcel();	
			$objPHPExcel->createSheet();
			$objPHPExcel->setActiveSheetIndex(0);
			
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);	
			
			$objPHPExcel->getActiveSheet()->mergeCells('A1:E1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:E1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('E1:E1')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->SetCellValue('A1', sprintf($this->lang->line('text_checkout_edit_title'), $checkout_id));
			
			$objPHPExcel->getActiveSheet()->mergeCells('A2:C2');
			$objPHPExcel->getActiveSheet()->mergeCells('D2:E2');
			$objPHPExcel->getActiveSheet()->getStyle('A2:E2')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:E2')->getFont()->setBold(true);
			
			$objPHPExcel->getActiveSheet()->SetCellValue('A2', sprintf($this->lang->line('text_excel_tracking'), $checkout['tracking']));
			
			if($checkout['status']) 
			{
				$objPHPExcel->getActiveSheet()->SetCellValue('D2', $this->lang->line('text_excel_pending'));
			} 
			else 
			{
				$objPHPExcel->getActiveSheet()->SetCellValue('D2', $this->lang->line('text_excel_completed'));
			}

			$objPHPExcel->getActiveSheet()->getStyle('A3:F3')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->SetCellValue('A3', $this->lang->line('column_name'));
			$objPHPExcel->getActiveSheet()->SetCellValue('B3', $this->lang->line('column_upc'));
			$objPHPExcel->getActiveSheet()->SetCellValue('C3', $this->lang->line('column_sku'));
			$objPHPExcel->getActiveSheet()->SetCellValue('D3', $this->lang->line('column_quantity'));
			$objPHPExcel->getActiveSheet()->SetCellValue('E3', $this->lang->line('column_location'));
			
			$i = 4;
			
			if($checkout_products)
			{	
				foreach($checkout_products as $checkout_product) 
				{
					$product_id = $checkout_product['product_id'];
					
					$product_data = $this->product_model->get_product($product_id);	
					
					$inventory = $this->inventory_model->get_inventory($checkout_product['inventory_id']);	
							
					$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $product_data['name']);
					$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $product_data['upc']);
					$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $product_data['sku']);
					$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $checkout_product['quantity']);
					
					if($inventory['batch'])
					{
						$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $inventory['location_name'].'['.$inventory['batch'].']');
					}
					else
					{
						$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $inventory['location_name']);
					}
				  
					$i++;
				}
			}
			
			PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);
			
			$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
			$objWriter->save(FCPATH  . 'assets/file/export/checkout.xlsx');
			//excel export end
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
		
		//checkout fees
		$data['checkout_fees'] = array();
		
		$checkout_fees_data = $this->fee_model->get_fees('checkout');
				
		foreach($checkout_fees_data as $checkout_fee_data) 
		{
			$data['checkout_fees'][] = array(
				'code'     => $checkout_fee_data['code'],
				'name'     => $checkout_fee_data['name']
			);
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
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkout_group_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('check/checkout_group_model');
		
		if($this->input->get('checkout_id'))
		{
			$checkout_id = $this->input->get('checkout_id');
			
			$reusult = $this->checkout_model->delete_checkout($checkout_id);

			$outdata = array(
				'success'   => ($reusult)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function validate_sale()
	{
		$validated = true;
		
		$messages = array();

		$this->lang->load('check/checkout_group');

		$this->load->model('check/checkout_model');
				
		if($_POST['sale_id'])
		{
			foreach($_POST['sale_id'] as $sale_id)
			{
				if(empty($sale_id))
				{
					if($validated)
						$validated = false;
					
					$messages[] = $this->lang->line('error_checkout_sale_empty');
				}
				else 
				{
					$result = $this->checkout_model->get_sale_checkout($sale_id);
					
					if($result) 
					{
						if($validated)
							$validated = false;
						
						$messages[] = sprintf($this->lang->line('error_checkout_sale_exist'), $sale_id);
					}
				}
			}
		}
		
		if(!$validated)
		{
			$message = implode('<br>', $messages);

			$this->form_validation->set_message('validate_sale', $message);
		}
		
		return $validated;
	}
}


