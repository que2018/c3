<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store extends MX_Controller
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('store/store');
		
		$this->header->add_style(base_url(). 'assets/css/app/store/store_list.css');
	
		$this->header->set_title($this->lang->line('text_store'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('store/store_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('store/store_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('store/store');
		
		$this->load->model('store/store_model');
				                   	
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_platform'))
		{
			$filter_platform = $this->input->get('filter_platform');
		} 
		else 
		{
			$filter_platform = '';
		}
		
		if($this->input->get('filter_client'))
		{
			$filter_client = $this->input->get('filter_client');
		} 
		else 
		{
			$filter_client = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'stores.date_added';
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
			'filter_name'       => $filter_name,
			'filter_platform'   => $filter_platform,
			'filter_client'     => $filter_client,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$stores = $this->store_model->get_stores($filter_data);	
		
		$store_total = $this->store_model->get_store_total($filter_data);
		
		$data['stores'] = array();
		
		if($stores) 
		{
			foreach($stores as $store)
			{	
				$this->lang->load('platform/' . $store['platform']);
			
				$data['stores'][] = array(
					'store_id'    => $store['id'],
					'name'        => $store['name'],
					'platform'    => $this->lang->line('text_title'),
					'client'      => $store['client']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
		}
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
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
	
		$this->pagination->total  = $store_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'store/store?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($store_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($store_total - $limit)) ? $store_total : ((($page - 1) * $limit) + $limit), $store_total, ceil($store_total / $limit));

		$url = '';
				
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
		}
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
		}
		
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['sort_name']      = base_url() . 'store/store?sort=store.name' . $url;
		$data['sort_platform']  = base_url() . 'store/store?sort=store.platform' . $url;
		$data['sort_client']    = base_url().  'store/store?sort=client' . $url;
		
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
				
		$data['filter_url'] = base_url() . 'store/store' . $url;
		
		$url = '';
		
		if ($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page='.$this->input->get('pages');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
		}
		
		if($this->input->get('filter_client')) 
		{
			$url .= '&filter_client=' . $this->input->get('filter_client');
		}
		
		$data['reload_url'] = base_url() . 'store/store/reload' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']      = $filter_name;
		$data['filter_platform']  = $filter_platform;
		$data['filter_client']    = $filter_client;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('store/store');
				
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('extension/extension_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/store/store_add.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
				
		$this->header->set_title($this->lang->line('text_store_add'));
			
		$this->form_validation->set_rules('platform', $this->lang->line('text_platform'), 'required');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('default_sale_status_id', $this->lang->line('text_default_sale_status_id'), 'required');
		$this->form_validation->set_rules('default_sale_shipping_provider', $this->lang->line('text_default_sale_shipping_provider'), 'required');
		$this->form_validation->set_rules('default_sale_shipping_service', $this->lang->line('text_default_sale_shipping_service'), 'required');
		$this->form_validation->set_rules('auto_download', $this->lang->line('text_auto_upload'), 'required');
		$this->form_validation->set_rules('auto_upload', $this->lang->line('text_auto_upload'), 'required');
	
		if($this->input->server('REQUEST_METHOD') == 'POST')
		{
			$setting = $this->input->post('setting');

			$data = array(
				'client_id'               	      => $this->input->post('client_id'),
				'client_name'             		  => $this->input->post('client_name'),
				'name'           		  		  => $this->input->post('name'),
				'platform'       		          => $this->input->post('platform'),
				'setting'        		  		  => (isset($setting))?$setting:'',
				'default_sale_status_id'  		  => $this->input->post('default_sale_status_id'),
				'default_sale_shipping_provider'  => $this->input->post('default_sale_shipping_provider'),
				'default_sale_shipping_service'   => $this->input->post('default_sale_shipping_service'),
				'auto_download'           		  => $this->input->post('auto_download'),
				'auto_upload'             		  => $this->input->post('auto_upload')
			);
		}
		else 
		{
			$data = array(
				'client_id'               	      => '',
				'client_name'             		  => '',
				'name'           		  		  => '',
				'platform'       		          => '',
				'setting'        		  		  => '',
				'default_sale_status_id'  		  => '',
				'default_sale_shipping_provider'  => $this->config->item('config_default_order_shipping_provider'),
				'default_sale_shipping_service'   => $this->config->item('config_default_order_shipping_service'),
				'auto_download'           		  => 0,
				'auto_upload'             		  => 0
			);
		}
	
		if($this->form_validation->run() == true)
		{
			$this->store_model->add_store($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_store_add_success'));
			
			redirect(base_url() . 'store/store', 'refresh');
		}
		
		//client
		$clients = $this->client_model->get_clients();
	
		$data['clients'] = array();
		
		foreach($clients as $client) 
		{
			$data['clients'][] = array(
				'client_id'  => $client['id'],
				'name'       => $client['name']
			);
		}
		
		//platform
		$platforms = $this->extension_model->get_installed('platform');
	
		$data['platforms'] = array();
		
		foreach($platforms as $platform) 
		{
			$this->lang->load('platform/' . $platform);

			$data['platforms'][] = array(
				'code'       => $platform,
				'name'       => $this->lang->line('text_title')
			);
		}
		
		//shipping providers
		$shipping_providers_data = $this->shipping_model->get_shipping_providers();
				
		$data['shipping_providers'] = array();
		
		foreach($shipping_providers_data as $shipping_provider_data) 
		{
			$code = $shipping_provider_data['code'];
			
			if($this->config->item($code .'_status'))
			{
				$data['shipping_providers'][] = array(
					'code'     => $shipping_provider_data['code'],
					'name'     => $shipping_provider_data['name']
				);
			}
		}
		
		//shipping service
		$data['shipping_services'] = array();
		
		if($data['default_sale_shipping_provider'])
		{
			$shipping_provider = $data['default_sale_shipping_provider'];
			
			$shipping_services_data = $this->shipping_model->get_shipping_services($shipping_provider);
			
			foreach($shipping_services_data as $shipping_service_data)
			{
				$data['shipping_services'][] = array(
					'code'  => $shipping_service_data['code'],
					'name'  => $shipping_service_data['name']
				);
			}
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('store/store_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
	
		$this->form_validation->CI =& $this;
		
		$this->lang->load('store/store');
				
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('extension/extension_model');
	
		$this->header->add_style(base_url(). 'assets/css/app/store/store_edit.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
				
		$this->header->set_title($this->lang->line('text_store_edit'));
	
		$store_id = $this->input->get('store_id');
	
		$this->form_validation->set_rules('platform', $this->lang->line('text_platform'), 'required');
		$this->form_validation->set_rules('name', $this->lang->line('text_name'), 'required');
		$this->form_validation->set_rules('default_sale_status_id', $this->lang->line('text_default_sale_status_id'), 'required');
		$this->form_validation->set_rules('default_sale_shipping_provider', $this->lang->line('text_default_sale_shipping_provider'), 'required');
		$this->form_validation->set_rules('default_sale_shipping_service', $this->lang->line('text_default_sale_shipping_service'), 'required');
		$this->form_validation->set_rules('auto_download', $this->lang->line('text_auto_upload'), 'required');
		$this->form_validation->set_rules('auto_upload', $this->lang->line('text_auto_upload'), 'required');
	
		$setting = $this->input->post('setting');
	
		$data = array(
			'client_id'                       => $this->input->post('client_id'),
			'client_name'                     => $this->input->post('client_name'),
			'platform'                        => $this->input->post('platform'),
			'name'                            => $this->input->post('name'),
			'setting'        		          => (isset($setting))?$setting:'',
			'default_sale_status_id'  		  => $this->input->post('default_sale_status_id'),
			'default_sale_shipping_provider'  => $this->input->post('default_sale_shipping_provider'),
			'default_sale_shipping_service'   => $this->input->post('default_sale_shipping_service'),
			'auto_download'                   => $this->input->post('auto_download'),
			'auto_upload'                     => $this->input->post('auto_upload')
		);
		
		if($this->form_validation->run() == true)
		{			
			$this->store_model->edit_store($store_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_store_edit_success'));
			
			redirect(base_url() . 'store/store', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$settings = $this->input->post('setting');
			
			$data['client_id']                       = $this->input->post('client_id');
			$data['client_name']                     = $this->input->post('client_name');
			$data['platform_code']                   = $this->input->post('platform');
			$data['name']                            = $this->input->post('name');
			$data['settings']                        = (isset($settings))?$settings:'';
			$data['default_sale_status_id']          = $this->input->post('default_sale_status_id');
			$data['default_sale_shipping_provider']  = $this->input->post('default_sale_shipping_provider');
			$data['default_sale_shipping_service']   = $this->input->post('default_sale_shipping_service');
			$data['auto_download']                   = $this->input->post('auto_download');
			$data['auto_upload']                     = $this->input->post('auto_upload');
			
			$platform = $this->input->post('platform');
		}
		else
		{
			$store = $this->store_model->get_store($store_id);
			
			$store_download = $this->store_model->get_store_download($store_id);
			
			$store_upload = $this->store_model->get_store_upload($store_id);
			
			if(isset($store['client_id'])) 
			{
				$data['client_name'] = $store['client'];
				$data['client_id'] = $store['client_id'];
			}
			else 
			{
				$data['client_name'] = '';
				$data['client_id'] = '';
			}
			
			$data['platform_code']                   = $store['platform'];
			$data['name']                            = $store['name'];
			$data['default_sale_status_id']          = $store['default_sale_status_id'];
			$data['default_sale_shipping_provider']  = $store['default_sale_shipping_provider'];
			$data['default_sale_shipping_service']   = $store['default_sale_shipping_service'];
			$data['auto_download']                   = $store_download['enabled'];
			$data['auto_upload']                     = $store_upload['enabled'];
			$data['settings']                        = (isset($store['setting']))?unserialize($store['setting']):'';
			
			$platform = $store['platform'];
		}
		
		//client
		$clients = $this->client_model->get_clients();
	
		$data['clients'] = array();
		
		foreach($clients as $client) 
		{
			$data['clients'][] = array(
				'client_id'  => $client['id'],
				'name'       => $client['name']
			);
		}
		
		//platform
		$platforms = $this->extension_model->get_installed('platform');
	
		$data['platforms'] = array();
		
		foreach ($platforms as $platform) {
			$this->lang->load('platform/' . $platform);

			$data['platforms'][] = array(
				'code'       => $platform,
				'name'       => $this->lang->line('text_title')
			);
		}
		
		//shipping providers
		$shipping_providers_data = $this->shipping_model->get_shipping_providers();
				
		$data['shipping_providers'] = array();
		
		foreach($shipping_providers_data as $shipping_provider_data) 
		{
			$code = $shipping_provider_data['code'];
			
			if($this->config->item($code .'_status'))
			{
				$data['shipping_providers'][] = array(
					'code'     => $shipping_provider_data['code'],
					'name'     => $shipping_provider_data['name']
				);
			}
		}
		
		//shipping service
		$data['shipping_services'] = array();
		
		if($data['default_sale_shipping_provider'])
		{
			$shipping_provider = $data['default_sale_shipping_provider'];
			
			$shipping_services_data = $this->shipping_model->get_shipping_services($shipping_provider);
			
			foreach($shipping_services_data as $shipping_service_data)
			{
				$data['shipping_services'][] = array(
					'code'  => $shipping_service_data['code'],
					'name'  => $shipping_service_data['name']
				);
			}
		}
		
		//language
		$this->lang->load('platform/'.$platform);
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('store/store_edit', $data);
	}
	
	public function delete()
	{
		$this->lang->load('store/store');

		$this->load->model('store/store_model');

		if($this->input->get('store_id'))
		{
			$store_id = $this->input->get('store_id');
			
			$validated = true;
			
			$messages = array();
						
			if(!$validated)
			{
				$outdata = array(
					'success'   => false,
					'messages'  => $messages
				);
			}
			else 
			{
				$result = $this->store_model->delete_store($store_id);

				$outdata = array(
					'success'   => ($result)?true:false
				);
			}
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


