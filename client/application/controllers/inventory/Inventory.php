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
		$data['success'] = $this->session->flashdata('success');
		                   	
		if($this->input->get('filter_product'))
		{
			$filter_product = $this->input->get('filter_product');
		} 
		else 
		{
			$filter_product = '';
		}
		
		if($this->input->get('filter_location'))
		{
			$filter_location = $this->input->get('filter_location');
		} 
		else 
		{
			$filter_location = '';
		}
		
		if($this->input->get('filter_warehouse'))
		{
			$filter_warehouse = $this->input->get('filter_warehouse');
		} 
		else 
		{
			$filter_warehouse = '';
		}
		
		if($this->input->get('filter_quantity'))
		{
			$filter_quantity = $this->input->get('filter_quantity');
		} 
		else 
		{
			$filter_quantity = '';
		}
		
		if($this->input->get('filter_date_modified'))
		{
			$filter_date_modified = $this->input->get('filter_date_modified');
		} 
		else 
		{
			$filter_date_modified = '';
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
			'filter_product'    	 => $filter_product,
			'filter_location'   	 => $filter_location,
			'filter_warehouse'   	 => $filter_warehouse,
			'filter_quantity'        => $filter_quantity,
			'filter_date_modified'   => $filter_date_modified,
			'sort'                   => $sort,
			'order'                  => $order,
			'start'                  => ($page - 1) * $limit,
			'limit'                  => $limit
		);
		
		$inventories = $this->inventory_model->get_inventories($filter_data);	
		$inventory_total = $this->inventory_model->get_inventory_total($filter_data);
		
		$data['inventories'] = array();
		
		if($inventories) 
		{
			foreach($inventories as $inventory)
			{	
				$data['inventories'][] = array(
					'id'            => $inventory['id'],
					'product_id'    => $inventory['product_id'],
					'product'       => $inventory['product_name'],
					'location'      => $inventory['location_name'],
					'warehouse'     => $inventory['warehouse_name'],
					'quantity'      => $inventory['quantity'],
					'date_modified' => $inventory['date_modified']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_product')) 
		{
			$url .= '&filter_product=' . $this->input->get('filter_product');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_date_modified')) 
		{
			$url .= '&filter_date_modified=' . $this->input->get('filter_date_modified');
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
		
		if($this->input->get('filter_product')) 
		{
			$url .= '&filter_product=' . $this->input->get('filter_product');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_date_modified')) 
		{
			$url .= '&filter_date_modified=' . $this->input->get('filter_date_modified');
		}
				
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$data['limit_10']  = base_url() . 'inventory/inventory?limit=10' . $url;
		$data['limit_15']  = base_url() . 'inventory/inventory?limit=15' . $url;
		$data['limit_50']  = base_url() . 'inventory/inventory?limit=50' . $url;
		$data['limit_100'] = base_url() . 'inventory/inventory?limit=100' . $url;
	
		$url = '';
		
		if($this->input->get('filter_product')) 
		{
			$url .= '&filter_product=' . $this->input->get('filter_product');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_date_modified')) 
		{
			$url .= '&filter_date_modified=' . $this->input->get('filter_date_modified');
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
		$data['sort_location']       = base_url() . 'inventory/inventory?sort=locaiton.name' . $url;
		$data['sort_warehouse']  	 = base_url() . 'inventory/inventory?sort=warehouse.name' . $url;
		$data['sort_quantity']       = base_url() . 'inventory/inventory?sort=inventory.quantity' . $url;
		$data['sort_date_modified']  = base_url() . 'inventory/inventory?sort=inventory.date_modified' . $url;
		
		$url = '';
		
		if ($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=10';
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'inventory/inventory' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_product']         = $filter_product;
		$data['filter_location']        = $filter_location;
		$data['filter_warehouse']       = $filter_warehouse;
		$data['filter_quantity']        = $filter_quantity;
		$data['filter_date_modified']   = $filter_date_modified;
		
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_list', $data);
		$this->load->view('common/footer');
	}
	
	public function view() 
	{		
		$id = $this->input->get('id');
	
		$inventory = $this->inventory_model->get_inventory($id);
		
		$data['product_name']   = $inventory['product_name'];
		$data['warehouse_name'] = $inventory['warehouse_name'];
		$data['location_name']  = $inventory['location_name'];
		$data['quantity']       = $inventory['quantity'];
		
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_view', $data);
		$this->load->view('common/footer');
	}

	function get_locations()
	{
		if($this->input->get('warehouse_id'))
		{
			$warehouse_id = $this->input->get('warehouse_id');
			
			$this->load->model('warehouse/location_model');

			$locations_data = $this->location_model->get_locations_by_warehouse($warehouse_id);
		
			if($locations_data) 
			{				
				$locations = array();
				
				foreach($locations_data as $location_data)
				{
					$locations[] = array(
						'id'    => $location_data['id'],
						'name'  => $location_data['name']
					);
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
					
			echo json_encode($outdata);
		}
	}
}


