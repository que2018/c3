<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class User extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('user/user');
		
		$this->load->model('user/user_model');
		
		$data['success'] = $this->session->flashdata('success');
		                   	
		if($this->input->get('filter_username'))
		{
			$filter_username = $this->input->get('filter_username');
		} 
		else 
		{
			$filter_username = '';
		}
		
		if($this->input->get('filter_group_name'))
		{
			$filter_group_name = $this->input->get('filter_group_name');
		} 
		else 
		{
			$filter_group_name = '';
		}
	
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'user.date_added';
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
			'filter_username'   => $filter_username,
			'filter_group_name' => $filter_group_name,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$users = $this->user_model->get_users($filter_data);	
		
		$user_total = $this->user_model->get_user_total($filter_data);
		
		$data['users'] = array();
		
		if($users) 
		{
			foreach($users as $user)
			{	
				$data['users'][] = array(
					'user_id'    => $user['id'],
					'username'   => $user['username'],
					'group_name' => $user['group_name']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_username')) 
		{
			$url .= '&filter_username=' . $this->input->get('filter_username');
		}
		
		if($this->input->get('filter_group_name')) 
		{
			$url .= '&filter_group_name=' . $this->input->get('filter_group_name');
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
	
		$this->pagination->total  = $user_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'user/user?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($user_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($user_total - $limit)) ? $user_total : ((($page - 1) * $limit) + $limit), $user_total, ceil($user_total / $limit));

		$url = '';
		
		if($this->input->get('filter_username')) 
		{
			$url .= '&filter_username=' . $this->input->get('filter_username');
		}
		
		if($this->input->get('filter_group_name')) 
		{
			$url .= '&filter_group_name=' . $this->input->get('filter_group_name');
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
		
		$data['sort_username']    = base_url() . 'user/user?sort=user.username' . $url;
		$data['sort_group_name']  = base_url() . 'user/user?sort=user.group_name' . $url;

		$url = '';
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		$data['filter_url'] = base_url() . 'user/user' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_username']    = $filter_username;
		$data['filter_group_name']  = $filter_group_name;
		
		$this->header->set_title($this->lang->line('text_user'));
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('user/user_list', $data);
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('user/user');
		
		$this->load->library('form_validation');
		
		$this->load->model('user/user_model');
		$this->load->model('user/user_group_model');
	
		$this->form_validation->set_rules('username', $this->lang->line('text_username'), 'required');
		$this->form_validation->set_rules('user_group_id', $this->lang->line('text_user_group'), 'required');	
		$this->form_validation->set_rules('firstname', $this->lang->line('text_firstname'), 'required');	
		$this->form_validation->set_rules('lastname', $this->lang->line('text_lastname'), 'required');
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');
		$this->form_validation->set_rules('confirm', $this->lang->line('text_confirm'), 'required');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');

		$data = array(
			'username'       => $this->input->post('username'),
			'user_group_id'  => $this->input->post('user_group_id'),
			'firstname'      => $this->input->post('firstname'),
			'lastname'       => $this->input->post('lastname'),
			'email'          => $this->input->post('email'),
			'password'       => $this->input->post('password'),
			'confirm'        => $this->input->post('confirm'),
			'status'         => $this->input->post('status')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->user_model->add_user($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_user_add_success'));
			
			redirect(base_url() . 'user/user', 'refresh');
		}
		
		$data['user_groups'] = array();
		
		$user_groups = $this->user_group_model->get_user_groups();
		
		foreach($user_groups as $user_group)
		{
			$data['user_groups'][] = array(
				'user_group_id' => $user_group['user_group_id'],
				'name'          => $user_group['name']
			);
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('user/user_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('user/user');
		
		$this->load->library('form_validation');
		
		$this->load->model('user/user_model');
		$this->load->model('user/user_group_model');
		
		$user_id = $this->input->get('user_id');
		
		$this->form_validation->set_rules('username', $this->lang->line('text_username'), 'required');
		$this->form_validation->set_rules('user_group_id', $this->lang->line('text_user_group'), 'required');	
		$this->form_validation->set_rules('firstname', $this->lang->line('text_firstname'), 'required');	
		$this->form_validation->set_rules('lastname', $this->lang->line('text_lastname'), 'required');
		$this->form_validation->set_rules('email', $this->lang->line('text_email'), 'required');
		$this->form_validation->set_rules('password', $this->lang->line('text_password'), 'required');
		$this->form_validation->set_rules('confirm', $this->lang->line('text_confirm'), 'required');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'username'       => $this->input->post('username'),
				'firstname'      => $this->input->post('firstname'),
				'lastname'       => $this->input->post('lastname'),
				'email'          => $this->input->post('email'),
				'password'       => $this->input->post('password'),
				'confirm'        => $this->input->post('confirm'),
				'user_group_id'  => $this->input->post('user_group_id'),
				'status'         => $this->input->post('status')
			);
			
			$this->user_model->edit_user($user_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_user_edit_success'));
			
			redirect(base_url() . 'user/user', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['username']      	= $this->input->post('username');
			$data['firstname']      = $this->input->post('firstname');
			$data['lastname']      	= $this->input->post('lastname');
			$data['email']      	= $this->input->post('email');
			$data['password']      	= '';
			$data['confirm']      	= '';
			$data['user_group_id']  = $this->input->post('user_group_id');
			$data['status']      	= $this->input->post('status');
		}
		else
		{
			$user = $this->user_model->get_user($user_id);
			
			$data['username']      	= $user['username'];
			$data['firstname']      = $user['firstname'];
			$data['lastname']      	= $user['lastname'];
			$data['email']      	= $user['email'];
			$data['password']      	= '';
			$data['confirm']      	= '';
			$data['user_group_id']  = $user['user_group_id'];;
			$data['status']      	= $user['status'];
		}
		
		$data['user_groups'] = array();
		
		$user_groups = $this->user_group_model->get_user_groups();
		
		foreach($user_groups as $user_group)
		{
			$data['user_groups'][] = array(
				'user_group_id' => $user_group['user_group_id'],
				'name'          => $user_group['name']
			);
		}
		
		$data['user_id'] = $user_id;

		$data['error'] = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('user/user_edit', $data);
	}
	
	public function delete()
	{		
		if($this->input->get('user_id'))
		{
			$user_id = $this->input->get('user_id');
			
			$result = $this->user_model->delete_user($user_id);

			$outdata = array(
				'success' => ($result)?true:false
			);

			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


