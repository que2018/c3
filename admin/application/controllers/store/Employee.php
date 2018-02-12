<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Employee extends CI_Controller {

	public function index()
	{		
		$data = $this->get_list();
			
		$this->load->view('common/header');
		$this->load->view('store/employee_list', $data);
		$this->load->view('common/footer');
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('store/employee_list_table', $data);
	}

	function get_list()
	{
		$this->lang->load('store/employee');
		
		$this->load->model('store/store_model');
		$this->load->model('store/employee_model');
	
		$data['success'] = $this->session->flashdata('success');
				
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_store_id'))
		{
			$filter_store_id = $this->input->get('filter_store_id');
		} 
		else 
		{
			$filter_store_id = '';
		}
		
		if($this->input->get('filter_email'))
		{
			$filter_email = $this->input->get('filter_email');
		} 
		else 
		{
			$filter_email = '';
		}
		
		if($this->input->get('filter_phone'))
		{
			$filter_phone = $this->input->get('filter_phone');
		} 
		else 
		{
			$filter_phone = '';
		}
		
		if($this->input->get('sort'))
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'name';
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
			'filter_store_id' => $filter_store_id,
			'filter_email'    => $filter_email,
			'filter_phone'    => $filter_phone,
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$employees = $this->employee_model->get_employees($filter_data);
		$employee_total  = $this->employee_model->get_employee_total($filter_data);
		
		$data['employees'] = array();
		
		if($employees)
		{
			foreach($employees as $employee)
			{	
				$employee_id = $employee['employee_id'];
			
				$data['employees'][] = array(
					'employee_id'  => $employee['employee_id'],
					'name'         => $employee['name'],
					'store'        => $employee['store'],
					'email'        => $employee['email'],
					'phone'        => $employee['phone']
				);	
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_store_id')) 
		{
			$url .= '&filter_store_id=' . $this->input->get('filter_store_id');
		}
		
		if($this->input->get('filter_email')) 
		{
			$url .= '&filter_email=' . $this->input->get('filter_email');
		}
		
		if($this->input->get('filter_phone')) 
		{
			$url .= '&filter_phone=' . $this->input->get('filter_phone');
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
	
		$this->pagination->total  = $employee_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'store/employee?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($employee_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($employee_total - $limit)) ? $employee_total : ((($page - 1) * $limit) + $limit), $employee_total, ceil($employee_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_store_id')) 
		{
			$url .= '&filter_store_id=' . $this->input->get('filter_store_id');
		}
		
		if($this->input->get('filter_email')) 
		{
			$url .= '&filter_email=' . $this->input->get('filter_email');
		}
		
		if($this->input->get('filter_phone')) 
		{
			$url .= '&filter_phone=' . $this->input->get('filter_phone');
		}   
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_name']   = base_url() . 'store/employee?sort=name' . $url;
		$data['sort_store']  = base_url() . 'store/employee?sort=employee.store_id' . $url;
		$data['sort_email']  = base_url() . 'store/employee?sort=employee.email' . $url;
		$data['sort_phone']  = base_url() . 'store/employee?sort=employee.phone' . $url;

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
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['reload'] = base_url() . 'store/employee/reload' . $url;
		
		$data['filter_url'] = base_url() . 'store/employee' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']     = $filter_name;
		$data['filter_store_id'] = $filter_store_id;
		$data['filter_email']    = $filter_email;
		$data['filter_phone']    = $filter_phone;
		
		$data['stores'] = array();
		
		$stores = $this->store_model->get_stores();
		
		if($stores)
		{
			foreach($stores as $store)
			{	
				$data['stores'][] = array(
					'store_id'  => $store['id'],
					'name'      => $store['name']
				);	
			}
		}
		
		return $data;
	}
	
	public function add() 
	{
		$this->lang->load('store/employee');
		
		$this->load->library('form_validation');
		
		$this->load->model('store/store_model');
		$this->load->model('store/employee_model');
		$this->load->model('warehouse/warehouse_model');
	
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required|callback_validate_add_email');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');		
		$this->form_validation->set_rules('firstname', $this->lang->line('text_firstname'), 'required');
		$this->form_validation->set_rules('lastname', $this->lang->line('text_lastname'), 'required');
		$this->form_validation->set_rules('store_id', $this->lang->line('text_store'), 'required');
		$this->form_validation->set_rules('warehouse_id', $this->lang->line('text_warehouse'), 'required');

		$data = array(
			'email'      	=> $this->input->post('email'),
			'password'   	=> $this->input->post('password'),
			'firstname'  	=> $this->input->post('firstname'),
			'lastname'   	=> $this->input->post('lastname'),
			'phone'      	=> $this->input->post('phone'),
			'status'      	=> $this->input->post('status'),
			'store_id'      => $this->input->post('store_id'),
			'warehouse_id'  => $this->input->post('warehouse_id')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->employee_model->add_employee($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_employee_add_success'));
			
			redirect(base_url() . 'store/employee', 'refresh');
		}
		
		$data['stores'] = array();
		
		$stores = $this->store_model->get_stores();
		
		if($stores)
		{
			foreach($stores as $store)
			{	
				$data['stores'][] = array(
					'store_id'  => $store['id'],
					'name'      => $store['name']
				);	
			}
		}
	
		$data['warehouse'] = array();
		
		$warehouse = $this->warehouse_model->get_warehouses();
		
		if($warehouse)
		{
			foreach($warehouse as $warehouse)
			{	
				$data['warehouses'][] = array(
					'warehouse_id' => $warehouse['id'],
					'name'         => $warehouse['name']
				);	
			}
		}
	
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('store/employee_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{		
		$this->lang->load('store/employee');
		
		$this->load->library('form_validation');
		
		$this->load->model('store/store_model');
		$this->load->model('store/employee_model');
		$this->load->model('warehouse/warehouse_model');
				
		$employee_id = $this->input->get('employee_id');
	
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required|callback_validate_edit_email');
		$this->form_validation->set_rules('firstname', $this->lang->line('text_firstname'), 'required');
		$this->form_validation->set_rules('lastname', $this->lang->line('text_lastname'), 'required');
		$this->form_validation->set_rules('store_id', $this->lang->line('text_store'), 'required');
		$this->form_validation->set_rules('warehouse_id', $this->lang->line('text_warehouse'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'email'      	=> $this->input->post('email'),
				'password'   	=> $this->input->post('password'),
				'firstname'  	=> $this->input->post('firstname'),
				'lastname'   	=> $this->input->post('lastname'),
				'phone'      	=> $this->input->post('phone'),
				'status'      	=> $this->input->post('status'),
				'store_id'      => $this->input->post('store_id'),
				'warehouse_id'  => $this->input->post('warehouse_id')
			);
						
			$this->employee_model->edit_employee($employee_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_employee_edit_success'));
			
			redirect(base_url() . 'store/employee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['email']         = $this->input->post('email');
			$data['password']      = $this->input->post('password');
			$data['firstname']     = $this->input->post('firstname');	
			$data['lastname']      = $this->input->post('lastname');						
			$data['phone']         = $this->input->post('phone');	
			$data['status']        = $this->input->post('status');	
			$data['store_id']      = $this->input->post('store_id');	
			$data['warehouse_id']  = $this->input->post('warehouse_id');	
		}
		else
		{
			$employee = $this->employee_model->get_employee($employee_id);
		
			$data['email']         = $employee['email'];
			$data['password']      = $employee['password'];
			$data['firstname']     = $employee['firstname'];
			$data['lastname']      = $employee['lastname'];				
			$data['phone']         = $employee['phone'];
			$data['status']        = $employee['status'];
			$data['store_id']      = $employee['store_id'];
			$data['warehouse_id']  = $employee['warehouse_id'];
		}
		
		$data['employee_id'] = $employee_id;	
		
		$data['stores'] = array();
		
		$stores = $this->store_model->get_stores();
		
		if($stores)
		{
			foreach($stores as $store)
			{	
				$data['stores'][] = array(
					'store_id'  => $store['id'],
					'name'      => $store['name']
				);	
			}
		}
	
		$data['warehouse'] = array();
		
		$warehouse = $this->warehouse_model->get_warehouses();
		
		if($warehouse)
		{
			foreach($warehouse as $warehouse)
			{	
				$data['warehouses'][] = array(
					'warehouse_id' => $warehouse['id'],
					'name'         => $warehouse['name']
				);	
			}
		}
		
		$data['error'] = validation_errors();
	
		$this->load->view('common/header');
		$this->load->view('store/employee_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('employee_id'))
		{
			$this->load->model('store/employee_model');

			$employee_id = $this->input->get('employee_id');
			
			$this->employee_model->delete_employee($employee_id);

			$outdata = array(
				'success'   => true
			);

			echo json_encode($outdata);
		}
	}
		
	function validate_add_email($email)
	{
		$result = $this->employee_model->get_employee_by_email($email);
		
		if($result)
		{
			$this->form_validation->set_message('validate_add_email', sprintf($this->lang->line('error_email_is_used'), $email));
		
			return false;
		}
		else 
		{
			return true;
		}
	}
	
	function validate_edit_email($email)
	{		
		$result = $this->employee_model->get_employee_by_email($email);
		
		if($result)
		{
			$employee_id = $this->input->get('employee_id');
		
			if($employee_id == $result['employee_id'])
			{
				return true;
			}
			else
			{
				$this->form_validation->set_message('validate_edit_email', sprintf($this->lang->line('error_email_is_used'), $email));
			
				return false;
			}
		}
		else 
		{
			return true;
		}
	}
}


