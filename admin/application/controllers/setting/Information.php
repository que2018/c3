<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Information extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('setting/information');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/information_list.css');
	
		$this->header->set_title($this->lang->line('text_information'));
	
		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/information_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('setting/information_list_table', $data);
	}

	protected function get_list()
	{
		$this->lang->load('setting/information');
		
		$this->load->model('setting/information_model');
				                   
		if($this->input->get('filter_title'))
		{
			$filter_title = $this->input->get('filter_title');
		} 
		else 
		{
			$filter_title = '';
		}
		
		if($this->input->get('filter_front'))
		{
			$filter_front = $this->input->get('filter_front');
		} 
		else 
		{
			$filter_front = '';
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
			$sort = 'information.sort_order';
		}

		if($this->input->get('order')) 
		{
			$order = $this->input->get('order');
		} 
		else 
		{
			$order = 'ASC';
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
			'filter_title'    => $filter_title,
			'filter_front'    => $filter_front,
			'filter_status'   => $filter_status,
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$informations = $this->information_model->get_informations($filter_data);	
		
		$information_total = $this->information_model->get_information_total($filter_data);
		
		$data['informations'] = array();
		
		if($informations) 
		{
			foreach($informations as $information)
			{	
				if($information['front']) 
					$front = $this->lang->line('text_yes');
				else
					$front = $this->lang->line('text_no');
				
				if($information['status']) 
					$status = $this->lang->line('text_enabled');
				else
					$status = $this->lang->line('text_disabled');
			
				$data['informations'][] = array(
					'information_id'   => $information['information_id'],
					'title'       	   => $information['title'],
					'front'      	   => $front,
					'status'      	   => $status
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_title')) 
		{
			$url .= '&filter_title=' . $this->input->get('filter_title');
		}
		
		if($this->input->get('filter_front')) 
		{
			$url .= '&filter_front=' . $this->input->get('filter_front');
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
	
		$this->pagination->total  = $information_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'setting/information?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($information_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($information_total - $limit)) ? $information_total : ((($page - 1) * $limit) + $limit), $information_total, ceil($information_total / $limit));

		$url = '';
		
		if($this->input->get('filter_title')) 
		{
			$url .= '&filter_title=' . $this->input->get('filter_title');
		}
		
		if($this->input->get('filter_front')) 
		{
			$url .= '&filter_front=' . $this->input->get('filter_front');
		}
		
		if($this->input->get('filter_stauts')) 
		{
			$url .= '&filter_stauts=' . $this->input->get('filter_stauts');
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
		
		$data['sort_title']   = base_url() . 'setting/information?sort=information_content.title' . $url;
		$data['sort_front']   = base_url() . 'setting/information?sort=information.front' . $url;
		$data['sort_status']  = base_url() . 'setting/information?sort=information.status' . $url;

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
		

		$data['filter_url'] = base_url() . 'setting/information' . $url;
		
		$data['reload_url'] = base_url() . 'setting/information/reload' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_title']   = $filter_title;
		$data['filter_front']   = $filter_front;
		$data['filter_status']  = $filter_status;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/information');
		
		$this->load->model('setting/language_model');
		$this->load->model('setting/information_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/information_add.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_information_add'));
		
		$this->form_validation->set_rules('content[]', $this->lang->line('text_content'), 'required');
		$this->form_validation->set_rules('front', $this->lang->line('text_front'), 'required');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');

		$data = array(
			'content'   => $this->input->post('content'),
			'front'     => $this->input->post('front'),
			'redirect'  => $this->input->post('redirect'),
			'status'    => $this->input->post('status')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->information_model->add_information($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_information_add_success'));
			
			redirect(base_url() . 'setting/information', 'refresh');
		}
		
		$languages = $this->language_model->get_languages();
		
		$data['languages'] = array();
		
		foreach($languages as $language)
		{
			$data['languages'][] = array(
				'language_id' => $language['language_id'],
				'name'        => $language['name']
			);
		}
		
		$data['error'] = validation_errors();

		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/information_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/information');
		
		$this->load->model('setting/language_model');
		$this->load->model('setting/information_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/information_add.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_information_edit'));
		
		$information_id = $this->input->get('information_id');
	
		$this->form_validation->set_rules('content[]', $this->lang->line('text_content'), 'required');
		$this->form_validation->set_rules('front', $this->lang->line('text_front'), 'required');
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'content'   => $this->input->post('content'),
				'front'     => $this->input->post('front'),
				'redirect'  => $this->input->post('redirect'),
				'status'    => $this->input->post('status')
			);
			
			$this->information_model->edit_information($information_id, $data);
			
			if($data['front'])
			{
				$ch = curl_init(); 
				
				$url = $this->config->item('site_url') . 'cms';
								
				curl_setopt($ch, CURLOPT_URL, $url); 
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);				
				
				$result = curl_exec($ch); 
				
				file_put_contents("log.txt", $result);
				
				curl_close($ch);    
		
				file_put_contents((FCPATH . '/..') . 'index.html', $result);
			}
			
			$this->session->set_flashdata('success', $this->lang->line('text_information_edit_success'));
			
			redirect(base_url() . 'setting/information', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 		
		{
			$data['title']    = $this->input->post('title');
			$data['content']  = $this->input->post('content');
			$data['front']    = $this->input->post('front');
			$data['redirect'] = $this->input->post('redirect');
			$data['status']   = $this->input->post('status');
		}
		else
		{
			$information = $this->information_model->get_information($information_id);

			$data['front']    = $information['front'];
			$data['redirect'] = $information['redirect'];
			$data['status']   = $information['status'];
			
			$contents = $this->information_model->get_information_contents($information_id);
			
			$data['content'] = array();
			
			foreach($contents as $content)
			{
				$data['content'][$content['language_id']] = array(
					'title'    => $content['title'],
					'content'  => $content['content']
				);
			}
		}
		
		$languages = $this->language_model->get_languages();
		
		$data['languages'] = array();
		
		foreach($languages as $language)
		{
			$data['languages'][] = array(
				'language_id' => $language['language_id'],
				'name'        => $language['name']
			);
		}
		
		$data['error'] = validation_errors();
		
		$data['information_id'] = $information_id;
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/information_edit', $data);
	}
	
	public function delete()
	{
		$this->lang->load('setting/information');
		
		$this->load->model('setting/information_model');
		
		if($this->input->get('information_id'))
		{
			$information_id = $this->input->get('information_id');
			
			$result = $this->information_model->delete_information($information_id);
			
			$outdata = array(
				'success' => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


