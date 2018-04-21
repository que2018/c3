<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Recharge extends CI_Controller {

	public function index()
	{		
		$data = $this->get_list();
			
		$this->load->view('common/header');
		$this->load->view('finance/recharge_list', $data);
		$this->load->view('common/footer');
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('finance/recharge_list_table', $data);
	}
	
	protected function get_list()
	{	
		$this->load->library('currency');
		$this->load->library('form_validation');
	
		$this->lang->load('finance/recharge');
	
		$this->load->model('client/client_model');
		$this->load->model('finance/recharge_model');
		$this->load->model('extension/payment_model');

		if($this->input->get('filter_client_id'))
		{
			$filter_client_id = $this->input->get('filter_client_id');
		} 
		else 
		{
			$filter_client_id = '';
		}
		
		if($this->input->get('filter_payment_method'))
		{
			$filter_payment_method = $this->input->get('filter_payment_method');
		} 
		else 
		{
			$filter_payment_method = '';
		}
		
		if($this->input->get('filter_status'))
		{
			$filter_status = $this->input->get('filter_status');
		} 
		else 
		{
			$filter_status = '';
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
			'filter_client_id'       => $filter_client_id,
			'filter_payment_method'  => $filter_payment_method,
			'filter_status'          => $filter_status,
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
				//payment method
				$payment_code = $recharge['payment_method'];
				
				$payment_method = $this->payment_model->get_payment_method($payment_code);	

				$data['recharges'][] = array(
					'recharge_id'    => $recharge['id'],
					'client'         => $recharge['name'],
					'payment_method' => $payment_method['name'],
					'amount'         => $this->currency->format($recharge['amount']),
					'status'         => $recharge['status'],
					'date_added'     => $recharge['date_added']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
		if($this->input->get('filter_payment_method')) 
		{
			$url .= '&filter_payment_method=' . $this->input->get('filter_payment_method');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
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
		$this->pagination->url    = base_url() . 'finance/recharge?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($recharge_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($recharge_total - $limit)) ? $recharge_total : ((($page - 1) * $limit) + $limit), $recharge_total, ceil($recharge_total / $limit));

		$url = '';
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
		if($this->input->get('filter_payment_method')) 
		{
			$url .= '&filter_payment_method=' . $this->input->get('filter_payment_method');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
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
		
		$data['sort_client']     = base_url() . 'finance/recharge?sort=name' . $url;
		$data['sort_payment']    = base_url() . 'finance/recharge?sort=recharge.payment_method' . $url;
		$data['sort_amount']     = base_url() . 'finance/recharge?sort=recharge.amount' . $url;
		$data['sort_status']     = base_url() . 'finance/recharge?sort=recharge.status' . $url;
		$data['sort_date_added'] = base_url() . 'finance/recharge?sort=recharge.date_added' . $url;

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
		
		$data['reload'] = base_url() . 'finance/recharge/reload' . $url;

		$data['filter_url'] = base_url().'finance/recharge' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_client_id'] 	    = $filter_client_id;
		$data['filter_payment_method']  = $filter_payment_method;
		$data['filter_status'] 			= $filter_status;
		
		//client
		$data['clients'] = array();
		
		$clients = $this->client_model->get_clients();
		
		if($clients)
		{
			foreach($clients as $client)
			{	
				$data['clients'][] = array(
					'client_id'  => $client['id'],
					'name'       => $client['name']
				);	
			}
		}
		
		//payment method
		$data['payment_methods'] = array();

		$payment_methods = $this->payment_model->get_payment_methods();
				
		foreach($payment_methods as $payment_method) 
		{
			$data['payment_methods'][] = array(
				'code'  => $payment_method['code'],
				'name'  => $payment_method['name']
			);
		}
		
		return $data;
	}
	
	public function add()
	{
		$this->load->library('form_validation');
		
		$this->lang->load('finance/recharge');
		
		$this->load->model('client/client_model');
		$this->load->model('finance/recharge_model');
		$this->load->model('extension/payment_model');

		$this->form_validation->set_rules('client_id', $this->lang->line('text_client'), 'required');
		$this->form_validation->set_rules('payment_method', $this->lang->line('text_payment_method'), 'required');
		$this->form_validation->set_rules('amount', $this->lang->line('text_amount'), 'required');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		
		$data = array(
			'client_id'      => $this->input->post('client_id'),
			'payment_method' => $this->input->post('payment_method'),
			'amount'         => $this->input->post('amount'),
			'status'         => $this->input->post('status')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->recharge_model->add_recharge($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_recharge_add_success'));
			
			redirect(base_url() . 'finance/recharge', 'refresh');
		}
		
		//client
		$data['clients'] = array();
			
		$clients = $this->client_model->get_clients();
				
		if($clients)
		{
			foreach($clients as $client) 
			{
				$data['clients'][] = array(
					'client_id' => $client['id'],
					'name'      => $client['name']
				);
			}
		}
		
		//payment method
		$data['payment_methods'] = array();
		
		$payment_methods = $this->payment_model->get_payment_methods();
				
		foreach($payment_methods as $payment_method) 
		{
			$data['payment_methods'][] = array(
				'code'  => $payment_method['code'],
				'name'  => $payment_method['name']
			);
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('finance/recharge_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit()
	{
		$this->load->library('form_validation');
		
		$this->lang->load('finance/recharge');
		
		$this->load->model('client/client_model');
		$this->load->model('finance/recharge_model');
		$this->load->model('extension/payment_model');

		$recharge_id = $this->input->get('recharge_id');
		
		$this->form_validation->set_rules('payment_method', $this->lang->line('text_payment_method'), 'required');
		$this->form_validation->set_rules('amount', $this->lang->line('text_amount'), 'required');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'client_id'      => $this->input->post('client_id'),
				'payment_method' => $this->input->post('payment_method'),
				'amount'         => $this->input->post('amount'),
				'status'         => $this->input->post('status'),
			);
				
			$this->recharge_model->edit_recharge($recharge_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_recharge_edit_success'));
			
			redirect(base_url() . 'finance/recharge', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['client_id']       = $this->input->post('client_id');			
			$data['payment_method']  = $this->input->post('payment_method');			
			$data['amount']          = $this->input->post('amount');
			$data['status']          = $this->input->post('status');
				
			$client_id = $this->input->post('client_id');
		}
		else
		{
			$recharge = $this->recharge_model->get_recharge($recharge_id);	
			
			$data['client_id']       = $recharge['client_id'];
			$data['client_name']     = $recharge['client_name'];				
			$data['payment_method']  = $recharge['payment_method'];
			$data['amount']          = $recharge['amount'];
			$data['status']          = $recharge['status'];
			
			$client_id = $data['client_id'];
		}
		
		//client
		$client = $this->client_model->get_client($client_id);
		
		$data['client_name'] = $client['firstname']. ' ' .$client['lastname'];
		
		//payment method
		$data['payment_methods'] = array();
		
		$payment_methods = $this->payment_model->get_payment_methods();
				
		foreach($payment_methods as $payment_method) 
		{
			$data['payment_methods'][] = array(
				'code'  => $payment_method['code'],
				'name'  => $payment_method['name']
			);
		}
		
		$data['recharge_id'] = $this->input->get('recharge_id');	
				
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('finance/recharge_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{		
		$this->lang->load('finance/recharge');
		
		$this->load->model('finance/recharge_model');
		
		if($this->input->get('recharge_id'))
		{
			$recharge_id = $this->input->get('recharge_id');
			
			$result = $this->recharge_model->delete_recharge($recharge_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			echo json_encode($outdata);
		}
	}
}


