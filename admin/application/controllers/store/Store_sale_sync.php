<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_sale_sync extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('store/store_sale_sync');
		
		$this->load->model('store/store_sale_sync_model');
			
		$this->header->add_style(base_url(). 'assets/css/app/store/store_sale_sync_list.css');
	
		$this->header->set_title($this->lang->line('text_store_order_sync'));

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
			$sort = 'stores.date_added';
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
		
		$stores = $this->store_sale_sync_model->get_stores($filter_data);
		
		$store_total = $this->store_sale_sync_model->get_store_total($filter_data);
		
		$data['stores'] = array();
		
		if($stores) 
		{
			foreach($stores as $store)
			{	
				$this->lang->load('platform/' . $store['platform']);
			
				$data['stores'][] = array(
					'id'             => $store['id'],
					'name'           => $store['name'],
					'platform'       => $store['platform'],
					'platform_title' => $this->lang->line('text_title')
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
		$this->pagination->url    = base_url() . 'store/store_sale_sync?page={page}' . $url;
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
		
		$data['sort_name']      = base_url() . 'store/store_sale_sync?sort=store.name' . $url;
		$data['sort_platform']  = base_url() . 'store/store_sale_sync?sort=store.platform' . $url;
		
		$url = '';
		
		if ($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=10';
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'store/store_sale_sync' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']       = $filter_name;
		$data['filter_platform']   = $filter_platform;
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('store/store_sale_sync_list', $data);
	}
}


