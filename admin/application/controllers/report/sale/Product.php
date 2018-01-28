<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Product extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();	
	}
	
	function index()
	{
		$this->load->library('currency');
		
		$this->lang->load('report/sale/product');
		
		$this->load->model('report/sale/product/products_model');
	
		$data['success'] = $this->session->flashdata('success');
		                   
		if($this->input->get('filter_upc'))
		{
			$filter_upc = $this->input->get('filter_upc');
		} 
		else 
		{
			$filter_upc = '';
		}
	
		if($this->input->get('filter_sku'))
		{
			$filter_sku = $this->input->get('filter_sku');
		} 
		else 
		{
			$filter_sku = '';
		}
		
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_quantity'))
		{
			$filter_quantity = $this->input->get('filter_quantity');
		} 
		else 
		{
			$filter_quantity = '';
		}
		
		if($this->input->get('filter_income'))
		{
			$filter_income = $this->input->get('filter_income');
		} 
		else 
		{
			$filter_income = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'total_quantity';
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
			'filter_upc'      => $filter_upc,
			'filter_sku'      => $filter_sku,
			'filter_name'     => $filter_name,
			'filter_quantity' => $filter_quantity,	
			'filter_income'   => $filter_income,						
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$products = $this->products_model->get_products($filter_data);	
		$product_total = $this->products_model->get_product_total($filter_data);
		
		$data['products'] = array();
		
		if($products) 
		{
			foreach($products as $product)
			{	
				$data['products'][] = array(
					'id'              => $product['id'],
					'upc'             => $product['upc'],
					'sku'             => $product['sku'],
					'name'            => $product['name'],
					'total_quantity'  => $product['total_quantity'],
					'total_income'    => $this->currency->format($product['total_income'])
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_income')) 
		{
			$url .= '&filter_income=' . $this->input->get('filter_income');
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
	
		$this->pagination->total  = $product_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'report/sale/product?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

		$url = '';
	
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
				
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}

		if($this->input->get('filter_income')) 
		{
			$url .= '&filter_income=' . $this->input->get('filter_income');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$data['limit_10']  = base_url().'report/sale/product?limit=10'.$url;
		$data['limit_15']  = base_url().'report/sale/product?limit=15'.$url;
		$data['limit_50']  = base_url().'report/sale/product?limit=50'.$url;
		$data['limit_100'] = base_url().'report/sale/product?limit=100'.$url;
	
		$url = '';
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_income')) 
		{
			$url .= '&filter_income=' . $this->input->get('filter_income');
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
		
		$data['sort_code']        = base_url().'report/sale/product?sort=product.upc' . $url;
		$data['sort_sku']         = base_url().'report/sale/product?sort=product.sku' . $url;
		$data['sort_name']        = base_url().'report/sale/product?sort=product.name' . $url;		
		$data['sort_quantity']    = base_url().'report/sale/product?sort=total_quantity' . $url;
		$data['sort_income']      = base_url().'report/sale/product?sort=total_income' . $url;

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
		
		$data['filter_url'] = base_url().'report/sale/product'.$url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_upc']           = $filter_upc;
		$data['filter_sku']           = $filter_sku;
		$data['filter_name']          = $filter_name;
		$data['filter_quantity']      = $filter_quantity;
		$data['filter_income']        = $filter_income;
		
		$this->load->view('common/header');
		$this->load->view('report/sale/product/product_list', $data);
		$this->load->view('common/footer');
	}
	
	function detail()
	{
		$this->load->library('currency');
		
		$this->load->library('datetimer');
		
		$this->lang->load('report/sale/product');
		
		$this->load->model('report/sale/product/product_model');
		
		$product_id = $this->input->get('product_id');
		
		//datetime info
		$current_datetime = $this->datetimer->current_datetime();
		
		$first_date_this_month = $this->datetimer->first_date_this_month();
		
		$first_date_last_month = $this->datetimer->first_date_last_month();
		
		$date_difference = $this->datetimer->diff_days($current_datetime, $first_date_this_month);
		
		$relative_date_last_month = $this->datetimer->plus_days($first_date_last_month, $date_difference);
		
		//sale income data
		$filter_data = array(
			'filter_date_added_from' => $first_date_this_month,
			'filter_date_added_to'   => $current_datetime
		);
		
		$data['product_sales_income_by_date'] = array();
		
		$product_sales_income_by_date = $this->product_model->get_product_sale_income_by_date($product_id, $filter_data);
		
		foreach($product_sales_income_by_date as $product_sale_income_by_date)
		{
			$year = $this->datetimer->get_year($product_sale_income_by_date['date_added']);
			
			$month = $this->datetimer->get_month($product_sale_income_by_date['date_added']);
			
			$day = $this->datetimer->get_day($product_sale_income_by_date['date_added']);
			
			$sum = $product_sale_income_by_date['sum'];
			
			$data['product_sales_income_by_date'][] = array(
				'year'    => $year,
				'month'   => $month,
				'day'     => $day,
				'sum'     => $sum
			);
		}
		
		$data['sale_income'] = 0;
		
		//sale total data
		$filter_data = array(
			'filter_date_added_from' => $first_date_this_month,
			'filter_date_added_to'   => $current_datetime
		);
		
		$data['product_sales_total_by_date'] = array();
		
		$product_sales_total_by_date = $this->product_model->get_product_sale_total_by_date($product_id, $filter_data);
				
		foreach($product_sales_total_by_date as $product_sale_total_by_date)
		{
			$year = $this->datetimer->get_year($product_sale_total_by_date['date_added']);
			
			$month = $this->datetimer->get_month($product_sale_total_by_date['date_added']);
			
			$day = $this->datetimer->get_day($product_sale_total_by_date['date_added']);
			
			$total = $product_sale_total_by_date['total'];
			
			$data['product_sales_total_by_date'][] = array(
				'year'    => $year,
				'month'   => $month,
				'day'     => $day,
				'total'   => $total
			);
		}
		
		$data['sale_total'] = 0;
		
		//sale detail data
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
			$limit = $this->config->item('config_sale_product_page_limit');
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
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$sales = $this->product_model->get_product_sales($product_id, $filter_data);	
		$sale_total = $this->product_model->get_product_sale_total($product_id);
		
		$data['sales'] = array();
		
		if($sales) 
		{
			foreach($sales as $sale)
			{	
				$data['sales'][] = array(
					'quantity'     => $sale['quantity'],
					'total'        => $this->currency->format($sale['total']),
					'date_added'   => $sale['date_added']
				);
			}
		}
		
		$url = '&product_id=' . $product_id;
		
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
		$this->pagination->url    = base_url().'report/sale/product/detail?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($sale_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($sale_total - $limit)) ? $sale_total : ((($page - 1) * $limit) + $limit), $sale_total, ceil($sale_total / $limit));

		$url = '';
	
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
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
		
		$data['sort_quantity']    = base_url().'report/sale/product/detail?sort=sale_product.quantity' . $url;
		$data['sort_total']       = base_url().'report/sale/product/detail?sort=total' . $url;
		$data['sort_date_added']  = base_url().'report/sale/product/detail?sort=sale.date_added' . $url;
		
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
		
		$data['filter_url'] = base_url().'report/sale/product/detail' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$this->load->view('common/header');
		$this->load->view('report/sale/product/product_detail', $data);
		$this->load->view('common/footer');
	}
}


