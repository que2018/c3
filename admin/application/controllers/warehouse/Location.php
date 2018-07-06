<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Location extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('warehouse/location');
		
		$this->header->add_style(base_url(). 'assets/css/app/warehouse/location_list.css');
	
		$this->header->set_title($this->lang->line('text_location'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('warehouse/location_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('warehouse/location_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('warehouse/location');
		
		$this->load->model('warehouse/location_model');
		            	
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_code'))
		{
			$filter_code = $this->input->get('filter_code');
		} 
		else 
		{
			$filter_code = '';
		}
		
		if($this->input->get('filter_warehouse'))
		{
			$filter_warehouse = $this->input->get('filter_warehouse');
		} 
		else 
		{
			$filter_warehouse = '';
		}
	
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'location.name';
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
			'filter_name'       => $filter_name,
			'filter_code'       => $filter_code,
			'filter_warehouse'  => $filter_warehouse,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$locations = $this->location_model->get_locations($filter_data);	
		$location_total = $this->location_model->get_location_total($filter_data);
		
		$data['locations'] = array();
		
		if($locations) 
		{
			foreach($locations as $location)
			{	
				$data['locations'][] = array(
					'location_id'  => $location['id'],
					'name'         => $location['name'],
					'code'         => $location['code'],
					'warehouse'    => $location['warehouse']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_code')) 
		{
			$url .= '&filter_code=' . $this->input->get('filter_code');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
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
	
		$this->pagination->total  = $location_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'warehouse/location?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($location_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($location_total - $limit)) ? $location_total : ((($page - 1) * $limit) + $limit), $location_total, ceil($location_total / $limit));

		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_code')) 
		{
			$url .= '&filter_code=' . $this->input->get('filter_code');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$data['sort_name']        = base_url() . 'warehouse/location?sort=location.name' . $url;
		$data['sort_code']        = base_url() . 'warehouse/location?sort=location.code' . $url;
		$data['sort_warehouse']   = base_url() . 'warehouse/location?sort=warehouse.name' . $url;

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
		
		$data['filter_url'] = base_url() . 'warehouse/location' . $url;
	
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
			$url .= '&page=' . $this->input->get('page');
		}
	
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
	
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_code')) 
		{
			$url .= '&filter_code=' . $this->input->get('filter_code');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
			
		$data['reload_url'] = base_url() . 'warehouse/location/reload' . $url;
	
		$data['page']  = $page;
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']       = $filter_name;
		$data['filter_code']       = $filter_code;
		$data['filter_warehouse']  = $filter_warehouse;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('warehouse/location');
		
		$this->load->model('warehouse/location_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/warehouse/location_add.css');
				
		$this->header->set_title($this->lang->line('text_location_add'));
		
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required|callback_add_name_unique');
		$this->form_validation->set_rules('code', $this->lang->line('text_code'), 'required|callback_add_code_unique');
		$this->form_validation->set_rules('warehouse_id', $this->lang->line('text_warehouse'), 'required');

		$data = array(
			'name'             => $this->input->post('name'),
			'code'             => $this->input->post('code'),
			'warehouse_id'     => $this->input->post('warehouse_id')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->location_model->add_location($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_location_add_success'));
			
			redirect(base_url() . 'warehouse/location', 'refresh');
		}
		
		//warehouse
		$this->load->model('warehouse/warehouse_model');
		
		$warehouses = $this->warehouse_model->get_warehouses();
				
		$data['warehouses'] = array();
		
		if($warehouses) 
		{
			foreach($warehouses as $warehouse) 
			{
				$data['warehouses'][] = array(
					'id'    => $warehouse['id'],
					'name'  => $warehouse['name']
				);
			}
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('warehouse/location_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('warehouse/location');
		
		$this->load->model('warehouse/location_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/warehouse/location_edit.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/barcode/jquery-barcode.js');
				
		$this->header->set_title($this->lang->line('text_location_edit'));
		
		$location_id = $this->input->get('location_id');
		
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required|callback_edit_name_unique');
		$this->form_validation->set_rules('code', $this->lang->line('text_code'), 'required|callback_edit_code_unique');
		$this->form_validation->set_rules('warehouse_id', $this->lang->line('text_warehouse'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'             => $this->input->post('name'),
				'code'             => $this->input->post('code'),
				'warehouse_id'     => $this->input->post('warehouse_id'),
				'location_clients' => $this->input->post('location_client')
			);
			
			$this->location_model->edit_location($location_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_location_edit_success'));
			
			redirect(base_url() . 'warehouse/location', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['name']      	      = $this->input->post('name');
			$data['code']      	      = $this->input->post('code');
			$data['warehouse_id']     = $this->input->post('warehouse_id');
		}
		else
		{
			$location = $this->location_model->get_location($location_id);
			
			$data['name']      	   = $location['name'];
			$data['code']      	   = $location['code'];
			$data['warehouse_id']  = $location['warehouse_id'];
		}
		
		//warehouse
		$this->load->model('warehouse/warehouse_model');
	
		$warehouses = $this->warehouse_model->get_warehouses();
				
		$data['warehouses'] = array();
		
		if($warehouses) 
		{
			foreach($warehouses as $warehouse) 
			{
				$data['warehouses'][] = array(
					'id'    => $warehouse['id'],
					'name'  => $warehouse['name']
				);
			}
		}
		
		$data['location_id'] = $this->input->get('location_id');	
		
		$data['error'] = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('warehouse/location_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('warehouse/location_model');

		$this->load->model('inventory/inventory_model');
		
		if($this->input->get('location_id'))
		{
			$location_id = $this->input->get('location_id');
			
			$result = $this->inventory_model->get_inventory_by_location($location_id);
			
			if($result)
			{
				$outdata = array(
					'success'  => false,
					'message'  => $this->lang->line('error_location_is_in_use')  
				);
			}
			else
			{
				$result = $this->location_model->delete_location($location_id);

				$outdata = array(
					'success' => ($result)?true:false
				);
			}
				
			echo json_encode($outdata);
		}
	}
	
	function add_name_unique($name)
	{
		$location = $this->location_model->get_location_by_name($name);
		
		if($location) 
		{			
			$this->form_validation->set_message('add_name_unique', sprintf($this->lang->line('error_location_name_used'), $name));
			
			return false;
		}
		else
		{
			return true;
		}
	}
	
	function add_code_unique($code)
	{
		$location = $this->location_model->get_location_by_code($code);
		
		if($location) 
		{			
			$this->form_validation->set_message('add_code_unique', sprintf($this->lang->line('error_location_code_used'), $code));
			
			return false;
		}
		else
		{
			return true;
		}
	}
	
	function edit_name_unique($name)
	{
		$location = $this->location_model->get_location_by_name($name);
		
		if(!$location)
		{
			return true;
		}
		else
		{
			if($location['id'] != $this->input->get('location_id'))
			{			
				$this->form_validation->set_message('edit_name_unique', sprintf($this->lang->line('error_location_name_used'), $name));
				
				return false;
			}
			else
			{
				return true;
			}
		}
	}

	function edit_code_unique($code)
	{
		$location = $this->location_model->get_location_by_code($code);
		
		if(!$location)
		{
			return true;
		}
		else
		{
			if($location['id'] != $this->input->get('location_id'))
			{			
				$this->form_validation->set_message('edit_code_unique', sprintf($this->lang->line('error_location_code_used'), $code));
				
				return false;
			}
			else
			{
				return true;
			}
		}
	}
}


