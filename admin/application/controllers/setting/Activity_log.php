<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Activity_log extends MX_Controller
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');

		$this->lang->load('setting/activity_log');
		
		$this->load->model('setting/activity_log_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/activity_log_history.css');
	
		$this->header->set_title($this->lang->line('text_activity_log'));
		 
		if($this->input->get('filter_user'))
		{
			$filter_user = $this->input->get('filter_user');
		} 
		else 
		{
			$filter_user = '';
		}
		
		if($this->input->get('filter_ip_address'))
		{
			$filter_ip_address = $this->input->get('filter_ip_address');
		} 
		else 
		{
			$filter_ip_address = '';
		}
		
		if($this->input->get('filter_description'))
		{
			$filter_description = $this->input->get('filter_description');
		} 
		else 
		{
			$filter_description = '';
		}
		
		if($this->input->get('filter_method'))
		{
			$filter_method = $this->input->get('filter_method');
		} 
		else 
		{
			$filter_method = '';
		}
		
		if($this->input->get('filter_date_added'))
		{
			$filter_date_added = $this->input->get('filter_date_added');
		} 
		else 
		{
			$filter_date_added = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'activity_log.date_added';
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
			'filter_user'         => $filter_user,
			'filter_ip_address'   => $filter_ip_address,
			'filter_description'  => $filter_description,
			'filter_method'       => $filter_method,
			'filter_date_added'   => $filter_date_added,
			'sort'                => $sort,
			'order'               => $order,
			'start'               => ($page - 1) * $limit,
			'limit'               => $limit
		);
		
		$activity_logs = $this->activity_log_model->get_activity_logs($filter_data);
		
		$activity_log_total = $this->activity_log_model->get_total_activity($filter_data);
		
		$data['activity_logs'] = array();
		
		if($activity_logs) 
		{
			foreach($activity_logs as $activity_log)
			{
				$data['activity_logs'][] = array(
					'activity_log_id' => $activity_log['id'],
					'user'            => $activity_log['user'],
					'ip_address'      => $activity_log['ip_address'],
					'description'     => $activity_log['description'],
					'method'          => $activity_log['method'],
					'date_added'      => $activity_log['date_added']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_user')) 
		{
			$url .= '&filter_user=' . $this->input->get('filter_user');
		}
		
		if($this->input->get('filter_ip_address')) 
		{
			$url .= '&filter_ip_address=' . $this->input->get('filter_ip_address');
		}
		
		if($this->input->get('filter_description')) 
		{
			$url .= '&filter_description=' . $this->input->get('filter_description');
		}
		
		if($this->input->get('filter_method')) 
		{
			$url .= '&filter_method=' . $this->input->get('filter_method');
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
	
		$this->pagination->total  = $activity_log_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'setting/activity_log?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($activity_log_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($activity_log_total - $limit)) ? $activity_log_total : ((($page - 1) * $limit) + $limit), $activity_log_total, ceil($activity_log_total / $limit));

		$url = '';
		
		if($this->input->get('filter_user')) 
		{
			$url .= '&filter_user=' . $this->input->get('filter_user');
		}
		
		if($this->input->get('filter_ip_address')) 
		{
			$url .= '&filter_ip_address=' . $this->input->get('filter_ip_address');
		}
		
		if($this->input->get('filter_description')) 
		{
			$url .= '&filter_description=' . $this->input->get('filter_description');
		}
		
		if($this->input->get('filter_method')) 
		{
			$url .= '&filter_method=' . $this->input->get('filter_method');
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
		
		$data['sort_user']         = base_url() . 'setting/activity_log?sort=activity_log.user' . $url;
		$data['sort_ip_address']   = base_url() . 'setting/activity_log?sort=activity_log.ip_address' . $url;
		$data['sort_description']  = base_url() . 'setting/activity_log?sort=activity_log.description' . $url;
		$data['sort_method']       = base_url() . 'setting/activity_log?sort=activity_log.method' . $url;
		$data['sort_date_added']   = base_url() . 'setting/activity_log?sort=activity_log.date_added' . $url;

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
		
		$data['filter_url'] = base_url() . 'setting/activity_log' . $url;
			
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_user']         = $filter_user;
		$data['filter_ip_address']   = $filter_ip_address;
		$data['filter_description']  = $filter_description;
		$data['filter_method']       = $filter_method;
		$data['filter_date_added']   = $filter_date_added;
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/activity_log_list', $data);
	}
	
	public function clear()
	{
		$this->lang->load('setting/activity_log');
		
		$this->load->model('setting/activity_log_model');
		
		$this->activity_log_model->clear_log_activity();
		
		$this->session->set_flashdata('success', $this->lang->line('text_store_sync_clear_success'));
			
		redirect(base_url() . 'setting/activity_log', 'refresh');
	}
}


