<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_group extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('user/user_group');
		
		$this->header->add_style(base_url(). 'assets/css/app/user/user_group_list.css');
	
		$this->header->set_title($this->lang->line('text_user_group'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('user/user_group_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('check/user_group_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('user/user_group');
		
		$this->load->model('user/user_group_model');
				                   	
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'user_group.date_added';
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
			'filter_name'  => $filter_name,
			'sort'         => $sort,
			'order'        => $order,
			'start'        => ($page - 1) * $limit,
			'limit'        => $limit
		);
		
		$user_groups = $this->user_group_model->get_user_groups($filter_data);
		
		$user_group_total = $this->user_group_model->get_user_group_total($filter_data);
		
		$data['user_groups'] = array();
		
		if($user_groups) 
		{
			foreach($user_groups as $user_group)
			{	
				$data['user_groups'][] = array(
					'user_group_id'  => $user_group['user_group_id'],
					'name'           => $user_group['name']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
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
	
		$this->pagination->total  = $user_group_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'user/user_group?page={page}' .$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($user_group_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($user_group_total - $limit)) ? $user_group_total : ((($page - 1) * $limit) + $limit), $user_group_total, ceil($user_group_total / $limit));

		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['sort_name']  = base_url() . 'user/user_group?sort=user_group.name' . $url;

		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'user/user_group' . $url;
		
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
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		$data['reload_url'] = base_url() . 'user/user_group/reload' . $url;

		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']  = $filter_name;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;

		$this->lang->load('user/user_group');
		
		$this->load->model('user/user_group_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/user/user_group_add.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/iCheck/custom.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/iCheck/icheck.min.js');
		
		$this->header->set_title($this->lang->line('text_user_group_add'));

		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');

		$data = array(
			'name'         => $this->input->post('name'),
			'description'  => $this->input->post('description'),
			'permission'   => $this->input->post('permission')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->user_group_model->add_user_group($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_user_group_add_success'));
			
			redirect(base_url() . 'user/user_group', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('user/user_group_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;

		$this->lang->load('user/user_group');
		
		$this->load->model('user/user_group_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/user/user_group_edit.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/iCheck/custom.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/iCheck/icheck.min.js');
		
		$this->header->set_title($this->lang->line('text_user_group_edit'));

		$user_group_id = $this->input->get('user_group_id');
				
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'         => $this->input->post('name'),
				'description'  => $this->input->post('description'),
				'permission'   => $this->input->post('permission')
			);
			
			$this->user_group_model->edit_user_group($user_group_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_user_group_edit_success'));
			
			redirect(base_url() . 'user/user_group', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['name']      	  = $this->input->post('name');
			$data['description']  = $this->input->post('description');
			$data['permission']   = $this->input->post('permission');
		}
		else
		{
			$user_group = $this->user_group_model->get_user_group($user_group_id);
			
			$data['name']      	  = $user_group['name'];
			$data['description']  = $user_group['description'];
			$data['permission']   = $user_group['permission'];
		}
		
		$data['error'] = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('user/user_group_edit', $data);
	}
	
	public function delete()
	{
		$this->lang->load('user/user_group');
		
		$this->load->model('user/user_model');
		$this->load->model('user/user_group_model');
		
		if($this->input->get('user_group_id'))
		{
			$user_group_id = $this->input->get('user_group_id');
			
			$result = $this->user_model->get_users_by_user_group($user_group_id);
			
			if($result)
			{
				$outdata = array(
					'success'  => false,
					'message'  => $this->lang->line('error_user_group_is_in_use')  
				);
			}
			else
			{
				$result = $this->user_group_model->delete_user_group($user_group_id);

				$outdata = array(
					'success' => ($result)?true:false
				);
			}
				
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


