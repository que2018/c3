<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('inventory/inventory');
		
		$this->load->model('inventory/inventory_model');
	}
	
	function index()
	{
		$this->load->model('warehouse/warehouse_model');
		
		$data['success'] = $this->session->flashdata('success');
		                   	
		if($this->input->get('filter_warehouse_id'))
		{
			$filter_warehouse_id = $this->input->get('filter_warehouse_id');
		} 
		else 
		{
			$filter_warehouse_id = '';
		}
		
		if($this->input->get('filter_location'))
		{
			$filter_location = $this->input->get('filter_location');
		} 
		else 
		{
			$filter_location = '';
		}
		
		if($this->input->get('filter_sku'))
		{
			$filter_sku = $this->input->get('filter_sku');
		} 
		else 
		{
			$filter_sku = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'inventory.date_modified';
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
			'filter_warehouse_id'  => $filter_warehouse_id,
			'filter_location'      => $filter_location,
			'filter_sku'    	   => $filter_sku,
			'sort'                 => $sort,
			'order'                => $order,
			'start'                => ($page - 1) * $limit,
			'limit'                => $limit
		);
		
		$inventories = $this->inventory_model->get_inventories($filter_data);	
		$inventory_total = $this->inventory_model->get_inventory_total($filter_data);
		
		$data['inventories'] = array();
		
		if($inventories) 
		{
			$this->load->model('catalog/product_model');
			
			foreach($inventories as $inventory)
			{	
				$product_info = $this->product_model->get_product($inventory['product_id']);	
			
				$data['inventories'][] = array(
					'inventory_id'  => $inventory['id'],
					'product_id'    => $inventory['product_id'],
					'product'       => $product_info['name'],
					'upc'       	=> $product_info['upc'],
					'sku'       	=> $product_info['sku'],
					'location'      => $inventory['location_name'],
					'warehouse'     => $inventory['warehouse_name'],
					'quantity'      => $inventory['quantity'],
					'date_modified' => $inventory['date_modified']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_warehouse_id')) 
		{
			$url .= '&filter_warehouse_id=' . $this->input->get('filter_warehouse_id');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
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
	
		$this->pagination->total  = $inventory_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'inventory/inventory?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($inventory_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($inventory_total - $limit)) ? $inventory_total : ((($page - 1) * $limit) + $limit), $inventory_total, ceil($inventory_total / $limit));

		$url = '';
		
		if($this->input->get('filter_warehouse_id')) 
		{
			$url .= '&filter_warehouse_id=' . $this->input->get('filter_warehouse_id');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
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
		
		$data['sort_product']        = base_url() . 'inventory/inventory?sort=product.name' . $url;
		$data['sort_sku']        	 = base_url() . 'inventory/inventory?sort=product.sku' . $url;
		$data['sort_location']       = base_url() . 'inventory/inventory?sort=location.name' . $url;
		$data['sort_warehouse']  	 = base_url() . 'inventory/inventory?sort=warehouse.name' . $url;
		$data['sort_quantity']       = base_url() . 'inventory/inventory?sort=inventory.quantity' . $url;
		$data['sort_date_modified']  = base_url() . 'inventory/inventory?sort=inventory.date_modified' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'inventory/inventory' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_warehouse_id']    = $filter_warehouse_id;
		$data['filter_location']        = $filter_location;
		$data['filter_sku']         	= $filter_sku;
		
		//client
		$data['warehouses'] = array();
		
		$warehouses = $this->warehouse_model->get_warehouses();
		
		if($warehouses)
		{
			foreach($warehouses as $warehouse)
			{	
				$data['warehouses'][] = array(
					'warehouse_id' => $warehouse['id'],
					'name'         => $warehouse['name']
				);	
			}
		}
		
		//edit permission
		$data['modifiable'] = $this->auth->has_permission('modify', 'inventory');
		
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
	
		$this->form_validation->set_rules('product_id', $this->lang->line('text_product'), 'required');
		$this->form_validation->set_rules('location_id', $this->lang->line('text_location'), 'required');
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required|regex_match[/^[0-9]*[1-9][0-9]*$/]');
	
		$data = array(
			'product_id'     => $this->input->post('product_id'),
			'product_name'   => $this->input->post('product_name'),
			'warehouse_id'   => $this->input->post('warehouse_id'),
			'location_id'    => $this->input->post('location_id'),
			'quantity'       => $this->input->post('quantity')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->inventory_model->add_inventory($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_inventory_add_success'));
			
			redirect(base_url() . 'inventory/inventory', 'refresh');
		}
		
		//product
		$product_id = $this->input->post('product_id');
			
		$product = $this->product_model->get_product($product_id);
		
		$data['product_name'] = $product['name'];
			
		//warehouse	
		$data['warehouse_id'] = $this->input->post('warehouse_id');
	
		//location
		$location_id = $this->input->post('location_id');

		$location = $this->location_model->get_location($location_id);
		
		$data['location_name'] = $location['name'];
		
		//warehouses
		$data['warehouses'] = array();
		
		$this->load->model('warehouse/warehouse_model');
		
		$warehouses = $this->warehouse_model->get_all_warehouses();	
			
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
	
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
		
		$inventory_id = $this->input->get('inventory_id');
	
		$this->form_validation->set_rules('product_id', $this->lang->line('text_product'), 'required');
		$this->form_validation->set_rules('location_id', $this->lang->line('text_location'), 'required');
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required|regex_match[/^[0-9]*[1-9][0-9]*$/]');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'product_id'     => $this->input->post('product_id'),
				'location_id'    => $this->input->post('location_id'),
				'quantity'       => $this->input->post('quantity')
			);
			
			$this->inventory_model->edit_inventory($inventory_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_inventory_edit_success'));
			
			redirect(base_url() . 'inventory/inventory', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['product_id']   = $this->input->post('product_id');
			$data['warehouse_id'] = $this->input->post('warehouse_id');
			$data['location_id']  = $this->input->post('location_id');
			$data['quantity']     = $this->input->post('quantity');
			
			$product_id = $this->input->post('product_id');
			
			$product = $this->product_model->get_product($product_id);
			
			$data['product_name'] = $product['name'];
			
			$location_id = $this->input->post('location_id');
			
			$warehouse = $this->location_model->get_location_warehouse($location_id);
			
			$data['warehouse_id'] = $warehouse['id'];
			
			$location = $this->location_model->get_location($location_id);
			
			$data['location_name'] = $location['name'];
		}
		else
		{
			$inventory = $this->inventory_model->get_inventory($inventory_id);	
		
			$data['product_id']   = $inventory['product_id'];
			$data['location_id']  = $inventory['location_id'];
			$data['quantity']     = $inventory['quantity'];
		
			$product = $this->product_model->get_product($inventory['product_id']);
			
			$data['product_name'] = $product['name'];
			
			$location_id = $inventory['location_id'];
			
			$warehouse = $this->location_model->get_location_warehouse($location_id);
			
			$data['warehouse_id'] = $warehouse['id'];
			
			$location = $this->location_model->get_location($location_id);
			
			$data['location_name'] = $location['name'];
		}
	
		//warehouse
		$data['warehouses'] = array();
				
		$warehouses = $this->warehouse_model->get_all_warehouses();	
			
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
	
		$data['error']  = validation_errors();
	
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('inventory_id'))
		{
			$inventory_id = $this->input->get('inventory_id');
			
			$this->inventory_model->delete_inventory($inventory_id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}
}


