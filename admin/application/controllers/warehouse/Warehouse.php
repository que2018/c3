<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Warehouse extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('warehouse/warehouse');
		
		$this->load->model('warehouse/warehouse_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/warehouse/warehouse_list.css');
	
		$this->header->set_title($this->lang->line('text_warehouse_list'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('warehouse/warehouse_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('warehouse/warehouse_list_table', $data);
	}
	
	protected function get_list()
	{                   	
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_street'))
		{
			$filter_street = $this->input->get('filter_street');
		} 
		else 
		{
			$filter_street = '';
		}
		
		if($this->input->get('filter_city'))
		{
			$filter_city = $this->input->get('filter_city');
		} 
		else 
		{
			$filter_city = '';
		}
		
		if($this->input->get('filter_state'))
		{
			$filter_state = $this->input->get('filter_state');
		} 
		else 
		{
			$filter_state = '';
		}
		
		if($this->input->get('filter_country'))
		{
			$filter_country = $this->input->get('filter_country');
		} 
		else 
		{
			$filter_country = '';
		}
		
		if($this->input->get('filter_zipcode'))
		{
			$filter_zipcode = $this->input->get('filter_zipcode');
		} 
		else 
		{
			$filter_zipcode = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'warehouse.date_added';
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
			'filter_name'       => $filter_name,
			'filter_street'     => $filter_street,
			'filter_city'       => $filter_city,
			'filter_state'      => $filter_state,
			'filter_country'    => $filter_country,
			'filter_zipcode'    => $filter_zipcode,			
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$warehouses = $this->warehouse_model->get_warehouses($filter_data);	
		
		$warehouse_total = $this->warehouse_model->get_warehouse_total($filter_data);
		
		$data['warehouses'] = array();
		
		if($warehouses) 
		{
			foreach($warehouses as $warehouse)
			{	
				$data['warehouses'][] = array(
					'warehouse_id'  => $warehouse['id'],
					'name'     		=> $warehouse['name'],
					'street'   		=> $warehouse['street'],
					'city'     		=> $warehouse['city'],
					'state'    		=> $warehouse['state'],
					'country'  		=> $warehouse['country'],
					'zipcode'  		=> $warehouse['zipcode']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_street')) 
		{
			$url .= '&filter_street=' . $this->input->get('filter_street');
		}
		
		if($this->input->get('filter_city')) 
		{
			$url .= '&filter_city=' . $this->input->get('filter_city');
		}
		
		if($this->input->get('filter_state')) 
		{
			$url .= '&filter_state=' . $this->input->get('filter_state');
		}
		
		if($this->input->get('filter_country')) 
		{
			$url .= '&filter_country=' . $this->input->get('filter_country');
		}
		
		if($this->input->get('filter_zipcode')) 
		{
			$url .= '&filter_zipcode=' . $this->input->get('filter_zipcode');
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
	
		$this->pagination->total  = $warehouse_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'warehouse/warehouse?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($warehouse_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($warehouse_total - $limit)) ? $warehouse_total : ((($page - 1) * $limit) + $limit), $warehouse_total, ceil($warehouse_total / $limit));

		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_street')) 
		{
			$url .= '&filter_street=' . $this->input->get('filter_street');
		}
	
		if($this->input->get('filter_city')) 
		{
			$url .= '&filter_city=' . $this->input->get('filter_city');
		}
		
		if($this->input->get('filter_state')) 
		{
			$url .= '&filter_state=' . $this->input->get('filter_state');
		}
		
		if($this->input->get('filter_country')) 
		{
			$url .= '&filter_country=' . $this->input->get('filter_country');
		}
		
		if($this->input->get('filter_zipcode')) 
		{
			$url .= '&filter_zipcode=' . $this->input->get('filter_zipcode');
		}
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['sort_name']      = base_url() . 'warehouse/warehouse?sort=name' . $url;
		$data['sort_street']    = base_url() . 'warehouse/warehouse?sort=street' . $url;
		$data['sort_city']      = base_url() . 'warehouse/warehouse?sort=city' . $url;
		$data['sort_state']     = base_url() . 'warehouse/warehouse?sort=state' . $url;
		$data['sort_country']   = base_url() . 'warehouse/warehouse?sort=country' . $url;		
		$data['sort_zipcode']   = base_url() . 'warehouse/warehouse?sort=zipcode' . $url;

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
			$url .= '&sort='.$this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'warehouse/warehouse' . $url;
	
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
			$url .= '&page='.$this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
	
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_street')) 
		{
			$url .= '&filter_street=' . $this->input->get('filter_street');
		}
	
		if($this->input->get('filter_city')) 
		{
			$url .= '&filter_city=' . $this->input->get('filter_city');
		}
		
		if($this->input->get('filter_state')) 
		{
			$url .= '&filter_state=' . $this->input->get('filter_state');
		}
		
		if($this->input->get('filter_country')) 
		{
			$url .= '&filter_country=' . $this->input->get('filter_country');
		}
		
		if($this->input->get('filter_zipcode')) 
		{
			$url .= '&filter_zipcode=' . $this->input->get('filter_zipcode');
		}
	
		$data['reload_url'] = base_url() . 'warehouse/warehouse/reload' . $url;

		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']      = $filter_name;
		$data['filter_street']    = $filter_street;
		$data['filter_city']      = $filter_city;
		$data['filter_state']     = $filter_state;
		$data['filter_country']   = $filter_country;
		$data['filter_zipcode']   = $filter_zipcode;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('warehouse/warehouse');
		
		$this->load->model('warehouse/warehouse_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/warehouse/warehouse_add.css');
				
		$this->header->set_title($this->lang->line('text_warehouse_add'));
		
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required|regex_match[/^\d{5}(?:[-\s]\d{4})?$/]');

		$data = array(
			'name'         => $this->input->post('name'),
			'street'       => $this->input->post('street'),
			'city'         => $this->input->post('city'),
			'state'        => $this->input->post('state'),
			'country'      => $this->input->post('country'),
			'zipcode'      => $this->input->post('zipcode')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->warehouse_model->add_warehouse($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_warehouse_add_success'));
			
			redirect(base_url() . 'warehouse/warehouse', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('warehouse/warehouse_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('warehouse/warehouse');
		
		$this->load->model('warehouse/warehouse_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/warehouse/warehouse_edit.css');
				
		$this->header->set_title($this->lang->line('text_warehouse_edit'));
		
		$warehouse_id = $this->input->get('warehouse_id');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required|regex_match[/^\d{5}(?:[-\s]\d{4})?$/]');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'         => $this->input->post('name'),
				'street'       => $this->input->post('street'),
				'city'         => $this->input->post('city'),
				'state'        => $this->input->post('state'),
				'country'      => $this->input->post('country'),
				'zipcode'      => $this->input->post('zipcode')
			);
			
			$this->warehouse_model->edit_warehouse($warehouse_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_warehouse_edit_success'));
			
			redirect(base_url() . 'warehouse/warehouse', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['name']     = $this->input->post('name');
			$data['street']   = $this->input->post('street');
			$data['city']     = $this->input->post('city');
			$data['state']    = $this->input->post('state');
			$data['country']  = $this->input->post('country');
			$data['zipcode']  = $this->input->post('zipcode');
		}
		else
		{
			$warehouse = $this->warehouse_model->get_warehouse($warehouse_id);
			
			$data['name']     = $warehouse['name'];
			$data['street']   = $warehouse['street'];
			$data['city']     = $warehouse['city'];
			$data['state']    = $warehouse['state'];
			$data['country']  = $warehouse['country'];
			$data['zipcode']  = $warehouse['zipcode'];
		}
		
		$data['warehouse_id'] = $warehouse_id;
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
	
		$this->load->view('warehouse/warehouse_edit', $data);
	}
	
	public function delete()
	{
		$this->lang->load('warehouse/warehouse');
		
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
		
		if($this->input->get('warehouse_id'))
		{
			$validated = true;
			
			$messages = array();
			
			$warehouse_id = $this->input->get('warehouse_id');
			
			$locations = $this->location_model->get_locations_by_warehouse($warehouse_id);
			
			if($locations)
			{	
				$validated = false;
		
				$messages[] = $this->lang->line('error_warehouse_location_in_use');
			}
			
			if($validated)
			{
				$result = $this->warehouse_model->delete_warehouse($warehouse_id);
		
				$outdata = array(
					'success'   => ($result)?true:false
				);
			}
			else 
			{
				$outdata = array(
					'success'   => false,
					'messages'  => $messages
				);
			}
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function get_warehouses()
	{
		$warehouses = array();
		
		$wareshouses_data = $this->warehouse_model->get_warehouses();
			
		foreach($wareshouses_data as $wareshouse_data)
		{
			$warehouses[] = array(
				'id'   => $wareshouse_data['id'],
				'name' => $wareshouse_data['name']
			);
		}

		$outdata = array(
			'warehouses'  => $warehouses
		);
			
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
}


