<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Weight_class extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('setting/weight_class');
		
		$this->load->model('setting/weight_class_model');
	}
	
	function index()
	{
		$data['success'] = $this->session->flashdata('success');
		                   
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
			'filter_unit'      => $filter_unit,
			'filter_value'     => $filter_value,
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
					'id'         => $weight_class['id'],
					'unit'       => $weight_class['unit'],
					'value'      => $weight_class['value']
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
		$this->pagination->url    = base_url().'setting/weight_class?page={page}'.$url;
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
		
		$data['sort_unit']        = base_url() . 'setting/weight_class&sort=weight_classes.unit'.$url;
		$data['sort_value']       = base_url() . 'setting/weight_class&sort=weight_classes.value'.$url;

		$url = '';
		
		if ($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=10';
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url() . 'setting/weight_class' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_unit']          = $filter_unit;
		$data['filter_value']         = $filter_value;
		
		$this->load->view('common/header');
		$this->load->view('setting/weight_class_list', $data);
		$this->load->view('common/footer');
	}
	
	public function add() 
	{
		$this->load->library('form_validation');
	
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
		
		$this->load->view('common/header');
		$this->load->view('setting/weight_class_add', $data);
		$this->load->view('common/footer');
	}
	
	public function edit() 
	{
		$this->load->library('form_validation');
		
		$id = $this->input->get('id');
	
		$this->form_validation->set_rules('unit', $this->lang->line('text_unit'), 'required');
		$this->form_validation->set_rules('value', $this->lang->line('text_value'), 'required');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'unit'       => $this->input->post('unit'),
				'value'      => $this->input->post('value')
			);
			
			$this->weight_class_model->edit_weight_class($id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_weight_class_edit_success'));
			
			redirect(base_url() . 'setting/weight_class', 'refresh');
		}
		else
		{
			$weight_class = $this->weight_class_model->get_weight_class($id);
			
			$data['id']           = $weight_class['id'];
			$data['unit']         = $weight_class['unit'];
			$data['value']        = $weight_class['value'];

			$data['error']   = validation_errors();
		
			$this->load->view('common/header');
			$this->load->view('setting/weight_class_edit', $data);
			$this->load->view('common/footer');
		}
	}
	
	public function delete()
	{
		if($this->input->get('id'))
		{
			$id = $this->input->get('id');
			
			$result = $this->weight_class_model->delete_weight_class($id);
			
			if($result)
			{				
				$outdata = array(
					'success'   => true
				);
			}
			else 
			{				
				$outdata = array(
					'success'   => false
				);
			}
			
			echo json_encode($outdata);
		}
	}
}


