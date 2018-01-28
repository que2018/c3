<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Fee extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('finance/fee');
		
		$this->load->model('finance/fee_model');
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
					'id'          => $fee['id'],
					'name'        => $fee['name'],
					'amount'      => $fee['amount']
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
		$this->pagination->url    = base_url().'finance/fee?page={page}'.$url;
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
		
		$data['sort_name']      = base_url().'finance/fee?sort=name' . $url;
		$data['sort_amount']    = base_url().'finance/fee?sort=amount' . $url;
		
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
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name'] 	  = $filter_name;
		$data['filter_amount'] 	  = $filter_amount;
		
		$this->load->view('common/header');
		$this->load->view('finance/fee_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('amount', $this->lang->line('text_amount'), 'required');
		
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
		
		$this->load->view('common/header');
		$this->load->view('finance/fee_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit()
	{
		$this->load->library('form_validation');
		
		$id = $this->input->get('id');
		
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('amount', $this->lang->line('text_amount'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'name'      => $this->input->post('name'),
				'amount'    => $this->input->post('amount')
			);
				
			$this->fee_model->edit_fee($id, $data);
			
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
			$fee = $this->fee_model->get_fee($id);	
			
			$data['name']     = $fee['name'];				
			$data['amount']   = $fee['amount'];	
		}
	
		$data['id'] = $this->input->get('id');	
				
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('finance/fee_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('id'))
		{
			$id = $this->input->get('id');
			
			$this->fee_model->delete_fee($id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}
}


