<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkin extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
	}
	
	function index()
	{	
		$data['success'] = $this->session->flashdata('success');
		
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
				$checkin_products = array();
				
				$checkin_products_data = $this->checkin_model->get_checkin_products($checkin['id']);	
				
				foreach($checkin_products_data as $checkin_product_data) {
					$checkin_products[] = array(
						'name'        => $checkin_product_data['name'],
						'quantity'    => $checkin_product_data['quantity'],
						'location'    => $checkin_product_data['location_name']
					);
				}
			
				$data['checkins'][] = array(
					'checkin_id'       => $checkin['id'],
					'tracking'         => $checkin['tracking'],
					'note'             => $checkin['note'],
					'status'           => $checkin['status'],			
					'date_added'       => $checkin['date_added'],
					'checkin_products' => $checkin_products
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
		
		$data['sort_id']            = base_url() . 'check/checkin?sort=id' . $url;
		$data['sort_tracking']  	= base_url() . 'check/checkin?sort=tracking' . $url;
		$data['sort_note']          = base_url() . 'check/checkin?sort=note' . $url;
		$data['sort_status']        = base_url() . 'check/checkin?sort=status' . $url;
		$data['sort_date_added']    = base_url() . 'check/checkin?sort=date_added' . $url;
	
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
				
		$this->load->view('common/header');
		$this->load->view('check/checkin_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add()
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		//$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_add_tracking');
		$this->form_validation->set_rules('tracking','dffdfdfda','regex_match[/[a-zA-Z]|\s/]');
		$this->form_validation->set_rules('checkin_product', $this->lang->line('text_product'), 'callback_validate_checkin_product');

		$data = array(
			'tracking'          => $this->input->post('tracking'),
			'status'            => $this->input->post('status'),
			'note'              => $this->input->post('note')
		);
		
		$checkin_products = $this->input->post('checkin_product');
			
		$data['checkin_products'] = array();
			
		if($checkin_products)
		{	
			foreach($checkin_products as $checkin_product) 
			{
				$product_id = $checkin_product['product_id'];
				
				$product_info = $this->product_model->get_product($product_id);	
				
				$data['checkin_products'][] = array(
					'product_id'     => $product_id,
					'name'           => $product_info['name'],
					'upc'            => $product_info['upc'],
					'sku'            => $product_info['sku'],
					'quantity'       => $checkin_product['quantity'],
					'location_id'    => $checkin_product['location_id'],
					'location_name'  => $checkin_product['location_name']
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
		
		$this->load->view('common/header');
		$this->load->view('check/checkin_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit()
	{
		$this->load->library('form_validation');
		
		$this->load->model('catalog/product_model');
		
		$checkin_id = $this->input->get('checkin_id');
		
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_edit_tracking');
		$this->form_validation->set_rules('checkin_product', $this->lang->line('text_product'), 'callback_validate_checkin_product');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'tracking'          => $this->input->post('tracking'),
				'status'            => $this->input->post('status'),
				'note'              => $this->input->post('note'),
				'checkin_products'  => $this->input->post('checkin_product')
			);
				
			$this->checkin_model->edit_checkin($checkin_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkin_edit_success'));
			
			redirect(base_url() . 'check/checkin', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['checkin_id']     = $this->input->get('checkin_id');
			$data['tracking']       = $this->input->post('tracking');
			$data['note']           = $this->input->post('note');
			$data['status']         = $this->input->post('status');
			$data['checkin_fees']   = $this->input->post('checkin_fee');
		
			$checkin_products = $this->input->post('checkin_product');
			
			$data['checkin_products'] = array();
			
			if($checkin_products)
		    {	
				foreach($checkin_products as $checkin_product) 
				{
					$product_info = $this->product_model->get_product($checkin_product['product_id']);	
					
					$data['checkin_products'][] = array(
						'product_id'     => $checkin_product['product_id'],
						'name'           => $product_info['name'],
						'upc'            => $product_info['upc'],
						'sku'            => $product_info['sku'],
						'quantity'       => $checkin_product['quantity'],
						'location_id'    => $checkin_product['location_id'],
						'location_name'  => $checkin_product['location_name']
					);
				}
			}	
		}
		else
		{
			$checkin = $this->checkin_model->get_checkin($checkin_id);	
		
			$data['tracking']      = $checkin['tracking'];
			$data['note']          = $checkin['note'];
			$data['status']        = $checkin['status'];

			$data['checkin_products'] = array();
			
			$checkin_products = $this->checkin_model->get_checkin_products($checkin_id);	
			
			foreach($checkin_products as $checkin_product) {
				$data['checkin_products'][] = array(
					'product_id'     => $checkin_product['product_id'],
					'name'           => $checkin_product['name'],
					'upc'            => $checkin_product['upc'],
					'sku'            => $checkin_product['sku'],
					'quantity'       => $checkin_product['quantity'],
					'location_id'    => $checkin_product['location_id'],
					'location_name'  => $checkin_product['location_name']
				);
			}
		}
			
		$data['checkin_edit_title'] = sprintf($this->lang->line('text_checkin_edit_title'), $checkin_id);
			
		$data['checkin_id'] = $this->input->get('checkin_id');	
							
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('check/checkin_edit', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('checkin_id'))
		{
			$checkin_id = $this->input->get('checkin_id');
			
			$this->checkin_model->delete_checkin($checkin_id);

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
			$result = $this->checkin_model->get_checkin_by_tracking($tracking);
		
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
			$result = $this->checkin_model->get_checkin_by_tracking($tracking);
		
			if($result)
			{
				$checkin_id = $this->input->get('checkin_id');
				
				if($checkin_id != $result['id'])
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

	function validate_checkin_product($checkin_products)
	{
		$this->load->model('catalog/product_model');
	
		if($this->input->post('checkin_product'))
		{
			$validated = true;
			
			$message = '';
			
			$checkin_products = $this->input->post('checkin_product');
			
			foreach($checkin_products as $checkin_product)
			{
				$product_id   = $checkin_product['product_id'];
				$quantity     = $checkin_product['quantity'];
				$location_id  = $checkin_product['location_id'];
				
				if(!preg_match("/^[1-9]\d*$/", $quantity))
				{
					$product = $this->product_model->get_product($product_id);
					
					$message .= sprintf($this->lang->line('error_checkin_product_quantity_format'), $product['name']);
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
				
				if(empty($location_id))
				{	
					$product = $this->product_model->get_product($product_id);
								
					$message .= sprintf($this->lang->line('error_checkin_product_location_required'), $product['name']);
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkin_product', $message);
			}
			
			return $validated;
		}
		else
		{
			$this->form_validation->set_message('validate_checkin_product', $this->lang->line('error_checkin_product_required'));
			
			return false;
		}	
	}
}


