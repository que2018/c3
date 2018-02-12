<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Warehouse extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('warehouse/warehouse');
		
		$this->load->model('warehouse/warehouse_model');
	}
	
	function index()
	{
		$data['success'] = $this->session->flashdata('success');
		                   	
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
		$this->pagination->url    = base_url().'warehouse/warehouse?page={page}'.$url;
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
		
		if($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_name']      = base_url().'warehouse/warehouse?sort=name'.$url;
		$data['sort_street']    = base_url().'warehouse/warehouse?sort=street'.$url;
		$data['sort_city']      = base_url().'warehouse/warehouse?sort=city'.$url;
		$data['sort_state']     = base_url().'warehouse/warehouse?sort=state'.$url;
		$data['sort_country']   = base_url().'warehouse/warehouse?sort=country'.$url;		
		$data['sort_zipcode']   = base_url().'warehouse/warehouse?sort=zipcode'.$url;

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
		
		$data['filter_url'] = base_url().'warehouse/warehouse'.$url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']      = $filter_name;
		$data['filter_street']    = $filter_street;
		$data['filter_city']      = $filter_city;
		$data['filter_state']     = $filter_state;
		$data['filter_country']   = $filter_country;
		$data['filter_zipcode']   = $filter_zipcode;
		
		$this->load->view('common/header');
		$this->load->view('warehouse/warehouse_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->load->library('form_validation');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required');

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
		
		$this->load->view('common/header');
		$this->load->view('warehouse/warehouse_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->load->library('form_validation');
		
		$id = $this->input->get('id');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required');

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
			
			$this->warehouse_model->edit_warehouse($id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line("text_warehouse_edit_success"));
			
			redirect(base_url() . 'warehouse/warehouse', 'refresh');
		}
		else
		{
			$warehouse = $this->warehouse_model->get_warehouse($id);
			
			$data['id']              = $warehouse['id'];
			$data['name']            = $warehouse['name'];
			$data['street']          = $warehouse['street'];
			$data['city']            = $warehouse['city'];
			$data['state']           = $warehouse['state'];
			$data['country']         = $warehouse['country'];
			$data['zipcode']         = $warehouse['zipcode'];

			$data['error']   = validation_errors();
		
			$this->load->view('common/header');
			$this->load->view('warehouse/warehouse_edit', $data);
			$this->load->view('common/footer');
		}
	}
	
	public function delete()
	{
		$this->load->model('store/employee_model');
		$this->load->model('warehouse/location_model');
		
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
			
			$employees = $this->employee_model->get_employees_by_warehouse($warehouse_id);
			
			if($employees)
			{		
				$validated = false;
		
				$messages[] = $this->lang->line('error_warehouse_employee_in_use');
			}
			
			if($validated)
			{
				$this->warehouse_model->delete_warehouse($warehouse_id);
		
				$outdata = array(
					'success'   => true
				);
			}
			else 
			{
				$outdata = array(
					'success'   => false,
					'messages'  => $messages
				);
			}
			
			echo json_encode($outdata);
		}
	}
	
	public function get_all_warehouses()
	{
		$warehouses = array();
		
		$wareshouses_data = $this->warehouse_model->get_all_warehouses();
			
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
			
		echo json_encode($outdata);
	}
}


