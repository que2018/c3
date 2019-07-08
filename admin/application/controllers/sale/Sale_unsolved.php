<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_unsolved extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('sale/sale');
	
		$this->header->add_style(base_url(). 'assets/css/app/sale/sale_list.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css');
	
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/moment.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js');
	
		$this->header->set_title($this->lang->line('text_unsolved_order'));
	
		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');	
		
		$this->load->view('sale/sale_unsolved_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('sale/sale_unsolved_list_table', $data);
	}
	
	protected function get_list()
	{	
		$this->lang->load('sale/sale');
	
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('check/checkout_model');
		$this->load->model('sale/sale_unsolved_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
			
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
		
		if($this->input->get('filter_tracking'))
		{
			$filter_tracking = $this->input->get('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
		}
		
		if($this->input->get('sort'))
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'sale.id';
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
		
		$url = '';
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$filter_data = array(
			'filter_sale_id'        => $filter_sale_id,
			'filter_store_sale_id'  => $filter_store_sale_id,
			'filter_tracking'       => $filter_tracking,
			'sort'                  => $sort,
			'order'                 => $order,
			'start'                 => ($page - 1) * $limit,
			'limit'                 => $limit
		);
		
		$sales = $this->sale_unsolved_model->get_unsolved_sales($filter_data);
		$sale_total = $this->sale_unsolved_model->get_unsolved_sale_total($filter_data);
		
		$data['sales'] = array();
		
		if($sales)
		{
			foreach($sales as $sale)
			{
				//store
				$store = $this->store_model->get_store($sale['store_id']);	
				
				//checkout
				$checkout = $this->checkout_model->get_sale_checkout($sale['id']);	
					
				//sale products
				$sale_products = array();
				
				$sale_products_data = $this->sale_model->get_sale_products($sale['id']);	
				
				foreach($sale_products_data as $sale_product_data) 
				{
					$sale_products[] = array(
						'name'      => $sale_product_data['name'],
						'sku'       => $sale_product_data['sku'],
						'quantity'  => $sale_product_data['quantity']
					);
				}
			
				$length_class = $this->length_class_model->get_length_class($sale['length_class_id']);

				$weight_class = $this->weight_class_model->get_weight_class($sale['weight_class_id']);

				//shipping info
				if($sale['shipping_provider'] && $sale['shipping_service'])
				{
					$shipping_provider = $sale['shipping_provider'];
					$shipping_service_code  = $sale['shipping_service'];
					
					$shipping_service = $this->shipping_model->get_shipping_service($shipping_provider, $shipping_service_code);
					
					$shipping = $shipping_service['name'];
				}
				else
				{
					$shipping = '';
				}
				
				$data['sales'][] = array(
					'sale_id'         => $sale['id'],
					'store_name'      => $store['name'],
					'store_sale_id'   => $sale['store_sale_id'],
					'tracking'        => $sale['tracking'],
					'status_id'       => $sale['status_id'],
					'name'            => $sale['name'],
					'length' 		  => $sale['length'],
					'width' 		  => $sale['width'],
					'height' 		  => $sale['height'],
					'weight' 		  => $sale['weight'],
					'length_class' 	  => $length_class['unit'],
					'weight_class' 	  => $weight_class['unit'],
					'shipping'        => $shipping,
					'date_added'      => $sale['date_added'],
					'sale_products'   => $sale_products,
					'checkout'        => $checkout,
					'edit'            => base_url() . 'sale/sale/edit?&unsolved=1&sale_id=' . $sale['id'] . $url
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
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
	
		$this->pagination->total  = $sale_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'sale/sale_unsolved?page={page}' . $url;
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
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['sort_sale_id']   	  = base_url() . 'sale/sale_unsolved?sort=sale.id' . $url;
		$data['sort_store_sale_id']   = base_url() . 'sale/sale_unsolved?sort=sale.store_sale_id' . $url;
		$data['sort_tracking']        = base_url() . 'sale/sale_unsolved?sort=sale.tracking' . $url;
		$data['sort_status']          = base_url() . 'sale/sale_unsolved?sort=sale.status_id' . $url;
		$data['sort_date_added']      = base_url() . 'sale/sale_unsolved?sort=sale.date_added' . $url;

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
			
		$data['filter_url'] = base_url() . 'sale/sale_unsolved' . $url;

		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=' . $this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
	
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_store_sale_id')) 
		{
			$url .= '&filter_store_sale_id=' . $this->input->get('filter_store_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
			
		$data['reload_url'] = base_url() . 'sale/sale_unsolved/reload' . $url;

		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['page']  = $page;
		$data['limit'] = $limit;
		
		$data['filter_sale_id']   	  = $filter_sale_id;
		$data['filter_store_sale_id'] = $filter_store_sale_id;
		$data['filter_tracking']      = $filter_tracking;
		
		return $data;
	}
}


