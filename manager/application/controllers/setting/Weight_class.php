<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Weight_class extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('setting/weight_class');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/weight_class_list.css');
	
		$this->header->set_title($this->lang->line('text_weight_class'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/weight_class_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('setting/weight_class_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('setting/weight_class');
		
		$this->load->model('setting/weight_class_model');
		                   
		if($this->input->get('filter_unit'))
		{
			$filter_unit = $this->input->get('filter_unit');
		} 
		else 
		{
			$filter_unit = '';
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
			$sort = 'weight_class.date_added';
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
			'filter_unit'     => $filter_unit,
			'filter_value'    => $filter_value,
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $limit,
			'limit'           => $limit
		);
		
		$weight_classes = $this->weight_class_model->get_weight_classes($filter_data);	
		
		$weight_class_total = $this->weight_class_model->get_weight_class_total($filter_data);
		
		$data['weight_classes'] = array();
		
		if($weight_classes) 
		{
			foreach($weight_classes as $weight_class)
			{	
				$data['weight_classes'][] = array(
					'weight_class_id' => $weight_class['id'],
					'unit'            => $weight_class['unit'],
					'value'           => $weight_class['value']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_unit')) 
		{
			$url .= '&filter_unit=' . $this->input->get('filter_unit');
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
	
		$this->pagination->total  = $weight_class_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'setting/weight_class?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($weight_class_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($weight_class_total - $limit)) ? $weight_class_total : ((($page - 1) * $limit) + $limit), $weight_class_total, ceil($weight_class_total / $limit));

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
		
		$data['sort_unit']   = base_url() . 'setting/weight_class&sort=weight_classes.unit' . $url;
		$data['sort_value']  = base_url() . 'setting/weight_class&sort=weight_classes.value' . $url;

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
		
		$data['filter_url'] = base_url() . 'setting/weight_class' . $url;
		
		$data['reload_url'] = base_url() . 'setting/weight_class/reload' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_unit']  = $filter_unit;
		$data['filter_value'] = $filter_value;
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
				
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/weight_class');

		$this->load->model('setting/weight_class_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/weight_class_add.css');
				
		$this->header->set_title($this->lang->line('text_weight_class_add'));
			
		$this->form_validation->set_rules('unit', $this->lang->line('text_unit'), 'required');
		$this->form_validation->set_rules('value', $this->lang->line('text_value'), 'required');

		$data = array(
			'unit'       => $this->input->post('unit'),
			'value'      => $this->input->post('value')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->weight_class_model->add_weight_class($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_weight_class_add_success'));
			
			redirect(base_url() . 'setting/weight_class', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/weight_class_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
				
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/weight_class');

		$this->load->model('setting/weight_class_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/weight_class_edit.css');
				
		$this->header->set_title($this->lang->line('text_weight_class_edit'));
		
		$weight_class_id = $this->input->get('weight_class_id');
	
		$this->form_validation->set_rules('unit', $this->lang->line('text_unit'), 'required');
		$this->form_validation->set_rules('value', $this->lang->line('text_value'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'unit'       => $this->input->post('unit'),
				'value'      => $this->input->post('value')
			);
			
			$this->weight_class_model->edit_weight_class($weight_class_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_weight_class_edit_success'));
			
			redirect(base_url() . 'setting/weight_class', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['unit']   = $this->input->post('unit');
			$data['value']  = $this->input->post('value');
		}
		else
		{
			$weight_class = $this->weight_class_model->get_weight_class($weight_class_id);
			
			$data['unit']   = $weight_class['unit'];
			$data['value']  = $weight_class['value'];
		}
		
		$data['error'] = validation_errors();
		
		$data['weight_class_id'] = $weight_class_id;
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/weight_class_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('setting/weight_class_model');
		
		if($this->input->get('weight_class_id'))
		{
			$weight_class_id = $this->input->get('weight_class_id');
			
			$result = $this->weight_class_model->delete_weight_class($weight_class_id);
			
			$outdata = array(
				'success' => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


