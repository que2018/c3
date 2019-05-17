<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Customer extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('sale/customer');
	
		$this->header->add_style(base_url(). 'assets/css/app/sale/customer_list.css');
	
		$this->header->set_title($this->lang->line('text_customer'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');	
			
		$this->load->view('sale/customer_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('sale/customer_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('sale/customer');
		
		$this->load->model('sale/customer_model');
	
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_client'))
		{
			$filter_client = $this->input->get('filter_client');
		} 
		else 
		{
			$filter_client = '';
		}
		
		if($this->input->get('filter_company'))
		{
			$filter_company = $this->input->get('filter_company');
		} 
		else 
		{
			$filter_company = '';
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
			$sort = 'customer.name';
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
			'filter_client'   => $filter_client,
			'filter_company'  => $filter_company,
			'filter_email'    => $filter_email,
			'filter_phone'    => $filter_phone,
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$customers = $this->customer_model->get_customers($filter_data);
		
		$customer_total  = $this->customer_model->get_customer_total($filter_data);
		
		$data['customers'] = array();
		
		if($customers)
		{
			foreach($customers as $customer)
			{					
				$data['customers'][] = array(
					'customer_id' => $customer['id'],
					'name'        => $customer['name'],
					'client'      => $customer['client'],
					'company'     => $customer['company'],
					'email'       => $customer['email'],
					'phone'       => $customer['phone']
				);	
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
		}
		
		if($this->input->get('filter_company')) 
		{
			$url .= '&filter_company=' . $this->input->get('filter_company');
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
	
		$this->pagination->total  = $customer_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'sale/customer?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($customer_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($customer_total - $limit)) ? $customer_total : ((($page - 1) * $limit) + $limit), $customer_total, ceil($customer_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
		}
		
		if($this->input->get('filter_company')) 
		{
			$url .= '&filter_company=' . $this->input->get('filter_company');
		}
		
		if($this->input->get('filter_email')) 
		{
			$url .= '&filter_email=' . $this->input->get('filter_email');
		}
		
		if($this->input->get('filter_phone')) 
		{
			$url .= '&filter_phone=' . $this->input->get('filter_phone');
		}   
			
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if ($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}
		
		$data['sort_name']     = base_url() . 'sale/customer?sort=customer.name' . $url;
		$data['sort_client']   = base_url() . 'sale/customer?sort=client' . $url;
		$data['sort_company']  = base_url() . 'sale/customer?sort=customer.company' . $url;
		$data['sort_email']    = base_url() . 'sale/customer?sort=customer.email' . $url;
		$data['sort_phone']    = base_url() . 'sale/customer?sort=customer.phone' . $url;

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
		
		$data['filter_url'] = base_url() . 'sale/customer' . $url;
		
		$data['reload_url'] = base_url() . 'sale/customer/reload' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']     = $filter_name;
		$data['filter_client']   = $filter_client;
		$data['filter_company']  = $filter_company;
		$data['filter_email']    = $filter_email;
		$data['filter_phone']    = $filter_phone;
		
		return $data;
	}
	
	public function add() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('sale/customer');
		
		$this->load->model('sale/customer_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/sale/customer_add.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');

		$this->header->set_title($this->lang->line('text_add_customer'));
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required');
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required');

		$data = array(
			'client_id'   => $this->input->post('client_id'),
			'client_name' => $this->input->post('client_name'),
			'name'   	  => $this->input->post('name'),
			'street'      => $this->input->post('street'),
			'street2'     => $this->input->post('street2'),
			'city'        => $this->input->post('city'),
			'state'       => $this->input->post('state'),
			'country'     => $this->input->post('country'),
			'zipcode'     => $this->input->post('zipcode'),
			'company'     => $this->input->post('company'),
			'email'       => $this->input->post('email'),
			'phone'       => $this->input->post('phone')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->customer_model->add_customer($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_customer_add_success'));
			
			redirect(base_url() . 'sale/customer', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('sale/customer_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('sale/customer');
		
		$this->load->model('sale/customer_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/sale/customer_edit.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');

		$this->header->set_title($this->lang->line('text_edit_customer'));
				
		$customer_id = $this->input->get('customer_id');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('zipcode', $this->lang->line('text_zipcode'), 'required');
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'client_id'   => $this->input->post('client_id'),
				'client_name' => $this->input->post('client_name'),
				'name'        => $this->input->post('name'),
				'street'      => $this->input->post('street'),
				'street2'     => $this->input->post('street2'),
				'city'        => $this->input->post('city'),
				'state'       => $this->input->post('state'),
				'country'     => $this->input->post('country'),
				'zipcode'     => $this->input->post('zipcode'),
				'company'     => $this->input->post('company'),
				'email'       => $this->input->post('email'),
				'phone'       => $this->input->post('phone')
			);
			
			$this->customer_model->edit_customer($customer_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_customer_edit_success'));
			
			redirect(base_url() . 'sale/customer', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{		
			$data['client_id']   = $this->input->post('client_id');
			$data['client_name'] = $this->input->post('client_name');
			$data['name']        = $this->input->post('name');
			$data['street']      = $this->input->post('street');
			$data['street2']     = $this->input->post('street2');
			$data['city']        = $this->input->post('city');
			$data['state']       = $this->input->post('state');
			$data['country']     = $this->input->post('country');
			$data['zipcode']     = $this->input->post('zipcode');
			$data['company']     = $this->input->post('company');
			$data['email']       = $this->input->post('email');
			$data['phone']       = $this->input->post('phone');			
		}
		else
		{
			$customer = $this->customer_model->get_customer($customer_id);
				
			if(isset($customer['client_id'])) 
			{
				$data['client_name'] = $customer['client'];
				$data['client_id'] = $customer['client_id'];
			}
			else 
			{
				$data['client_name'] = '';
				$data['client_id'] = '';
			}	
				
			$data['name']   	 = $customer['name'];
			$data['street']      = $customer['street'];
			$data['street2']     = $customer['street2'];
			$data['city']        = $customer['city'];
			$data['state']       = $customer['state'];
			$data['country']     = $customer['country'];
			$data['zipcode']     = $customer['zipcode'];
			$data['company']     = $customer['company'];
			$data['email']       = $customer['email'];
			$data['phone']       = $customer['phone'];			
		}
		
		$data['customer_id'] = $customer_id;	
			
		$data['error'] = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('sale/customer_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('sale/customer_model');
		
		if($this->input->get('customer_id'))
		{
			$customer_id = $this->input->get('customer_id');
			
			$result = $this->customer_model->delete_customer($customer_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function autocomplete()
	{
		$this->lang->load('sale/customer');
		
		$this->load->model('sale/customer_model');
		
		$outdata = array();
		
		if($this->input->post('customer_name'))
		{
			$customer_name = $this->input->post('customer_name');
						
			$customers_data = $this->customer_model->find_customer_by_name($customer_name);

			if($customers_data) 
			{
				$customers = array();
				
				foreach($customers_data as $customer_data)
				{
					$customers[] = array(
						'name'       => $customer_data['name'],
						'street'     => $customer_data['street'],
						'street2'    => $customer_data['street2'],
						'city'       => $customer_data['city'],
						'state'      => $customer_data['state'],
						'country'    => $customer_data['country'],
						'zipcode'    => $customer_data['zipcode'],
						'company'    => $customer_data['company'],
						'email'      => $customer_data['email'],
						'phone'      => $customer_data['phone']
					);
				}
				
				$outdata = array(
					'success'   => true,
					'customers' => $customers
				);
			}
			else 
			{
				$outdata = array(
					'success'  => false,
					'msg'      => $this->lang->line('error_customer_not_found')
				);
			}
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
}


