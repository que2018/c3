<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Language extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('setting/language');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/language_list.css');
	
		$this->header->set_title($this->lang->line('text_language'));
	
		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/language_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('setting/language_list_table', $data);
	}
	
	protected function get_list()
	{	
		$this->lang->load('setting/language');
		
		$this->load->model('setting/language_model');
	
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'code';
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
			'sort'     => $sort,
			'order'    => $order,
			'start'    => ($page - 1) * $limit,
			'limit'    => $limit
		);
		
		$languages = $this->language_model->get_languages($filter_data);
		
		$language_total = $this->language_model->get_language_total($filter_data);
		
		$data['languages'] = array();
		
		if($languages) 
		{
			foreach($languages as $language)
			{	
				$data['languages'][] = array(
					'language_id'  => $language['language_id'],
					'name'         => $language['name'],
					'code'         => $language['code']
				);
			}
		}
		
		$url = '';
		
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
	
		$this->pagination->total  = $language_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'setting/language?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($language_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($language_total - $limit)) ? $language_total : ((($page - 1) * $limit) + $limit), $language_total, ceil($language_total / $limit));

		$url = '';
			
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
		
		$data['sort_name']  = base_url() . 'setting/language?sort=name' . $url;
		$data['sort_code']  = base_url() . 'setting/language?sort=code' . $url;

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
		
		$data['reload'] = base_url() . 'setting/language/reload' . $url;
			
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
			
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;

		$this->lang->load('setting/language');
		
		$this->load->model('setting/language_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/language_add.css');
				
		$this->header->set_title($this->lang->line('text_language_add'));

		$user_group_id = $this->input->get('user_group_id');
			
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('code', $this->lang->line('text_code'), 'required');

		$data = array(
			'name'    => $this->input->post('name'),
			'code'    => $this->input->post('code')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->language_model->add_language($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_language_add_success'));
			
			redirect(base_url() . 'setting/language', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/language_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;

		$this->lang->load('setting/language');
		
		$this->load->model('setting/language_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/language_edit.css');
				
		$this->header->set_title($this->lang->line('text_language_edit'));
		
		$language_id = $this->input->get('language_id');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('code', $this->lang->line('text_code'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'    => $this->input->post('name'),
				'code'    => $this->input->post('code')
			);
			
			$this->language_model->edit_language($language_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_language_edit_success'));
			
			redirect(base_url() . 'setting/language', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{	
			$data['name']  = $this->input->post('name');
			$data['code']  = $this->input->post('code');
		}
		else
		{
			$language = $this->language_model->get_language($language_id);
			
			$data['name']  = $language['name'];
			$data['code']  = $language['code'];
		}
		
		$data['language_id'] = $language_id;
			
		$data['error'] = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/language_edit', $data);
	}
	
	public function delete()
	{
		if($this->input->get('language_id'))
		{
			$language_id = $this->input->get('language_id');
			
			$result = $this->language_model->delete_language($language_id);
			
			$outdata = array(
				'success' => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


