<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Category extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('catalog/category');
		
		$this->header->add_style(base_url(). 'assets/css/app/catalog/category_list.css');
	
		$this->header->set_title($this->lang->line('text_category'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('catalog/category_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('catalog/category_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('catalog/category');
		
		$this->load->model('catalog/category_model');
	
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
			$sort = 'c3.sort_order';
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
			'filter_name'  => $filter_name,
			'sort'         => $sort,
			'order'        => $order,
			'start'        => ($page - 1) * $limit,
			'limit'        => $limit
		);
		
		$categories = $this->category_model->get_categories($filter_data);	
		
		$category_total = $this->category_model->get_category_total($filter_data);
		
		$data['categories'] = array();
		
		if($categories) 
		{
			foreach($categories as $category)
			{	
				$data['categories'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'],
					'sort_order'  => $category['sort_order']
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
	
		$this->pagination->total  = $category_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'catalog/category?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($category_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($category_total - $limit)) ? $category_total : ((($page - 1) * $limit) + $limit), $category_total, ceil($category_total / $limit));

		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if ($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_name']       = base_url() . 'catalog/category?sort=category.name' . $url;		
		$data['sort_sort_order'] = base_url() . 'catalog/category?sort=category.sort_order' . $url;

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
		
		$data['filter_url'] = base_url() . 'catalog/category' . $url;
		
		$data['reload_url'] = base_url() . 'catalog/category/reload' . $url;

		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name'] = $filter_name;

		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('catalog/category');
		
		$this->load->model('tool/image_model');
		$this->load->model('catalog/category_model');
		
		$this->header->add_style(base_url() . 'assets/css/app/catalog/category_add.css');
		$this->header->add_style(base_url() . 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url() . 'assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css');
		
		$this->header->add_script(base_url() . 'assets/js/plugins/iCheck/icheck.min.js');
		$this->header->add_script(base_url() . 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		
		$this->header->set_title($this->lang->line('text_category_add'));
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('description', $this->lang->line('text_description'), 'required');
		$this->form_validation->set_rules('sort_order', $this->lang->line('text_sort_order'), 'required');

		$data = array(
			'name'          => $this->input->post('name'),
			'description'   => $this->input->post('description'),
			'image'         => $this->input->post('image'),
			'path'          => $this->input->post('path'),
			'parent_id'     => $this->input->post('parent_id'),
			'sort_order'    => $this->input->post('sort_order')
		);
		
		$top = $this->input->post('top');
		
		$data['top'] = (isset($top))?$top:0;
		
		$featured = $this->input->post('featured');
		
		$data['featured'] = (isset($featured))?$featured:0;
		
		if($this->form_validation->run() == true)
		{
			$this->category_model->add_category($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_category_add_success'));
			
			redirect(base_url() . 'catalog/category', 'refresh');
		}
		
		//thumb
		if($data['image'])
		{
			$data['thumb'] = $this->image_model->resize($data['image'], 100, 100);
		}
		else
		{
			$data['thumb'] = $this->image_model->resize('no_image.png', 100, 100);
		}
		
		$data['placeholder'] = $this->image_model->resize('no_image.png', 100, 100);
				
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('catalog/category_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('catalog/category');
		
		$this->load->model('tool/image_model');
		$this->load->model('catalog/category_model');
		
		$this->header->add_style(base_url() . 'assets/css/app/catalog/category_add.css');
		$this->header->add_style(base_url() . 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url() . 'assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css');
		
		$this->header->add_script(base_url() . 'assets/js/plugins/iCheck/icheck.min.js');
		$this->header->add_script(base_url() . 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
				
		$this->header->set_title($this->lang->line('text_category_edit'));
		
		$category_id = $this->input->get('category_id');
	
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('description', $this->lang->line('text_description'), 'required');
		$this->form_validation->set_rules('sort_order', $this->lang->line('text_sort_order'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'   	   => $this->input->post('name'),
				'description'  => $this->input->post('description'),
				'image'        => $this->input->post('image'),
				'path'         => $this->input->post('path'),
				'parent_id'    => $this->input->post('parent_id'),
				'sort_order'   => $this->input->post('sort_order')
			);
			
			$top = $this->input->post('top');
			$data['top'] = (isset($top))?$top:0;
		
			$featured = $this->input->post('featured');
			$data['featured'] = (isset($featured))?$featured:0;
			
			$this->category_model->edit_category($category_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_category_edit_success'));
			
			redirect(base_url() . 'catalog/category', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{	
			$data['name']    	  = $this->input->post('name');
			$data['description']  = $this->input->post('description');
			$data['image']        = $this->input->post('image');
			$data['path']         = $this->input->post('path');
			$data['parent_id']    = $this->input->post('parent_id');
			$data['sort_order']   = $this->input->post('sort_order');
			
			$top = $this->input->post('top');
			
			$data['top'] = (isset($top))?$top:0;
		
			$featured = $this->input->post('featured');
			
			$data['featured'] = (isset($featured))?$featured:0;
		}
		else
		{
			$category = $this->category_model->get_category($category_id);
			
			$data['name']  		  = $category['name'];
			$data['description']  = $category['description'];
			$data['image']        = $category['image'];
			$data['path']         = $category['path'];
			$data['parent_id']    = $category['parent_id'];
			$data['image']  	  = $category['image'];
			$data['top']          = $category['top'];
			$data['featured']     = $category['featured'];
			$data['sort_order']   = $category['sort_order'];
		}
		
		//thumb
		if($data['image'])
		{
			$data['thumb'] = $this->image_model->resize($data['image'], 100, 100);
		}
		else
		{
			$data['thumb'] = $this->image_model->resize('no_image.png', 100, 100);
		}
		
		$data['placeholder'] = $this->image_model->resize('no_image.png', 100, 100);

		$data['category_id'] = $category_id;
	
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('catalog/category_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('catalog/category_model');

		if($this->input->get('category_id'))
		{
			$category_id = $this->input->get('category_id');
			
			$result = $this->category_model->delete_category($category_id);

			$outdata = array(
				'success' => ($result)?true:false
			);
				
			echo json_encode($outdata);
		}
	}
	
	public function autocomplete() 
	{
		$this->load->model('catalog/category_model');
		
		$json = array();

		if($this->input->get('filter_name')) 
		{			
			$filter_name = $this->input->get('filter_name');
			
			$filter_data = array(
				'filter_name' => $filter_name,
				'sort'        => 'name',
				'order'       => 'ASC',
				'start'       => 0,
				'limit'       => 5
			);
			
			$results = $this->category_model->get_categories($filter_data);
			
			foreach($results as $result)
			{
				$json[] = array(
					'category_id' => $result['category_id'],
					'name'        => strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'))
				);
			}
		}
	
		$sort_order = array();

		foreach($json as $key => $value) 
		{
			$sort_order[$key] = $value['name'];
		}

		array_multisort($sort_order, SORT_ASC, $json);

		echo json_encode($json);
		die();
	}
}


