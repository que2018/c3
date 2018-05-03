<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Client extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('client/client');
		
		$this->load->model('client/client_model');
	}
	
	public function index()
	{
		$this->load->library('currency');
		
		$this->lang->load('client/client');
		
		$this->load->model('client/client_model');
		$this->load->model('finance/balance_model');
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('setting/length_class_model');

		$data['success'] = $this->session->flashdata('success');
				
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
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
			'filter_company'  => $filter_company,
			'filter_email'    => $filter_email,
			'filter_phone'    => $filter_phone,
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$clients       = $this->client_model->get_clients($filter_data);
		$client_total  = $this->client_model->get_client_total($filter_data);
		
		$data['clients'] = array();
		
		if($clients)
		{
			foreach($clients as $client)
			{	
				$client_id = $client['id'];
			
				$balance = $this->balance_model->get_balance_by_client($client_id);
			
				$products = $this->product_model->get_products_by_client($client_id);
				
				$volume_total = 0;
				
				$config_length_class = $this->length_class_model->get_length_class($this->config->item('config_length_class_id'));
				
				if($products) 
				{
					foreach($products as $product)
					{
						$product_id = $product['id'];
						
						$length = $this->length_class_model->to_config($product['length_class_id'], $product['length']);
						$width = $this->length_class_model->to_config($product['length_class_id'], $product['width']);
						$height = $this->length_class_model->to_config($product['length_class_id'], $product['height']);

						$product_volmne = $length * $width * $height;
						
						$inventories = $this->inventory_model->get_inventories_by_product($product_id);
						
						if($inventories)
						{
							foreach($inventories as $inventory)
							{
								$volume_total += ($product_volmne * $inventory['quantity']);
							}
						}
					}
				}
			
				$data['clients'][] = array(
					'client_id'    => $client['id'],
					'name'         => $client['name'],
					'company'      => $client['company'],
					'email'        => $client['email'],
					'phone'        => $client['phone'],
					'balance'      => $this->currency->format($balance['amount']),
					'volume_total' => sprintf($this->lang->line('text_volume_total'), $volume_total, $config_length_class['unit'])
				);	
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
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
	
		$this->pagination->total  = $client_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'client/client?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($client_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($client_total - $limit)) ? $client_total : ((($page - 1) * $limit) + $limit), $client_total, ceil($client_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
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
		
		$data['sort_name']     = base_url().'client/client?sort=name' . $url;
		$data['sort_company']  = base_url().'client/client?sort=company' . $url;
		$data['sort_email']    = base_url().'client/client?sort=email' . $url;
		$data['sort_phone']    = base_url().'client/client?sort=phone' . $url;

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
		
		$data['filter_url'] = base_url() . 'client/client' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']       = $filter_name;
		$data['filter_company']    = $filter_company;
		$data['filter_email']      = $filter_email;
		$data['filter_phone']      = $filter_phone;
		
		$this->load->view('common/header');
		$this->load->view('client/client_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->lang->load('client/client');
		
		$this->load->library('datetimer');
		$this->load->library('form_validation');
		
		$this->load->model('client/client_model');

		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required|regex_match[/^\S+@\S+\.\S+$/]|callback_validate_add_email');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');		
		$this->form_validation->set_rules('firstname', $this->lang->line('text_firstname'), 'required');
		$this->form_validation->set_rules('lastname', $this->lang->line('text_lastname'), 'required');
		$this->form_validation->set_rules('location', $this->lang->line('text_location'), 'callback_validate_client_location');

		$data = array(
			'email'      => $this->input->post('email'),
			'password'   => $this->input->post('password'),
			'firstname'  => $this->input->post('firstname'),
			'lastname'   => $this->input->post('lastname'),
			'company'    => $this->input->post('company'),
			'phone'      => $this->input->post('phone'),
			'locations'  => $this->input->post('location')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->client_model->add_client($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_client_add_success'));
			
			redirect(base_url() . 'client/client', 'refresh');
		}
		
		$data['current_date'] = $this->datetimer->current_datetime();
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('client/client_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{		
		$this->lang->load('client/client');
		
		$this->load->library('datetimer');
		$this->load->library('form_validation');
		
		$this->load->model('client/client_model');
	
		$client_id = $this->input->get('client_id');
	
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required|regex_match[/^\S+@\S+\.\S+$/]|callback_validate_edit_email');
		$this->form_validation->set_rules('firstname', $this->lang->line('text_firstname'), 'required');
		$this->form_validation->set_rules('lastname', $this->lang->line('text_lastname'), 'required');
		$this->form_validation->set_rules('location', $this->lang->line('text_location'), 'callback_validate_client_location');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'email'      => $this->input->post('email'),
				'password'   => $this->input->post('password'),
				'firstname'  => $this->input->post('firstname'),
				'lastname'   => $this->input->post('lastname'),
				'company'    => $this->input->post('company'),
				'phone'      => $this->input->post('phone'),
				'locations'  => $this->input->post('location')
			);
						
			$this->client_model->edit_client($client_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_client_edit_success'));
			
			redirect(base_url() . 'client/client', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['email']      = $this->input->post('email');
			$data['password']   = $this->input->post('password');
			$data['firstname']  = $this->input->post('firstname');	
			$data['lastname']   = $this->input->post('lastname');						
			$data['company']    = $this->input->post('company');			
			$data['phone']      = $this->input->post('phone');	
			$data['locations']  = $this->input->post('location');							
		}
		else
		{
			$client = $this->client_model->get_client($client_id);
			
			$locations_data = $this->client_model->get_client_locations($client_id);
			
			$locations = array();
			
			if($locations_data)
			{
				foreach($locations_data as $location_data)
				{
					$locations[] = array(
						'location_id' => $location_data['location_id'],
						'name'        => $location_data['name'],
						'date_added'  => $location_data['date_added']
					);
				}
			}
				
			$data['email']      = $client['email'];
			$data['password']   = $client['password'];
			$data['firstname']  = $client['firstname'];
			$data['lastname']   = $client['lastname'];				
			$data['company']    = $client['company'];
			$data['phone']      = $client['phone'];
			$data['locations']  = $locations;				
		}
		
		$data['client_id'] = $client_id;	
		
		$data['current_date'] = $this->datetimer->current_datetime();
		
		$data['error'] = validation_errors();
	
		$this->load->view('common/header');
		$this->load->view('client/client_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('client_id'))
		{
			$this->load->model('sale/sale_model');
			$this->load->model('catalog/product_model');
			$this->load->model('finance/recharge_model');
			$this->load->model('finance/transaction_model');

			$client_id = $this->input->get('client_id');
			
			$sales = $this->sale_model->get_sales_by_client($client_id);
		
			$products = $this->product_model->get_products_by_client($client_id);
			
			$recharges = $this->recharge_model->get_recharges_by_client($client_id);
			
			$transactions = $this->transaction_model->get_transactions_by_client($client_id);
						
			if($products || $sales || $recharges || $transactions)
			{
				$messages = [];
				
				if($sales) 
					$messages[] = $this->lang->line('error_can_not_delete_order_exist');
				
				if($products) 
					$messages[] = $this->lang->line('error_can_not_delete_product_exist');

				if($recharges) 
					$messages[] = $this->lang->line('error_can_not_delete_recharge_exist');
				
				if($transactions) 
					$messages[] = $this->lang->line('error_can_not_delete_transaction_exist');

				$outdata = array(
					'success'    => false,
					'messages'   => $messages
				);
			}
			else
			{
				$this->client_model->delete_client($client_id);

				$outdata = array(
					'success'   => true
				);
			}
			
			echo json_encode($outdata);
		}
	}
	
	function validate_client_location()
	{		
		if($this->input->post('location'))
		{
			$validated = true;
			
			$locations = $this->input->post('location');
			
			$location_ids = array();
			
			foreach($locations as $location)
			{
				$location_id = $location['location_id'];
				
				if(!$location_id)
				{
					$this->form_validation->set_message('validate_client_location', $this->lang->line('error_client_location_required'));
					
					if($validated)
						$validated = false;
				}
				else
				{
					$location_ids[] = $location_id;
				}
			}
			
			if(count(array_unique($location_ids)) < count($location_ids))
			{
				$this->form_validation->set_message('validate_client_location', $this->lang->line('error_client_location_duplicated'));
				
				$validated = false;
			}
			
			return $validated;
		}
		else
		{			
			return true;
		}	
	}
	
	function validate_add_email($email)
	{
		$result = $this->client_model->get_client_by_email($email);
		
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
		$result = $this->client_model->get_client_by_email($email);
		
		if($result)
		{
			$client_id = $this->input->get('client_id');
		
			if($client_id == $result['id'])
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
	
	public function autocomplete()
	{
		$outdata = array();
		
		if($this->input->post('client_name'))
		{
			$client_name = $this->input->post('client_name');
			
			$clients_data = $this->client_model->find_clients_by_name($client_name);

			if($clients_data) 
			{
				$clients = array();
				
				foreach($clients_data as $client_data)
				{
					$clients[] = array(
						'client_id'  => $client_data['id'],
						'name'       => $client_data['name'],
						'label'      => $client_data['name']
					);
				}
				
				$outdata = array(
					'success'  => true,
					'clients'  => $clients
				);
			}
			else 
			{
				$outdata = array(
					'success'  => false
				);
			}
		}
		
		echo json_encode($outdata);
		die();
	}
}


