<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Recharge extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('finance/recharge');
		
		$this->load->model('finance/recharge_model');
	}
	
	function index()
	{		                   	
		if($this->input->get('filter_client'))
		{
			$filter_client = $this->input->get('filter_client');
		} 
		else 
		{
			$filter_client = '';
		}
		
		if($this->input->get('filter_payment_method'))
		{
			$filter_payment_method = $this->input->get('filter_payment_method');
		} 
		else 
		{
			$filter_payment_method = '';
		}
		
		if($this->input->get('filter_amount'))
		{
			$filter_amount = $this->input->get('filter_amount');
		} 
		else 
		{
			$filter_amount = '';
		}
		
		if($this->input->get('filter_status'))
		{
			$filter_status = $this->input->get('filter_status');
		} 
		else 
		{
			$filter_status = '';
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
			$sort = 'recharge.date_added';
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
			'filter_client'          => $filter_client,
			'filter_payment_method'  => $filter_payment_method,
			'filter_amount'          => $filter_amount,
			'filter_status'          => $filter_status,
			'filter_date_added'      => $filter_date_added,
			'sort'             		 => $sort,
			'order'                  => $order,
			'start'                  => ($page - 1) * $limit,
			'limit'                  => $limit
		);
		
		$recharges = $this->recharge_model->get_recharges($filter_data);	
		$recharge_total = $this->recharge_model->get_recharge_total($filter_data);
		
		$data['recharges'] = array();
		
		if($recharges) 
		{
			foreach($recharges as $recharge)
			{	
				if($recharge['status'] == 1)
					$status = $this->lang->line('text_pending');
				
				if($recharge['status'] == 2)
					$status = $this->lang->line('text_completed');
			
				$data['recharges'][] = array(
					'id'             => $recharge['id'],
					'payment_method' => $recharge['payment_method'],
					'amount'         => $recharge['amount'],
					'status'         => $status,
					'date_added'     => $recharge['date_added']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
		}
		
		if($this->input->get('filter_payment_method')) 
		{
			$url .= '&filter_payment_method=' . $this->input->get('filter_payment_method');
		}
		
		if($this->input->get('filter_amount')) 
		{
			$url .= '&filter_amount=' . $this->input->get('filter_amount');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
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
	
		$this->pagination->total  = $recharge_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'finance/recharge?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($recharge_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($recharge_total - $limit)) ? $recharge_total : ((($page - 1) * $limit) + $limit), $recharge_total, ceil($recharge_total / $limit));

		$url = '';
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
		}
		
		if($this->input->get('filter_payment_method')) 
		{
			$url .= '&filter_payment_method=' . $this->input->get('filter_payment_method');
		}
		
		if($this->input->get('filter_amount')) 
		{
			$url .= '&filter_amount=' . $this->input->get('filter_amount');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
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
		
		$data['sort_payment']  	  = base_url().'finance/recharge?sort=payment_method'.$url;
		$data['sort_amount']      = base_url().'finance/recharge?sort=amount'.$url;
		$data['sort_status']      = base_url().'finance/recharge?sort=status'.$url;
		$data['sort_date_added']  = base_url().'finance/recharge?sort=date_added'.$url;

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
		
		$data['filter_url'] = base_url().'finance/recharge' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_client'] 	        = $filter_client;
		$data['filter_payment_method']  = $filter_payment_method;
		$data['filter_amount'] 			= $filter_amount;
		$data['filter_status'] 			= $filter_status;
		$data['filter_date_added'] 		= $filter_date_added;
		
		$this->load->view('common/header');
		$this->load->view('finance/recharge_list', $data);
		$this->load->view('common/footer');
	}
}


