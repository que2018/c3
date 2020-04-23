<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Transfer extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('inventory/transfer');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/transfer_list.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/moment.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js');
	
		$this->header->set_title($this->lang->line('text_transfer'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/transfer_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('inventory/transfer_list_table', $data);
	}
	
	protected function get_list()
	{	
		$this->lang->load('inventory/transfer');
		
		$this->load->model('inventory/transfer_model');
	
		if($this->input->get('filter_from_warehouse'))
		{
			$filter_from_warehouse = $this->input->get('filter_from_warehouse');
		} 
		else 
		{
			$filter_from_warehouse = '';
		}
		
		if($this->input->get('filter_from_location'))
		{
			$filter_from_location = $this->input->get('filter_from_location');
		} 
		else 
		{
			$filter_from_location = '';
		}
		
		if($this->input->get('filter_to_warehouse'))
		{
			$filter_to_warehouse = $this->input->get('filter_to_warehouse');
		} 
		else 
		{
			$filter_to_warehouse = '';
		}
		
		if($this->input->get('filter_to_location'))
		{
			$filter_to_location = $this->input->get('filter_to_location');
		} 
		else 
		{
			$filter_to_location = '';
		}
		
		if($this->input->get('filter_date_added'))
		{
			$filter_date_added = $this->input->get('filter_date_added');
		} 
		else 
		{
			$filter_date_added = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 't.date_added';
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
			'filter_from_warehouse'  => $filter_from_warehouse,
			'filter_from_location'   => $filter_from_location,
			'filter_to_warehouse'    => $filter_to_warehouse,
			'filter_to_location'     => $filter_to_location,
			'filter_date_added'      => $filter_date_added,
			'sort'                   => $sort,
			'order'                  => $order,
			'start'                  => ($page - 1) * $limit,
			'limit'                  => $limit
		);
		
		$transfers = $this->transfer_model->get_transfers($filter_data);
		
		$transfer_total = $this->transfer_model->get_transfer_total($filter_data);
		
		$data['transfers'] = array();
		
		if($transfers) 
		{
			foreach($transfers as $transfer)
			{	
				$data['transfers'][] = array(
					'transfer_id'     => $transfer['transfer_id'],
					'from_warehouse'  => $transfer['from_warehouse'],
					'from_location'   => $transfer['from_location'],
					'to_warehouse'    => $transfer['to_warehouse'],
					'to_location'     => $transfer['to_location'],
					'date_added'      => $transfer['date_added']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_from_warehouse')) 
		{
			$url .= '&filter_from_warehouse=' . $this->input->get('filter_from_warehouse');
		}
		
		if($this->input->get('filter_from_location')) 
		{
			$url .= '&filter_from_location=' . $this->input->get('filter_from_location');
		}
		
		if($this->input->get('filter_to_warehouse')) 
		{
			$url .= '&filter_to_warehouse=' . $this->input->get('filter_to_warehouse');
		}
		
		if($this->input->get('filter_to_location')) 
		{
			$url .= '&filter_to_location=' . $this->input->get('filter_to_location');
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
	
		$this->pagination->total  = $transfer_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'transfer/transfer?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($transfer_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($transfer_total - $limit)) ? $transfer_total : ((($page - 1) * $limit) + $limit), $transfer_total, ceil($transfer_total / $limit));

		$url = '';
		
		if($this->input->get('filter_from_warehouse')) 
		{
			$url .= '&filter_from_warehouse=' . $this->input->get('filter_from_warehouse');
		}
		
		if($this->input->get('filter_from_location')) 
		{
			$url .= '&filter_from_location=' . $this->input->get('filter_from_location');
		}
		
		if($this->input->get('filter_to_warehouse')) 
		{
			$url .= '&filter_to_warehouse=' . $this->input->get('filter_to_warehouse');
		}
		
		if($this->input->get('filter_to_location')) 
		{
			$url .= '&filter_to_location=' . $this->input->get('filter_to_location');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_from_warehouse']  = base_url() . 'inventory/transfer?sort=from_warehouse' . $url;
		$data['sort_from_location']   = base_url() . 'inventory/transfer?sort=from_location' . $url;
		$data['sort_to_warehouse']    = base_url() . 'inventory/transfer?sort=to_warehouse' . $url;
		$data['sort_to_location']     = base_url() . 'inventory/transfer?sort=to_location' . $url;
		$data['sort_date_added']      = base_url() . 'inventory/transfer?sort=t.date_added' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'inventory/transfer' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_from_warehouse']  = $filter_from_warehouse;
		$data['filter_from_location']   = $filter_from_location;
		$data['filter_to_warehouse']    = $filter_to_warehouse;
		$data['filter_to_location']     = $filter_to_location;
		$data['filter_date_added']      = $filter_date_added;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('inventory/transfer');
		
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/transfer_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('warehouse/warehouse_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/transfer_add.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');

		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_transfer_add'));

		$this->form_validation->set_rules('from_location_id', $this->lang->line('text_from_location'), 'required');
		$this->form_validation->set_rules('to_location_id', $this->lang->line('text_to_location'), 'required');
		$this->form_validation->set_rules('transfer_product[]', $this->lang->line('text_transfer_product'), 'required');

		$data = array(
			'from_warehouse_id' => $this->input->post('from_warehouse_id'),
			'to_warehouse_id'   => $this->input->post('to_warehouse_id'),
			'from_location_id'  => $this->input->post('from_location_id'),
			'to_location_id'    => $this->input->post('to_location_id'),
			'tracking'          => $this->input->post('tracking'),
			'note'              => $this->input->post('note')
		);
		
		$transfer_products = $this->input->post('transfer_product');
			
		$data['transfer_products'] = array();
			
		if($transfer_products)
		{	
			foreach($transfer_products as $transfer_product) 
			{
				$product_data = $this->product_model->get_product($transfer_product['product_id']);	
				
				$data['transfer_products'][] = array(
					'product_id'  => $transfer_product['product_id'],
					'name'        => $product_data['name'],
					'upc'         => $product_data['upc'],
					'sku'         => $product_data['sku'],
					'quantity'    => $transfer_product['quantity']
				);
			}
		}
		
		if($this->form_validation->run() == true)
		{
			$this->transfer_model->add_transfer($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_transfer_add_success'));
			
			redirect(base_url() . 'inventory/transfer', 'refresh');
		}
		
		//warehouse
		$data['warehouses'] = array();
		
		$warehouses = $this->warehouse_model->get_warehouses();	
			
		if($warehouses) 
		{
			foreach($warehouses as $warehouse)
			{
				$data['warehouses'][] = array(
					'id'     => $warehouse['id'],
					'name'   => $warehouse['name']
				);
			}
		}
		
		//from locations
		$data['from_locations'] = array();
		
		if($data['from_warehouse_id'])
		{
			$locations_data = $this->location_model->get_locations_by_warehouse($data['from_warehouse_id']);	
			
			if($locations_data)
			{
				foreach($locations_data as $location_data)
				{
					$inventories = $this->inventory_model->get_inventory_by_location($location_data['id']);
					
					if($inventories)
					{
						$data['from_locations'][] = array(
							'id'   => $location_data['id'],
							'name' => $location_data['name']
						);
					}
				}
			}
		}
		
		//to locations
		$data['to_locations'] = array();
		
		if($data['to_warehouse_id'])
		{
			$locations_data = $this->location_model->get_locations_by_warehouse($data['to_warehouse_id']);	
			
			if($locations_data)
			{
				foreach($locations_data as $location_data)
				{
					$data['to_locations'][] = array(
						'id'   => $location_data['id'],
						'name' => $location_data['name']
					);
				}
			}
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/transfer_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('inventory/transfer');
		
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/transfer_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('warehouse/warehouse_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/transfer_add.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');

		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_transfer_edit'));
	
		$transfer_id = $this->input->get('transfer_id');
	
		$this->form_validation->set_rules('from_location_id', $this->lang->line('text_from_location'), 'required');
		$this->form_validation->set_rules('to_location_id', $this->lang->line('text_to_location'), 'required');
		$this->form_validation->set_rules('transfer_product[]', $this->lang->line('text_transfer_product'), 'required');
	
		$data = array(
			'from_warehouse_id' => $this->input->post('from_warehouse_id'),
			'to_warehouse_id'   => $this->input->post('to_warehouse_id'),
			'from_location_id'  => $this->input->post('from_location_id'),
			'to_location_id'    => $this->input->post('to_location_id'),
			'tracking'          => $this->input->post('tracking'),
			'note'              => $this->input->post('note'),
			'transfer_products' => $this->input->post('transfer_product')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->transfer_model->edit_transfer($transfer_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_transfer_edit_success'));
			
			redirect(base_url() . 'inventory/transfer', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['from_warehouse_id']  = $this->input->post('from_warehouse_id');
			$data['to_warehouse_id']    = $this->input->post('to_warehouse_id');
			$data['from_location_id']   = $this->input->post('from_location_id');
			$data['to_location_id']     = $this->input->post('to_location_id');
			$data['tracking']           = $this->input->post('tracking');
			$data['note']               = $this->input->post('note');

			$transfer_products = $this->input->post('transfer_product');
			
			$data['transfer_products'] = array();
				
			if($transfer_products)
			{	
				foreach($transfer_products as $transfer_product) 
				{
					$product_data = $this->product_model->get_product($transfer_product['product_id']);	
					
					$data['transfer_products'][] = array(
						'product_id' => $transfer_product['product_id'],
						'name'       => $product_data['name'],
						'upc'        => $product_data['upc'],
						'sku'        => $product_data['sku'],
						'quantity'   => $transfer_product['quantity']
					);
				}
			}
		}
		else
		{
			$transfer = $this->transfer_model->get_transfer($transfer_id);	
		
			$data['from_warehouse_id']  = $transfer['from_warehouse_id'];
			$data['to_warehouse_id']    = $transfer['to_warehouse_id'];
			$data['from_location_id']   = $transfer['from_location_id'];
			$data['to_location_id']     = $transfer['to_location_id'];
			$data['tracking']           = $transfer['tracking'];
			$data['note']               = $transfer['note'];

			$data['transfer_products'] = array();
			
			$transfer_products = $this->transfer_model->get_transfer_products($transfer_id);	
			
			if($transfer_products)
			{
				foreach($transfer_products as $transfer_product) {
					$data['transfer_products'][] = array(
						'product_id' => $transfer_product['product_id'],
						'name'       => $transfer_product['name'],
						'upc'        => $transfer_product['upc'],
						'sku'        => $transfer_product['sku'],
						'quantity'   => $transfer_product['quantity']
					);
				}
			}
		}
		
		//warehouse
		$data['warehouses'] = array();
				
		$warehouses = $this->warehouse_model->get_warehouses();	
			
		if($warehouses) 
		{
			foreach($warehouses as $warehouse)
			{
				$data['warehouses'][] = array(
					'id'     => $warehouse['id'],
					'name'   => $warehouse['name']
				);
			}
		}
		
		//from locations
		$data['from_locations'] = array();
		
		if($data['from_warehouse_id'])
		{
			$locations_data = $this->location_model->get_locations_by_warehouse($data['from_warehouse_id']);	
			
			if($locations_data)
			{
				foreach($locations_data as $location_data)
				{
					$inventories = $this->inventory_model->get_inventory_by_location($location_data['id']);
					
					if($inventories)
					{
						$data['from_locations'][] = array(
							'id'   => $location_data['id'],
							'name' => $location_data['name']
						);
					}
				}
			}
		}
		
		//to locations
		$data['to_locations'] = array();
		
		if($data['to_warehouse_id'])
		{
			$locations_data = $this->location_model->get_locations_by_warehouse($data['to_warehouse_id']);	
			
			if($locations_data)
			{
				foreach($locations_data as $location_data)
				{
					$data['to_locations'][] = array(
						'id'   => $location_data['id'],
						'name' => $location_data['name']
					);
				}
			}
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/transfer_edit', $data);
	}
	
	public function delete()
	{
		if($this->input->get('transfer_id'))
		{
			$transfer_id = $this->input->get('transfer_id');
			
			$result = $this->transfer_model->delete_transfer($transfer_id);

			$outdata = array(
				'success' => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function get_locations()
	{
		if($this->input->get('warehouse_id'))
		{
			$warehouse_id = $this->input->get('warehouse_id');
			$filter_inventory = $this->input->get('filter_inventory');
			
			$this->load->model('warehouse/location_model');
			$this->load->model('inventory/inventory_model');

			$locations_data = $this->location_model->get_locations_by_warehouse($warehouse_id);
		
			if($locations_data) 
			{				
				$locations = array();
				
				if($filter_inventory)
				{
					foreach($locations_data as $location_data)
					{
						$inventories = $this->inventory_model->get_inventory_by_location($location_data['id']);
						
						if($inventories)
						{
							$locations[] = array(
								'id'    => $location_data['id'],
								'name'  => $location_data['name']
							);
						}
					}
				}
				else
				{
					foreach($locations_data as $location_data)
					{
						$locations[] = array(
							'id'    => $location_data['id'],
							'name'  => $location_data['name']
						);
						
					}
				}
				
				$outdata = array(
					'success'   => true,
					'locations' => $locations
				);
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'msg'      => $this->lang->line('error_warehouse_no_locations')
				);
			}
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function product_autocomplete()
	{
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');
		
		$outdata = array();
		
		if($this->input->post('code') && $this->input->post('location_id'))
		{
			$code = $this->input->post('code');
			
			$location_id = $this->input->post('location_id');
			
			$code = trim($code);		
			
			$key = 'upc';
			
			$filter_data = array(
				'filter_upc'  => $code,
				'start'       => 0,
				'limit'       => $this->config->item('config_autocomplete_limit')
			);
			
			$results = $this->inventory_model->get_inventories($filter_data);
			
			if(!$results) 
			{
				$key = 'sku';
				
				$filter_data = array(
					'filter_sku'  => $code,
					'start'       => 0,
					'limit'       => $this->config->item('config_autocomplete_limit')
				);
				
				$results = $this->inventory_model->get_inventories($filter_data);
			}
			
			if(!$results) 
			{
				$key = 'asin';
				
				$filter_data = array(
					'filter_asin'  => $code,
					'start'        => 0,
				    'limit'        => $this->config->item('config_autocomplete_limit')
				);
				
				$results = $this->inventory_model->get_inventories($filter_data);
			}
			
			if(!$results) 
			{
				$key = 'name';
				
				$filter_data = array(
					'filter_product'  => $code,
					'start'           => 0,
					'limit'           => $this->config->item('config_autocomplete_limit')
				);
				
				$results = $this->inventory_model->get_inventories($filter_data);	
			}

			if($results) 
			{
				$products = array();
				
				foreach($results as $result)
				{
					$product_id = $result['product_id'];
				
					$product_info = $this->product_model->get_product($product_id);
					
					$products[] = array(
						'label'       => $product_info[$key],
						'product_id'  => $product_info['id'],
						'name'        => $product_info['name'],
						'upc'         => $product_info['upc'],
						'sku'         => $product_info['sku'],
						'asin'        => $product_info['asin']
					);
				}
				
				$outdata = array(
					'success'  => true,
					'products' => $products
				);
			}
			else 
			{
				$location = $this->location_model->get_location($location_id);
				
				$outdata = array(
					'success'  => false,
					'message'  => sprintf($this->lang->line('error_location_product_not_found'), $code, $location['name'])
				);
			}
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
}


