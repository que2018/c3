<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Length_class extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('setting/length_class');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/length_class_list.css');
	
		$this->header->set_title($this->lang->line('text_length_class'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/length_class_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('setting/length_class_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('setting/length_class');

		$this->load->model('setting/length_class_model');
	
		if($this->input->get('filter_unit'))
		{
			$filter_unit = $this->input->get('filter_unit');
		} 
		else 
		{
			$filter_unit = '';
		}
		
		if($this->input->get('filter_unit_short'))
		{
			$filter_unit_short = $this->input->get('filter_unit_short');
		} 
		else 
		{
			$filter_unit_short = '';
		}
		
		if($this->input->get('filter_value'))
		{
			$filter_value = $this->input->get('filter_value');
		} 
		else 
		{
			$filter_value = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'length_class.date_added';
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
			'filter_unit'        => $filter_unit,
			'filter_unit_short'  => $filter_unit,
			'filter_value'       => $filter_value,
			'sort'               => $sort,
			'order'              => $order,
			'start'              => ($page - 1) * $limit,
			'limit'              => $limit
		);
		
		$length_classes = $this->length_class_model->get_length_classes($filter_data);	
		
		$length_class_total = $this->length_class_model->get_length_class_total($filter_data);
		
		$data['length_classes'] = array();
		
		if($length_classes) 
		{
			foreach($length_classes as $length_class)
			{	
				$data['length_classes'][] = array(
					'length_class_id'  => $length_class['id'],
					'unit'       	   => $length_class['unit'],
					'unit_short' 	   => $length_class['unit_short'],
					'value'      	   => $length_class['value']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_unit')) 
		{
			$url .= '&filter_unit=' . $this->input->get('filter_unit');
		}
		
		if($this->input->get('filter_unit_short')) 
		{
			$url .= '&filter_unit_short=' . $this->input->get('filter_unit_short');
		}
		
		if($this->input->get('filter_value')) 
		{
			$url .= '&filter_value=' . $this->input->get('filter_value');
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
	
		$this->pagination->total  = $length_class_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'setting/length_class?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($length_class_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($length_class_total - $limit)) ? $length_class_total : ((($page - 1) * $limit) + $limit), $length_class_total, ceil($length_class_total / $limit));

		$url = '';
		
		if($this->input->get('filter_unit')) 
		{
			$url .= '&filter_unit=' . $this->input->get('filter_unit');
		}
		
		if($this->input->get('filter_value')) 
		{
			$url .= '&filter_value=' . $this->input->get('filter_value');
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
		
		$data['sort_unit']        = base_url() . 'setting/length_class?sort=unit' . $url;
		$data['sort_unit_short']  = base_url() . 'setting/length_class?sort=unit_short' . $url;
		$data['sort_value']   	  = base_url() . 'setting/length_class?sort=value' . $url;

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
		
		$data['filter_url'] = base_url() . 'setting/length_class'.$url;
		
		$data['reload_url'] = base_url() . 'setting/length_class/reload' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_unit']   		= $filter_unit;
		$data['filter_unit_short']  = $filter_unit_short;
		$data['filter_value']  		= $filter_value;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
				
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/length_class');

		$this->load->model('setting/length_class_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/length_class_add.css');
				
		$this->header->set_title($this->lang->line('text_length_class_add'));
	
		$this->form_validation->set_rules('unit', $this->lang->line('text_unit'), 'required');
		$this->form_validation->set_rules('unit_short', $this->lang->line('text_unit_short'), 'required');
		$this->form_validation->set_rules('value', $this->lang->line('text_value'), 'required');

		$data = array(
			'unit'       => $this->input->post('unit'),
			'unit_short' => $this->input->post('unit_short'),
			'value'      => $this->input->post('value')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->length_class_model->add_length_class($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_length_class_add_success'));
			
			redirect(base_url() . 'setting/length_class', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/length_class_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/length_class');

		$this->load->model('setting/length_class_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/length_class_edit.css');
				
		$this->header->set_title($this->lang->line('text_length_class_edit'));
		
		$length_class_id = $this->input->get('length_class_id');
	
		$this->form_validation->set_rules('unit', $this->lang->line('text_unit'), 'required');
		$this->form_validation->set_rules('unit_short', $this->lang->line('text_unit_short'), 'required');
		$this->form_validation->set_rules('value', $this->lang->line('text_value'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'unit'       => $this->input->post('unit'),
				'unit_short' => $this->input->post('unit_short'),
				'value'      => $this->input->post('value')
			);
			
			$this->length_class_model->edit_length_class($length_class_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_length_class_edit_success'));
			
			redirect(base_url() . 'setting/length_class', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['unit']      	 = $this->input->post('unit');
			$data['unit_short']  = $this->input->post('unit_short');
			$data['value']       = $this->input->post('value');
		}
		else
		{
			$length_class = $this->length_class_model->get_length_class($length_class_id);
			
			$data['unit']        = $length_class['unit'];
			$data['unit_short']  = $length_class['unit_short'];
			$data['value']       = $length_class['value'];
		}
	
		$data['error'] = validation_errors();
	
		$data['length_class_id'] = $length_class_id;
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/length_class_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('setting/length_class_model');
		
		if($this->input->get('length_class_id'))
		{
			$length_class_id = $this->input->get('length_class_id');
			
			$result = $this->length_class_model->delete_length_class($length_class_id);
			
			$outdata = array(
				'success' => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


