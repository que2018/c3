<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Damage extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('inventory/damage');
		
		$this->load->model('inventory/damage_model');
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
			$sort = 'damage.date_modified';
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
		
		$damages = $this->damage_model->get_damages($filter_data);	
		$damage_total = $this->damage_model->get_damage_total($filter_data);
		
		$data['damages'] = array();
		
		if($damages) 
		{
			$this->load->model('catalog/product_model');
			
			foreach($damages as $damage)
			{	
				$product_info = $this->product_model->get_product($damage['product_id']);	
			
				$data['damages'][] = array(
					'damage_id'  	=> $damage['damage_id'],
					'product_id'    => $damage['product_id'],
					'product'       => $product_info['name'],
					'upc'       	=> $product_info['upc'],
					'sku'       	=> $product_info['sku'],
					'location'      => $damage['location_name'],
					'warehouse'     => $damage['warehouse_name'],
					'quantity'      => $damage['quantity'],
					'date_modified' => $damage['date_modified']
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
	
		$this->pagination->total  = $damage_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'inventory/damage?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($damage_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($damage_total - $limit)) ? $damage_total : ((($page - 1) * $limit) + $limit), $damage_total, ceil($damage_total / $limit));

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
		
		$data['sort_product']        = base_url() . 'inventory/damage?sort=product.name' . $url;
		$data['sort_location']       = base_url() . 'inventory/damage?sort=location.name' . $url;
		$data['sort_warehouse']  	 = base_url() . 'inventory/damage?sort=warehouse.name' . $url;
		$data['sort_quantity']       = base_url() . 'inventory/damage?sort=damage.quantity' . $url;
		$data['sort_date_modified']  = base_url() . 'inventory/damage?sort=damage.date_modified' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'inventory/damage' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_product']         = $filter_product;
		$data['filter_location']        = $filter_location;
		$data['filter_warehouse']       = $filter_warehouse;
		$data['filter_quantity']        = $filter_quantity;
		$data['filter_date_modified']   = $filter_date_modified;
		
		//edit permission
		$data['modifiable'] = $this->auth->has_permission('modify', 'inventory');
		
		$this->load->view('common/header');
		$this->load->view('inventory/damage_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/damage_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
	
		$this->form_validation->set_rules('product_id', $this->lang->line('text_product'), 'required');
		$this->form_validation->set_rules('location_id', $this->lang->line('text_location'), 'required');
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required');
	
		$data = array(
			'product_id'     => $this->input->post('product_id'),
			'product_name'   => $this->input->post('product_name'),
			'warehouse_id'   => $this->input->post('warehouse_id'),
			'location_id'    => $this->input->post('location_id'),
			'quantity'       => $this->input->post('quantity')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->damage_model->add_damage($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_damage_add_success'));
			
			redirect(base_url() . 'inventory/damage', 'refresh');
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
	
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('inventory/damage_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/damage_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
		
		$damage_id = $this->input->get('damage_id');
	
		$this->form_validation->set_rules('product_id', $this->lang->line('text_product'), 'required');
		$this->form_validation->set_rules('location_id', $this->lang->line('text_location'), 'required');
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'product_id'     => $this->input->post('product_id'),
				'location_id'    => $this->input->post('location_id'),
				'quantity'       => $this->input->post('quantity')
			);
			
			$this->damage_model->edit_damage($damage_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_damage_edit_success'));
			
			redirect(base_url() . 'inventory/damage', 'refresh');
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
			$damage = $this->damage_model->get_damage($damage_id);	
		
			$data['product_id']   = $damage['product_id'];
			$data['location_id']  = $damage['location_id'];
			$data['quantity']     = $damage['quantity'];
		
			$product = $this->product_model->get_product($damage['product_id']);
			
			$data['product_name'] = $product['name'];
			
			$location_id = $damage['location_id'];
			
			$warehouse = $this->location_model->get_location_warehouse($location_id);
			
			$data['warehouse_id'] = $warehouse['id'];
			
			$location = $this->location_model->get_location($location_id);
			
			$data['location_name'] = $location['name'];
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
	
		$data['error']  = validation_errors();
	
		$this->load->view('common/header');
		$this->load->view('inventory/damage_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('damage_id'))
		{
			$damage_id = $this->input->get('damage_id');
			
			$this->damage_model->delete_damage($damage_id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}
}


