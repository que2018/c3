<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Refund extends MX_Controller
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('sale/refund');
	
		$this->header->add_style(base_url(). 'assets/css/app/sale/refund_list.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css');
	
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/moment.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js');
	
		$this->header->set_title($this->lang->line('text_all_refunds'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');	
			
		$this->load->view('sale/refund_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('sale/refund_list_table', $data);
	}
	
	public function filter()
	{
		$data = $this->get_list();
			
		$this->load->view('sale/refund_list_filter', $data);
	}
	
	protected function get_list()
	{		
		$this->lang->load('sale/refund');
	
		$this->load->model('sale/refund_model');
			
		if($this->input->get('filter_refund_id'))
		{
			$filter_refund_id = $this->input->get('filter_refund_id');
		} 
		else 
		{
			$filter_refund_id = '';
		}
		
		if($this->input->get('filter_sale_id'))
		{
			$filter_sale_id = $this->input->get('filter_sale_id');
		} 
		else 
		{
			$filter_sale_id = '';
		}
		
		if($this->input->get('filter_tracking'))
		{
			$filter_tracking = $this->input->get('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
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
		
		$url = '';
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
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
			'filter_refund_id'  => $filter_refund_id,
			'filter_sale_id'    => $filter_sale_id,
			'filter_tracking'   => $filter_tracking,
			'filter_date_added' => $filter_date_added,
			'filter_status'     => $filter_status,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$refunds = $this->refund_model->get_refunds($filter_data);
		$refund_total = $this->refund_model->get_refund_total($filter_data);
		
		$data['refunds'] = array();
		
		if($refunds)
		{			
			foreach($refunds as $refund)
			{
				$data['refunds'][] = array(
					'refund_id'  => $refund['refund_id'],
					'sale_id'    => $refund['sale_id'],
					'tracking'   => $refund['tracking'],
					'status_id'  => $refund['status_id'],
					'date_added' => $refund['date_added']
				);	
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
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
	
		$this->pagination->total  = $refund_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'sale/refund?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($refund_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($refund_total - $limit)) ? $refund_total : ((($page - 1) * $limit) + $limit), $refund_total, ceil($refund_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
	
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if ($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if ($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_sale_id']     = base_url().'sale/refund?sort=sale_id' . $url;
		$data['sort_tracking']    = base_url().'sale/refund?sort=tracking' . $url;
		$data['sort_status']      = base_url().'sale/refund?sort=status_id' . $url;
		$data['sort_date_added']  = base_url().'sale/refund?sort=date_added' . $url;

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
		
		$data['filter_url'] = base_url() . 'sale/refund/filter' . $url;
				
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
	
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
			
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
			
		$data['add'] = base_url() . 'sale/refund/add' . $url;
		
		$data['reload_url'] = base_url() . 'sale/refund/reload' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['page']  = $page;
		$data['limit'] = $limit;
		
		$data['filter_refund_id']   = $filter_refund_id;
		$data['filter_sale_id']   	= $filter_sale_id;
		$data['filter_tracking']    = $filter_tracking;
		$data['filter_status']      = $filter_status;
		$data['filter_date_added'] 	= $filter_date_added;

		return $data;
	}

	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('sale/refund');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('sale/refund_model');
	
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/app/sale/refund_add.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');

		$this->header->set_title($this->lang->line('text_refund_add'));

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
	
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		$this->form_validation->set_rules('sale_id', $this->lang->line('text_sale_id'), 'required');

		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data = array(
				'sale_id'   => $this->input->post('sale_id'),
				'tracking'  => $this->input->post('tracking'),
				'comment'   => $this->input->post('comment')
			);
		}
		else
		{
			$data = array(
				'sale_id'   => '',
				'tracking'  => '',
				'comment'   => ''
			);
		}
	
		if($this->form_validation->run() == true)
		{
			$sale_id = $this->refund_model->add_refund($data);
									
			$this->session->set_flashdata('success', $this->lang->line('text_refund_add_success'));
			
			redirect(base_url() . 'sale/refund' . $url, 'refresh');
		}
		
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
		
		if($this->input->get('page')) 
		{
			$url .= '&page=' . $this->input->get('page');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		$data['cancel'] = base_url() . 'sale/refund' . $url;
		$data['action'] = base_url() . 'sale/refund/add' . $url;
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('sale/refund_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('sale/refund');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('sale/refund_model');
	
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/app/sale/refund_edit.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');

		$this->header->set_title($this->lang->line('text_refund_edit'));
		
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
	
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
		}
		
		if($this->input->get('filter_sale_id')) 
		{
			$url .= '&filter_sale_id=' . $this->input->get('filter_sale_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
						
		$refund_id = $this->input->get('refund_id');
	
		$this->form_validation->set_rules('sale_id', $this->lang->line('text_sale_id'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'refund_id' => $this->input->post('refund_id'),
				'tracking'  => $this->input->post('tracking'),
				'comment'   => $this->input->post('comment')
			);
						
			$this->refund_model->edit_refund($refund_id, $data);
				
			$this->session->set_flashdata('success', $this->lang->line('text_refund_edit_success'));
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['sale_id']  = $this->input->post('sale_id');
			$data['tracking'] = $this->input->post('tracking');	
			$data['comment']  = $this->input->post('comment');	
		}
		else
		{
			$refund = $this->refund_model->get_refund($refund_id);
			
			$data['sale_id']  = $refund['sale_id'];
			$data['tracking'] = $refund['tracking'];
			$data['comment']  = $refund['comment'];
		}
		
		$data['refund_id'] = $refund_id;
				
		$data['error'] = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('sale/refund_edit', $data);
	}
}


