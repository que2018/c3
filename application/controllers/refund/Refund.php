<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Refund extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('refund/refund');
		
		$this->load->model('refund/refund_model');
	}
	
	function index()
	{	
		$data['success'] = $this->session->flashdata('success');
		
		if($this->input->get('filter_refund_id'))
		{
			$filter_refund_id = $this->input->get('filter_refund_id');
		} 
		else 
		{
			$filter_refund_id = '';
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
			'filter_refund_id'      => $filter_refund_id,
			'filter_tracking'       => $filter_tracking,
			'filter_note'           => $filter_note,
			'filter_status'         => $filter_status,			
			'filter_date_added'     => $filter_date_added,
			'sort'                  => $sort,
			'order'                 => $order,
			'start'                 => ($page - 1) * $limit,
			'limit'                 => $limit
		);
		
		$refunds = $this->refund_model->get_refunds($filter_data);	
		$refund_total = $this->refund_model->get_refund_total($filter_data);
		
		$data['refunds'] = array();
		
		if($refunds) 
		{
			foreach($refunds as $refund)
			{	
				$refund_products = array();
				
				$refund_products_data = $this->refund_model->get_refund_products($refund['refund_id']);	
				
				foreach($refund_products_data as $refund_product_data) {
					$refund_products[] = array(
						'name'        => $refund_product_data['name'],
						'quantity'    => $refund_product_data['quantity'],
						'location'    => $refund_product_data['location_name']
					);
				}
			
				$data['refunds'][] = array(
					'refund_id'        => $refund['refund_id'],
					'tracking'         => $refund['tracking'],
					'note'             => $refund['note'],
					'status'           => $refund['status'],			
					'date_added'       => $refund['date_added'],
					'refund_products'  => $refund_products
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
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
	
		$this->pagination->total  = $refund_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() .'refund/refund?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($refund_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($refund_total - $limit)) ? $refund_total : ((($page - 1) * $limit) + $limit), $refund_total, ceil($refund_total / $limit));

		$url = '';
		
		if($this->input->get('filter_refund_id')) 
		{
			$url .= '&filter_refund_id=' . $this->input->get('filter_refund_id');
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
		
		$data['sort_id']            = base_url() . 'refund/refund?sort=refund_id' . $url;
		$data['sort_tracking']  	= base_url() . 'refund/refund?sort=tracking' . $url;
		$data['sort_note']          = base_url() . 'refund/refund?sort=note' . $url;
		$data['sort_status']        = base_url() . 'refund/refund?sort=status' . $url;
		$data['sort_date_added']    = base_url() . 'refund/refund?sort=date_added' . $url;
	
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
		
		$data['filter_url'] = base_url() . 'refund/refund' . $url;
	
		$data['sort']   = $sort;
		$data['order']  = $order;
		$data['limit']  = $limit;
		
		$data['filter_refund_id']    = $filter_refund_id;
		$data['filter_tracking']     = $filter_tracking;
		$data['filter_note']         = $filter_note;
		$data['filter_status']       = $filter_status;
		$data['filter_date_added']   = $filter_date_added;
				
		$this->load->view('common/header');
		$this->load->view('refund/refund_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add()
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_add_tracking');
		$this->form_validation->set_rules('refund_product', $this->lang->line('text_product'), 'callback_validate_refund_product');

		$data = array(
			'tracking'     => $this->input->post('tracking'),
			'status'       => $this->input->post('status'),
			'note'         => $this->input->post('note')
		);
		
		$refund_products = $this->input->post('refund_product');
			
		$data['refund_products'] = array();
			
		if($refund_products)
		{	
			foreach($refund_products as $refund_product) 
			{
				$product_id = $refund_product['product_id'];
				
				$product_data = $this->product_model->get_product($product_id);	
				
				$data['refund_products'][] = array(
					'product_id'     => $product_id,
					'name'           => $product_data['name'],
					'upc'            => $product_data['upc'],
					'sku'            => $product_data['sku'],
					'quantity'       => $refund_product['quantity'],
					'location_id'    => $refund_product['location_id'],
					'location_name'  => $refund_product['location_name']
				);
			}
		}

		if($this->form_validation->run() == true)
		{
			$this->refund_model->add_refund($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_return_add_success'));
			
			redirect(base_url() . 'refund/refund', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('refund/refund_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit()
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		
		$refund_id = $this->input->get('refund_id');
		
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_edit_tracking');
		$this->form_validation->set_rules('refund_product', $this->lang->line('text_product'), 'callback_validate_refund_product');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'tracking'         => $this->input->post('tracking'),
				'status'           => $this->input->post('status'),
				'note'             => $this->input->post('note'),
				'refund_products'  => $this->input->post('refund_product'),
				'refund_fees'      => $this->input->post('refund_fee')
			);
				
			$this->refund_model->edit_refund($refund_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_return_edit_success'));
			
			redirect(base_url() . 'refund/refund', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['refund_id']     = $this->input->get('refund_id');
			$data['tracking']      = $this->input->post('tracking');
			$data['note']          = $this->input->post('note');
			$data['status']        = $this->input->post('status');
		
			$refund_products = $this->input->post('refund_product');
			
			$data['refund_products'] = array();
			
			if($refund_products)
		    {	
				foreach($refund_products as $refund_product) 
				{
					$product_info = $this->product_model->get_product($refund_product['product_id']);	
					
					$data['refund_products'][] = array(
						'product_id'     => $refund_product['product_id'],
						'name'           => $product_info['name'],
						'upc'            => $product_info['upc'],
						'sku'            => $product_info['sku'],
						'quantity'       => $refund_product['quantity'],
						'location_id'    => $refund_product['location_id'],
						'location_name'  => $refund_product['location_name']
					);
				}
			}	
		}
		else
		{
			$refund = $this->refund_model->get_refund($refund_id);	
		
			$data['tracking']      = $refund['tracking'];
			$data['note']          = $refund['note'];
			$data['status']        = $refund['status'];

			$data['refund_products'] = array();
			
			$refund_products = $this->refund_model->get_refund_products($refund_id);	
			
			foreach($refund_products as $refund_product) {
				$data['refund_products'][] = array(
					'product_id'     => $refund_product['product_id'],
					'name'           => $refund_product['name'],
					'upc'            => $refund_product['upc'],
					'sku'            => $refund_product['sku'],
					'quantity'       => $refund_product['quantity'],
					'location_id'    => $refund_product['location_id'],
					'location_name'  => $refund_product['location_name']
				);
			}
		}
			
		$data['refund_edit_title'] = sprintf($this->lang->line('text_return_edit_title'), $refund_id);
			
		$data['refund_id'] = $this->input->get('refund_id');	
							
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('refund/refund_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('refund_id'))
		{
			$refund_id = $this->input->get('refund_id');
			
			$this->refund_model->delete_refund($refund_id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}
	
	function validate_add_tracking($tracking)
	{
		if($tracking)
		{
			$result = $this->refund_model->get_refund_by_tracking($tracking);
		
			if($result)
			{
				$this->form_validation->set_message('validate_add_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
						
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}
	
	function validate_edit_tracking($tracking)
	{
		if($tracking)
		{
			$result = $this->refund_model->get_refund_by_tracking($tracking);
		
			if($result)
			{
				$refund_id = $this->input->get('refund_id');
				
				if($refund_id != $result['refund_id'])
				{
					$this->form_validation->set_message('validate_edit_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
					
					return false;
				}
				else
				{
					return true;
				}
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}
	

	function validate_refund_product($refund_products)
	{
		$this->load->model('catalog/product_model');
	
		if($this->input->post('refund_product'))
		{
			$refund_products = $this->input->post('refund_product');
			
			$validated = true;
			
			$error_message = '';
			
			foreach($refund_products as $refund_product)
			{
				$product_id   = $refund_product['product_id'];
				$location_id  = $refund_product['location_id'];
				$quantity     = $refund_product['quantity'];
				
				$product_info = $this->product_model->get_product($product_id);
				
				if(!$quantity)
				{					
					$error_message .= sprintf($this->lang->line('error_return_product_quantity_required'), $product_info['name']);
					$error_message .= '<br>';
					
					if($validated)
						$validated = false;
				}
				
				if(!$location_id)
				{
					$error_message .= sprintf($this->lang->line('error_return_product_location_required'), $product_info['name']);
					$error_message .= '<br>';
					
					if($validated)
						$validated = false;					
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_refund_product', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			$this->form_validation->set_message('validate_refund_product', $this->lang->line('error_return_product_required'));
			
			return false;	
		}	
	}
}


