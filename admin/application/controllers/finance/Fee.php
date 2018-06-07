<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Fee extends MX_Controller
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('finance/fee');
		
		$this->header->add_style(base_url() . 'assets/css/app/finance/fee_list.css');
	
		$this->header->set_title($this->lang->line('text_fee'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('finance/fee_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('finance/fee_list_table', $data);
	}
	
	public function get_list()
	{	
		$this->load->library('currency');
	
		$this->lang->load('finance/fee');
	
		$this->load->model('finance/fee_model');
		
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_amount'))
		{
			$filter_amount = $this->input->get('filter_amount');
		} 
		else 
		{
			$filter_amount = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'name';
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
			'filter_name'    => $filter_name,
			'filter_amount'  => $filter_amount,
			'sort'           => $sort,
			'order'          => $order,
			'start'          => ($page - 1) * $limit,
			'limit'          => $limit
		);
		
		$fees = $this->fee_model->get_fees($filter_data);
		
		$fee_total = $this->fee_model->get_fee_total($filter_data);
		
		$data['fees'] = array();
		
		if($fees) 
		{
			foreach($fees as $fee)
			{	
				$data['fees'][] = array(
					'fee_id'     => $fee['id'],
					'name'       => $fee['name'],
					'amount'     => $this->currency->format($fee['amount'])
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
	
		if($this->input->get('filter_amount')) 
		{
			$url .= '&filter_amount=' . $this->input->get('filter_amount');
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
	
		$this->pagination->total  = $fee_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'finance/fee?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($fee_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($fee_total - $limit)) ? $fee_total : ((($page - 1) * $limit) + $limit), $fee_total, ceil($fee_total / $limit));

		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_amount')) 
		{
			$url .= '&filter_amount=' . $this->input->get('filter_amount');
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
		
		$data['sort_name']   = base_url().'finance/fee?sort=name' . $url;
		$data['sort_amount'] = base_url().'finance/fee?sort=amount' . $url;
		
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
		
		$data['filter_url'] = base_url().'finance/fee'.$url;
		
		$data['reload'] = base_url() . 'finance/fee/reload' . $url;

		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']   = $filter_name;
		$data['filter_amount'] = $filter_amount;
		
		return $data;
	}
	
	public function add()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('finance/fee');
	
		$this->load->model('finance/fee_model');
				
		$this->header->add_style(base_url(). 'assets/css/app/finance/fee_add.css');
		
		$this->header->set_title($this->lang->line('text_add_fee'));		
				
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('amount', $this->lang->line('text_amount'), 'required|regex_match[/^[+]?\d+([.]\d+)?$/]');
		
		$data = array(
			'name'      => $this->input->post('name'),
			'amount'    => $this->input->post('amount')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->fee_model->add_fee($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_fee_add_success'));
			
			redirect(base_url() . 'finance/fee', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('finance/fee_add', $data);
	}
	
	public function edit()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('finance/fee');
	
		$this->load->model('finance/fee_model');
				
		$this->header->add_style(base_url(). 'assets/css/app/finance/fee_edit.css');
		
		$this->header->set_title($this->lang->line('text_edit_fee'));
					
		$fee_id = $this->input->get('fee_id');
		
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('amount', $this->lang->line('text_amount'), 'required|regex_match[/^[+]?\d+([.]\d+)?$/]');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'      => $this->input->post('name'),
				'amount'    => $this->input->post('amount')
			);
				
			$this->fee_model->edit_fee($fee_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_fee_edit_success'));
			
			redirect(base_url() . 'finance/fee', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['name']     = $this->input->post('name');			
			$data['amount']   = $this->input->post('amount');	
		}
		else
		{
			$fee = $this->fee_model->get_fee($fee_id);	
			
			$data['name']     = $fee['name'];				
			$data['amount']   = $fee['amount'];	
		}
	
		$data['fee_id'] = $this->input->get('fee_id');	
				
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('finance/fee_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('finance/fee_model');
		
		if($this->input->get('fee_id'))
		{
			$fee_id = $this->input->get('fee_id');
			
			$result = $this->fee_model->delete_fee($fee_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


