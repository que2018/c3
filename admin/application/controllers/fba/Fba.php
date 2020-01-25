<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('fba/fba');
		
		$this->header->add_style(base_url(). 'assets/css/app/fba/fba_list.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css');
	
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/moment.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js');

		$this->header->set_title($this->lang->line('text_fba'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('fba/fba_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('fba/fba_list_table', $data);
	}
	
	public function filter()
	{
		$data = $this->get_list();
			
		$this->load->view('fba/fba_list_filter', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('fba/fba');
		
		$this->load->model('fba/fba_model');
			
		if($this->input->get('filter_fba_id'))
		{
			$filter_fba_id = $this->input->get('filter_fba_id');
		} 
		else 
		{
			$filter_fba_id = '';
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
			'filter_fba_id'       => $filter_fba_id,
			'filter_tracking'     => $filter_tracking,			
			'filter_note'         => $filter_note,
			'filter_status'       => $filter_status,			
			'filter_date_added'   => $filter_date_added,
			'sort'                => $sort,
			'order'               => $order,
			'start'               => ($page - 1) * $limit,
			'limit'               => $limit
		);
		
		$fbas = $this->fba_model->get_fbas($filter_data);	
		
		$fba_total = $this->fba_model->get_fba_total($filter_data);
		
		$data['fbas'] = array();
		
		if($fbas) 
		{
			foreach($fbas as $fba)
			{	
				$enable_toggle = true;
			
				$fba_products = array();
				
				$fba_products_data = $this->fba_model->get_fba_products($fba['fba_id']);	
				
				foreach($fba_products_data as $fba_product_data) 
				{
					$fba_products[] = array(
						'reference_number' => $fba_product_data['reference_number'],
						'quantity'   	   => $fba_product_data['quantity'],
						'location'   	   => $fba_product_data['location_name']
					);
					
					if(!$fba_product_data['location_id'] && $enable_toggle) 
					{
						$enable_toggle = false;
					}
				}
			
				$data['fbas'][] = array(
					'fba_id'         => $fba['fba_id'],
					'tracking'       => $fba['tracking'],
					'note'           => $fba['note'],
					'status'         => $fba['status'],			
					'date_added'     => $fba['date_added'],
					'enable_toggle'  => $enable_toggle,
					'fba_products'   => $fba_products
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_fba_id')) 
		{
			$url .= '&filter_fba_id=' . $this->input->get('filter_fba_id');
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
	
		$this->pagination->total  = $fba_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'fba/fba?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($fba_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($fba_total - $limit)) ? $fba_total : ((($page - 1) * $limit) + $limit), $fba_total, ceil($fba_total / $limit));

		$url = '';
		
		if($this->input->get('filter_fba_id')) 
		{
			$url .= '&filter_fba_id=' . $this->input->get('filter_fba_id');
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
			
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['sort_id']           = base_url() . 'fba/fba?sort=id' . $url;
		$data['sort_tracking']     = base_url() . 'fba/fba?sort=tracking' . $url;
		$data['sort_note']         = base_url() . 'fba/fba?sort=note' . $url;
		$data['sort_status']       = base_url() . 'fba/fba?sort=status' . $url;
		$data['sort_date_added']   = base_url() . 'fba/fba?sort=date_added' . $url;
	
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
		
		$data['filter_url'] = base_url() . 'fba/fba/filter' . $url;
	
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page='.$this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
		
		if($this->input->get('filter_fba_id')) 
		{
			$url .= '&filter_fba_id=' . $this->input->get('filter_fba_id');
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
	
		$data['reload_url'] = base_url() . 'fba/fba/reload' . $url;

		$data['sort']   = $sort;
		$data['order']  = $order;
		$data['limit']  = $limit;
		
		$data['filter_fba_id']       = $filter_fba_id;
		$data['filter_tracking']     = $filter_tracking;
		$data['filter_note']         = $filter_note;
		$data['filter_status']       = $filter_status;
		$data['filter_date_added']   = $filter_date_added;
				
		return $data;
	}
	
	public function add()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fba/fba');
		
		$this->load->library('currency');
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('fba/fba_model');
		$this->load->model('client/client_model');
		$this->load->model('extension/fee_model');
		$this->load->model('catalog/product_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/fba/fba_add.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/jasny/jasny-bootstrap.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_fba_add'));

		$this->form_validation->set_rules('client_id', $this->lang->line('text_client'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_add_tracking');
		$this->form_validation->set_rules('fba_product', $this->lang->line('text_product'), 'callback_validate_fba_product');

		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$data = array(
				'client_id'    	=> $this->input->post('client_id'),
				'tracking'    	=> $this->input->post('tracking'),
				'status'      	=> $this->input->post('status'),
				'type'    	    => $this->input->post('type'),
				'street'       	=> $this->input->post('street'),
				'city'    	   	=> $this->input->post('city'),
				'state'    	   	=> $this->input->post('state'),
				'postcode'    	=> $this->input->post('postcode'),
				'fee_code'    	=> $this->input->post('fee_code'),
				'note'        	=> $this->input->post('note'),
			    'fba_products'  => $this->input->post('fba_product'),
			    'fba_files'   	=> $this->input->post('fba_file')
			);
		}
		else
		{
			$data = array(
				'tracking'       => '',
				'status'         => '',
				'type'    	     => '',
				'street'       	 => '',
				'city'    	   	 => '',
				'state'    	   	 => '',
				'postcode'    	 => '',
				'fee_code'       => $this->config->item('config_default_fba_fee'),
				'note'           => '',
			    'fba_products'   => array(),
				'fba_products'   => array()
			);
		}
		
		if($this->form_validation->run() == true)
		{
			$this->fba_model->add_fba($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_fba_add_success'));
			
			redirect(base_url() . 'fba/fba', 'refresh');
		}
		
		//clients
		$data['clients'] = array();
		
		$clients = $this->client_model->get_clients();
				
		if($clients)
		{
			foreach($clients as $client) 
			{
				$data['clients'][] = array(
					'id'    => $client['id'],
					'name'  => $client['name']
				);
			}
		}
		
		//fba fees
		$data['fba_fees'] = array();
		
		$fba_fees_data = $this->fee_model->get_fees('fba');
				
		foreach($fba_fees_data as $fba_fee_data) 
		{
			$data['fba_fees'][] = array(
				'code'  => $fba_fee_data['code'],
				'name'  => $fba_fee_data['name']
			);
		}
		
		//fba dest type
		$data['dest_types'] = [];
		
		$data['dest_types'][] = array(
			'type'  => 'ups',
			'name'  => $this->lang->line('text_ups')
		);
		
		$data['dest_types'][] = array(
			'type'  => 'fba_warehouse',
			'name'  => $this->lang->line('text_fba_warehouse')
		);
		
		$data['dest_types'][] = array(
			'type'  => 'personal_address',
			'name'  => $this->lang->line('text_personal_address')
		);
				
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('fba/fba_add', $data);
	}
	
	public function edit()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('fba/fba');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('fba/fba_model');
		$this->load->model('client/client_model');
		$this->load->model('extension/fee_model');
		$this->load->model('catalog/product_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/fba/fba_edit.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/jasny/jasny-bootstrap.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/dropzone/dropzone.js');		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_fba_edit'));	
		
		$fba_id = $this->input->get('fba_id');
		
		$this->form_validation->set_rules('client_id', $this->lang->line('text_client'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_edit_tracking');
		$this->form_validation->set_rules('fba_product', $this->lang->line('text_product'), 'callback_validate_fba_product');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'client_id'    	=> $this->input->post('client_id'),
				'tracking'    	=> $this->input->post('tracking'),
				'status'      	=> $this->input->post('status'),
				'type'    	    => $this->input->post('type'),
				'street'       	=> $this->input->post('street'),
				'city'    	   	=> $this->input->post('city'),
				'state'    	   	=> $this->input->post('state'),
				'postcode'    	=> $this->input->post('postcode'),
				'fee_code'    	=> $this->input->post('fee_code'),
				'note'        	=> $this->input->post('note'),
			    'fba_products'  => $this->input->post('fba_product'),
			    'fba_files'   	=> $this->input->post('fba_file')
			);
				
			$this->fba_model->edit_fba($fba_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_fba_edit_success'));
			
			redirect(base_url() . 'fba/fba', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['fba_id']     = $this->input->get('fba_id');
			$data['client_id']  = $this->input->post('client_id');
			$data['tracking']   = $this->input->post('tracking');
			$data['status']     = $this->input->post('status');
			$data['type']       = $this->input->post('type');
			$data['street']     = $this->input->post('street');
			$data['city']       = $this->input->post('city');
			$data['state']      = $this->input->post('state');
			$data['postcode']   = $this->input->post('postcode');
			$data['fee_code']   = $this->input->post('fee_code');
			$data['note']       = $this->input->post('note');
			$data['fba_fees']   = $this->input->post('fba_fee');
			$data['fba_files']  = $this->input->post('fba_file');
		
			$fba_products = $this->input->post('fba_product');
			
			$data['fba_products'] = array();
			
			if($fba_products)
		    {	
				foreach($fba_products as $fba_product) 
				{
					$data['fba_products'][] = array(
						'fba_reference_number'  => $fba_product['fba_reference_number'],
						'reference_number'      => $fba_product['reference_number'],
						'cbm'       			=> $fba_product['cbm'],
						'quantity' 				=> $fba_product['quantity'],
						'location_name'  		=> $fba_product['location_name'],
						'location_id'  		    => $fba_product['location_id'],
						'note'  				=> $fba_product['note']
					);
				}
			}	
		}
		else
		{
			$fba = $this->fba_model->get_fba($fba_id);	
		
			$data['client_id']  = $fba['client_id'];
			$data['tracking']   = $fba['tracking'];
			$data['status']     = $fba['status'];
			$data['type']       = $fba['type'];
			$data['street']     = $fba['street'];
			$data['city']       = $fba['city'];
			$data['state']      = $fba['state'];
			$data['postcode']   = $fba['postcode'];
			$data['fee_code']   = $fba['fee_code'];
			$data['note']       = $fba['note'];

			$data['fba_products'] = array();
			
			$fba_products = $this->fba_model->get_fba_products($fba_id);	
			
			foreach($fba_products as $fba_product) 
			{
				$data['fba_products'][] = array(
					'fba_reference_number'  => $fba_product['fba_reference_number'],
					'reference_number'      => $fba_product['reference_number'],
					'cbm'       			=> $fba_product['cbm'],
					'quantity' 				=> $fba_product['quantity'],
					'location_name'  		=> $fba_product['location_name'],
					'location_id'  		    => $fba_product['location_id'],
					'note'  				=> $fba_product['note']
				);
			}
			
			//fba file
			$data['fba_files'] = array();
			
			$fba_files = $this->fba_model->get_fba_files($fba_id);
			
			if($fba_files)
			{
				foreach($fba_files as $fba_file)
				{					
					if(is_file(FILEPATH . $fba_file['path'])) 
					{
						$data['fba_files'][] = array(
							'name'  => basename($fba_file['path']),
							'path'  => $fba_file['path'],
							'url'   => $this->config->item('media_url') . '/file/' . $fba_file['path']
						);
					}
				}
			}
		}
		
		//clients
		$data['clients'] = array();
		
		$clients = $this->client_model->get_clients();
				
		if($clients)
		{
			foreach($clients as $client) 
			{
				$data['clients'][] = array(
					'id'    => $client['id'],
					'name'  => $client['name']
				);
			}
		}
		
		//fba fees
		$data['fba_fees'] = array();
		
		$fba_fees_data = $this->fee_model->get_fees('fba');
				
		foreach($fba_fees_data as $fba_fee_data) 
		{
			$data['fba_fees'][] = array(
				'code'  => $fba_fee_data['code'],
				'name'  => $fba_fee_data['name']
			);
		}
		
		//fba dest type
		$data['dest_types'] = [];
		
		$data['dest_types'][] = array(
			'type'  => 'ups',
			'name'  => $this->lang->line('text_ups')
		);
		
		$data['dest_types'][] = array(
			'type'  => 'fba_warehouse',
			'name'  => $this->lang->line('text_fba_warehouse')
		);
		
		$data['dest_types'][] = array(
			'type'  => 'personal_address',
			'name'  => $this->lang->line('text_personal_address')
		);
		
		$data['fba_id'] = $fba_id;		
		
		$data['fba_edit_title'] = sprintf($this->lang->line('text_fba_edit_title'), $fba_id);
	
		$data['error'] = validation_errors();	
												
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('fba/fba_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('fba/fba_model');
		
		if($this->input->get('fba_id'))
		{
			$fba_id = $this->input->get('fba_id');
			
			$result = $this->fba_model->delete_fba($fba_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function validate_add_tracking($tracking)
	{
		$this->lang->load('fba/fba');
		
		$this->load->model('fba/fba_model');

		if($tracking)
		{
			$result = $this->fba_model->get_fba_by_tracking($tracking);
		
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
			$this->form_validation->set_message('validate_add_tracking', $this->lang->line('error_tracking_is_empty'));

			return false;
		}
	}
	
	public function validate_edit_tracking($tracking)
	{
		$this->lang->load('fba/fba');
		
		$this->load->model('fba/fba_model');

		file_put_contents("log.txt", $tracking);

		if($tracking)
		{
			$result = $this->fba_model->get_fba_by_tracking($tracking);
		
			if($result)
			{
				$fba_id = $this->input->get('fba_id');
				
				if($fba_id != $result['fba_id'])
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
			$this->form_validation->set_message('validate_edit_tracking', $this->lang->line('error_tracking_is_empty'));
			
			return false;
		}
	}

	public function validate_fba_product()
	{	
		$this->lang->load('fba/fba');
		
		$this->load->model('fba/fba_model');
		
		if($this->input->post('fba_product'))
		{
			$validated = true;
			
			$message = '';
			
			$fba_products = $this->input->post('fba_product');
			
			foreach($fba_products as $i => $fba_product)
			{
				$fba_reference_number = $fba_product['fba_reference_number'];
				$reference_number     = $fba_product['reference_number'];
				$cbm  				  = $fba_product['cbm'];
				$quantity             = $fba_product['quantity'];
				$location_id          = $fba_product['location_id'];
				
				if(empty($fba_reference_number))
				{		
					$message .= sprintf($this->lang->line('error_fba_product_fba_reference_number_required'), ($i+1));
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
				
				if(empty($reference_number))
				{		
					$message .= sprintf($this->lang->line('error_fba_product_reference_number_required'), ($i+1));
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
				
				if(!preg_match("/^[1-9]\d*$/", $cbm))
				{					
					$message .= sprintf($this->lang->line('error_fba_product_cbm_format'), ($i+1));
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}

				if(!preg_match("/^[1-9]\d*$/", $quantity))
				{
					$message .= sprintf($this->lang->line('error_fba_product_quantity_format'), ($i+1));
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
				
				if(empty($location_id))
				{			
					$message .= sprintf($this->lang->line('error_fba_product_location_required'), ($i+1));
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_fba_product', $message);
				
				return false;
			}			
		}
		else
		{
			$this->form_validation->set_message('validate_fba_product', $this->lang->line('error_fba_product_required'));
			
			return false;
		}	
		
		return true;
	}
}


