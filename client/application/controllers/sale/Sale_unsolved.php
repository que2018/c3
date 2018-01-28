<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Sale_unsolved extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
	}
	
	function index()
	{			
		$data = $this->get_list();
			
		$this->load->view('common/header');
		$this->load->view('sale/sale_list_unsolved', $data);
		$this->load->view('common/footer');
	}
	
	function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('sale/sale_list_unsolved_table', $data);
	}
	
	function get_list()
	{	
		$data['success'] = $this->session->flashdata('success');
	
		if($this->input->get('filter_sale_id'))
		{
			$filter_sale_id = $this->input->get('filter_sale_id');
		} 
		else 
		{
			$filter_sale_id = '';
		}
	
		if($this->input->get('filter_store_sale_id'))
		{
			$filter_store_sale_id = $this->input->get('filter_store_sale_id');
		} 
		else 
		{
			$filter_store_sale_id = '';
		}
		
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_date_added'))
		{
			$filter_date_added = $this->input->get('filter_date_added');
		} 
		else 
		{
			$filter_date_added = '';
		}
		
		if($this->input->get('sort'))
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'sale.date_added';
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
			'filter_store_sale_id'  => $filter_store_sale_id,
			'filter_name'           => $filter_name,
			'filter_status'         => 1,
			'filter_date_added'     => $filter_date_added,
			'sort'                  => $sort,
			'order'                 => $order,
			'start'                 => ($page - 1) * $limit,
			'limit'                 => $limit
		);
		
		$sales       = $this->sale_model->get_sales($filter_data);
		$sale_total  = $this->sale_model->get_sale_total($filter_data);
		
		$data['sales'] = array();
		
		if($sales)
		{
			foreach($sales as $sale)
			{					
				$data['sales'][] = array(
					'id'              => $sale['id'],
					'store_sale_id'   => $sale['store_sale_id'],
					'tracking'        => $sale['tracking'],
					'name'            => $sale['name'],
					'date_added'      => $sale['date_added']
				);	
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
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
	
		$this->pagination->total  = $sale_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'sale/sale?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($sale_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($sale_total - $limit)) ? $sale_total : ((($page - 1) * $limit) + $limit), $sale_total, ceil($sale_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('sale')) 
		{
			$url .= '&sale=' . $this->input->get('sale');
		}
	
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
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
		
		$data['sort_sale_id']         = base_url().'sale/sale/unsolved?sort=sale.id' . $url;
		$data['sort_store_sale_id']   = base_url().'sale/sale/unsolved?sort=sale.store_sale_id' . $url;
		$data['sort_tracking']        = base_url().'sale/sale/unsolved?sort=sale.tracking' . $url;
		$data['sort_name']            = base_url().'sale/sale/unsolved?sort=sale.name' . $url;
		$data['sort_date_added']      = base_url().'sale/sale/unsolved?sort=sale.date_added' . $url;

		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=20';
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'sale/sale' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_sale_id']         = $filter_sale_id;
		$data['filter_store_sale_id']   = $filter_store_sale_id;
		$data['filter_name']            = $filter_name;
		$data['filter_date_added']      = $filter_date_added;

		return $data;
	}
}


