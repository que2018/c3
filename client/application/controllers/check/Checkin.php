<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin extends MX_Controller 
{
	public function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
	}
	
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
	
		$data['success'] = $this->session->flashdata('success');
				
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_list.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/moment.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js');

		$this->header->set_title($this->lang->line('text_checkin_list'));
		
		if($this->input->get('filter_id'))
		{
			$filter_id = $this->input->get('filter_id');
		} 
		else 
		{
			$filter_id = '';
		}
		
		if($this->input->get('filter_tracking'))
		{
			$filter_tracking = $this->input->get('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
		}
		
		if($this->input->get('filter_note'))
		{
			$filter_note = $this->input->get('filter_note');
		} 
		else 
		{
			$filter_note = '';
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
		
		if ($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'date_added';
		}

		if ($this->input->get('order')) 
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
		
		if ($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		} 
		else 
		{
			$page = 1;
		}
		
		$filter_data = array(
			'filter_id'             => $filter_id,
			'filter_tracking'       => $filter_tracking,
			'filter_note'           => $filter_note,
			'filter_status'         => $filter_status,			
			'filter_date_added'     => $filter_date_added,
			'sort'                  => $sort,
			'order'                 => $order,
			'start'                 => ($page - 1) * $limit,
			'limit'                 => $limit
		);
		
		$checkins = $this->checkin_model->get_checkins($filter_data);	
		$checkin_total = $this->checkin_model->get_checkin_total($filter_data);
		
		$data['checkins'] = array();
		
		if($checkins) 
		{
			foreach($checkins as $checkin)
			{	
				$data['checkins'][] = array(
					'id'             => $checkin['id'],
					'tracking'       => $checkin['tracking'],
					'note'           => $checkin['note'],
					'status'         => $checkin['status'],				
					'date_added'     => $checkin['date_added']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_note')) 
		{
			$url .= '&filter_note=' . $this->input->get('filter_note');
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
	
		$this->pagination->total  = $checkin_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'check/checkin?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($checkin_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($checkin_total - $limit)) ? $checkin_total : ((($page - 1) * $limit) + $limit), $checkin_total, ceil($checkin_total / $limit));

		$url = '';
		
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_note')) 
		{
			$url .= '&filter_note=' . $this->input->get('filter_note');
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
		
		if ($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_id']            = base_url().'check/checkin?sort=id'.$url;
		$data['sort_tracking']  	= base_url().'check/checkin?sort=tracking'.$url;
		$data['sort_note']          = base_url().'check/checkin?sort=note'.$url;
		$data['sort_status']        = base_url().'check/checkin?sort=status'.$url;
		$data['sort_date_added']    = base_url().'check/checkin?sort=date_added'.$url;
	
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
		
		$data['filter_url'] = base_url() . 'check/checkin' . $url;
	
		$data['sort']   = $sort;
		$data['order']  = $order;
		$data['limit']  = $limit;
		
		$data['filter_id']           = $filter_id;
		$data['filter_tracking']     = $filter_tracking;
		$data['filter_note']         = $filter_note;
		$data['filter_status']       = $filter_status;
		$data['filter_date_added']   = $filter_date_added;
				
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
	
		$this->load->view('check/checkin_list', $data);
	}
	
	public function add()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('check/checkin');
		
		$this->load->library('form_validation');

		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
		
		$this->header->add_style(base_url().'assets/css/app/check/checkin_add.css');
		$this->header->add_style(base_url().'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url().'assets/js/plugins/jquery-ui/jquery-ui.min.js');

		$this->header->set_title($this->lang->line('text_checkin_add'));
				
		$this->form_validation->set_rules('checkin_product[]', $this->lang->line('text_checkin_product'), 'required');

		$data = array(
			'tracking'   => $this->input->post('tracking'),
			'note'       => $this->input->post('note')
		);
		
		$checkin_products = $this->input->post('checkin_product');
			
		$data['checkin_products'] = array();
			
		if($checkin_products)
		{	
			foreach($checkin_products as $checkin_product) 
			{
				$product_id = $checkin_product['product_id'];
				
				$product_data = $this->product_model->get_product($product_id);	
				
				$data['checkin_products'][] = array(
					'product_id'     => $product_id,
					'name'           => $product_data['name'],
					'upc'            => $product_data['upc'],
					'sku'            => $product_data['sku'],
					'quantity_draft' => $checkin_product['quantity_draft']
				);
			}
		}

		if($this->form_validation->run() == true)
		{
			$this->checkin_model->add_checkin($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkin_add_success'));
			
			redirect(base_url() . 'check/checkin', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_add', $data);
	}
	
	public function edit()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('check/checkin');
		
		$this->load->library('form_validation');

		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
		
		$this->header->add_style(base_url().'assets/css/app/check/checkin_add.css');
		$this->header->add_style(base_url().'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url().'assets/js/plugins/jquery-ui/jquery-ui.min.js');

		$this->header->set_title($this->lang->line('text_checkin_edit'));
		
		$id = $this->input->get('id');
		
		$this->form_validation->set_rules('checkin_product[]', $this->lang->line('text_product'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'tracking'          => $this->input->post('tracking'),
				'note'              => $this->input->post('note'),
				'checkin_products'  => $this->input->post('checkin_product')
			);
				
			$this->checkin_model->edit_checkin($id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkin_edit_success'));
			
			redirect(base_url() . 'check/checkin', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['id']             = $this->input->get('id');
			$data['tracking']       = $this->input->post('tracking');
			$data['note']           = $this->input->post('note');
		
			$checkin_products = $this->input->post('checkin_product');
			
			$data['checkin_products'] = array();
			
			if($checkin_products)
		    {	
				foreach($checkin_products as $checkin_product) 
				{
					$product_data = $this->product_model->get_product($checkin_product['product_id']);	
					
					$data['checkin_products'][] = array(
						'product_id'     => $checkin_product['product_id'],
						'name'           => $product_data['name'],
						'upc'            => $product_data['upc'],
						'sku'            => $product_data['sku'],
						'quantity'       => $checkin_product['quantity'],
						'quantity_draft' => $checkin_product['quantity_draft']
					);
				}
			}
		}
		else
		{
			$checkin = $this->checkin_model->get_checkin($id);	
		
			$data['tracking']      = $checkin['tracking'];
			$data['note']          = $checkin['note'];

			$data['checkin_products'] = array();
			
			$checkin_products = $this->checkin_model->get_checkin_products($id);	
			
			foreach($checkin_products as $checkin_product) 
			{
				$data['checkin_products'][] = array(
					'product_id'     => $checkin_product['product_id'],
					'name'           => $checkin_product['name'],
					'upc'            => $checkin_product['upc'],
					'sku'            => $checkin_product['sku'],
					'quantity'       => $checkin_product['quantity'],
					'quantity_draft' => $checkin_product['quantity_draft']
				);
			}
		}
			
		$data['checkin_edit_title'] = sprintf($this->lang->line('text_checkin_edit_title'), $id);
			
		$data['id'] = $this->input->get('id');	
							
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_edit', $data);
	}
	
	public function view()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
		
		$this->header->add_style(base_url().'assets/css/app/check/checkin_view.css');

		$this->header->set_title($this->lang->line('text_checkin_view'));
		
		$id = $this->input->get('id');
		
		$checkin = $this->checkin_model->get_checkin($id);	
	
		$data['tracking']      = $checkin['tracking'];
		$data['note']          = $checkin['note'];
		$data['status']        = $checkin['status'];

		$data['checkin_products'] = array();
		
		$checkin_products = $this->checkin_model->get_checkin_products($id);	
		
		foreach($checkin_products as $checkin_product) {
			$data['checkin_products'][] = array(
				'product_id'     => $checkin_product['product_id'],
				'product_name'   => $checkin_product['product_name'],
				'upc'            => $checkin_product['upc'],
				'sku'            => $checkin_product['sku'],
				'quantity' 		 => $checkin_product['quantity'],
				'quantity_draft' => $checkin_product['quantity_draft'],
				'location'       => $checkin_product['location_name']
			);
		}
		
		$data['checkin_fees'] = array();
		
		$checkin_fees_data = $this->checkin_model->get_checkin_fees($id);	
		
		if($checkin_fees_data) 
		{
			foreach($checkin_fees_data as $checkin_fee_data) {
				$data['checkin_fees'][] = array(
					'name'   => $checkin_fee_data['name'],
					'amount' => $checkin_fee_data['amount']
				);
			}
		}
		
		$data['id'] = $id;
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_view', $data);
	}
	
	public function delete()
	{
		if($this->input->get('checkin_id'))
		{
			$checkin_id = $this->input->get('checkin_id');
			
			$checkin = $this->checkin_model->get_checkin($checkin_id);

			if($checkin['status'] == 1)
			{
				$result = $this->checkin_model->delete_checkin($checkin_id);
				
				$outdata = array(
					'success'   => ($result)?true:false
				);
			}
			else
			{
				$outdata = array(
					'success'   => false
				);
			}
				
			echo json_encode($outdata);
		}
	}
}


