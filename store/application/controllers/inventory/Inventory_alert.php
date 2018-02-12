<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Inventory_alert extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('inventory/inventory_alert');
		
		$this->load->model('inventory/inventory_alert_model');
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
			$sort = 'inventory.quantity';
		}

		if($this->input->get('order')) 
		{
			$order = $this->input->get('order');
		} 
		else 
		{
			$order = 'ASC';
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
		
		$alert_inventories = $this->inventory_alert_model->get_alert_inventories($filter_data);	
		$alert_inventory_total = $this->inventory_alert_model->get_alert_inventory_total($filter_data);
		
		$data['alert_inventories'] = array();
		
		if($alert_inventories) 
		{
			foreach($alert_inventories as $alert_inventory)
			{	
				$data['alert_inventories'][] = array(
					'inventory_id'  => $alert_inventory['id'],
					'product_id'    => $alert_inventory['product_id'],
					'product'       => $alert_inventory['product_name'],
					'location'      => $alert_inventory['location_name'],
					'warehouse'     => $alert_inventory['warehouse_name'],
					'quantity'      => $alert_inventory['quantity'],
					'date_modified' => $alert_inventory['date_modified']
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
	
		$this->pagination->total  = $alert_inventory_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'inventory/inventory_alert?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($alert_inventory_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($alert_inventory_total - $limit)) ? $alert_inventory_total : ((($page - 1) * $limit) + $limit), $alert_inventory_total, ceil($alert_inventory_total / $limit));

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
		
		$data['sort_product']        = base_url() . 'inventory/inventory_alert?sort=product.name' . $url;
		$data['sort_location']       = base_url() . 'inventory/inventory_alert?sort=locaiton.name' . $url;
		$data['sort_warehouse']  	 = base_url() . 'inventory/inventory_alert?sort=warehouse.name' . $url;
		$data['sort_quantity']       = base_url() . 'inventory/inventory_alert?sort=inventory.quantity' . $url;
		$data['sort_date_modified']  = base_url() . 'inventory/inventory_alert?sort=inventory.date_modified' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'inventory/inventory_alert' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_product']         = $filter_product;
		$data['filter_location']        = $filter_location;
		$data['filter_warehouse']       = $filter_warehouse;
		$data['filter_quantity']        = $filter_quantity;
		$data['filter_date_modified']   = $filter_date_modified;
		
		$this->load->view('common/header');
		$this->load->view('inventory/inventory_alert_list', $data);
		$this->load->view('common/footer');
	}
}


