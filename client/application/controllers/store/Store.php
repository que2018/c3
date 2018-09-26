<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('store/store');
		
		$this->load->model('store/store_model');
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
		
		if($this->input->get('filter_platform'))
		{
			$filter_platform = $this->input->get('filter_platform');
		} 
		else 
		{
			$filter_platform = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'date_added';
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
			'filter_platform'   => $filter_platform,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$stores = $this->store_model->get_stores($filter_data);	
		$store_total = $this->store_model->get_store_total($filter_data);
		
		$data['stores'] = array();
		
		if($stores) 
		{
			foreach($stores as $store)
			{	
				$this->lang->load('platform/' . $store['platform']);
			
				$data['stores'][] = array(
					'store_id'    => $store['store_id'],
					'name'        => $store['name'],
					'platform'    => $this->lang->line('text_title')
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
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
	
		$this->pagination->total  = $store_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'store/store?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($store_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($store_total - $limit)) ? $store_total : ((($page - 1) * $limit) + $limit), $store_total, ceil($store_total / $limit));

		$url = '';
				
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
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
		
		$data['sort_name']      = base_url().'store/store?sort=name'.$url;
		$data['sort_platform']  = base_url().'store/store?sort=platform'.$url;
		
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
				
		$data['filter_url'] = base_url().'store/store'.$url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']       = $filter_name;
		$data['filter_platform']   = $filter_platform;
		
		$this->load->view('common/header');
		$this->load->view('store/store_list', $data);
		$this->load->view('common/footer');
	}
	
	public function view() 
	{
		$store_id = $this->input->get('store_id');
	
		$store = $this->store_model->get_store($store_id);
		
		$store_download = $this->store_model->get_store_download($store_id);
		
		$store_upload = $this->store_model->get_store_upload($store_id);
		
		$data['platform_code']           = $store['platform'];
		$data['name']                    = $store['name'];
		$data['default_sale_status_id']  = $store['default_sale_status_id'];
		$data['auto_download']           = $store_download['enabled'];
		$data['auto_upload']             = $store_upload['enabled'];
		$data['settings']                = unserialize($store['setting']);
		
		//platform
		$platform = $store['platform'];
		
		$this->lang->load('platform/' . $platform);
		
		$data['platform'] = $this->lang->line('text_title');

		$this->load->view('common/header');
		$this->load->view('store/store_view', $data);
		$this->load->view('common/footer');
	}
}


