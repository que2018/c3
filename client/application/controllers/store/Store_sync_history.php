<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_Sync_history extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('store/store_sync_history');
		
		$this->load->model('store/store_sync_history_model');
	}
	
	function index()
	{
		$data['success'] = $this->session->flashdata('success');
		 
		if($this->input->get('filter_store'))
		{
			$filter_store = $this->input->get('filter_store');
		} 
		else 
		{
			$filter_store = '';
		}
		
		if($this->input->get('filter_type'))
		{
			$filter_type = $this->input->get('filter_type');
		} 
		else 
		{
			$filter_type = '';
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
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'store_sync_history.date_added';
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
			$limit = 10;
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
			'filter_store'      => $filter_store,
			'filter_type'       => $filter_type,
			'filter_status'     => $filter_status,
			'filter_date_added' => $filter_date_added,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$store_sync_histories = $this->store_sync_history_model->get_store_sync_histories($filter_data);	
		$store_sync_history_total = $this->store_sync_history_model->get_store_sync_history_total($filter_data);
		
		$data['store_sync_histories'] = array();
		
		if($store_sync_histories) 
		{
			foreach($store_sync_histories as $store_sync_history)
			{
				if($store_sync_history['type'] == 0)
				{
					$type = $this->lang->line('text_download');
				}
				else
				{
					$type = $this->lang->line('text_upload');
				}
				
				if($store_sync_history['status'] == 1)
				{
					$status = $this->lang->line('text_success');
				}
				else
				{
					$status = $this->lang->line('text_fail');
				}
			
				$data['store_sync_histories'][] = array(
					'id'           => $store_sync_history['id'],	
					'store'        => $store_sync_history['store'],
					'type'         => $type,
					'status'       => $status,
					'date_added'   => $store_sync_history['date_added']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_store')) 
		{
			$url .= '&filter_store=' . $this->input->get('filter_store');
		}
		
		if($this->input->get('filter_type')) 
		{
			$url .= '&filter_type=' . $this->input->get('filter_type');
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
	
		$this->pagination->total  = $store_sync_history_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'store/store_sync_history?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($store_sync_history_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($store_sync_history_total - $limit)) ? $store_sync_history_total : ((($page - 1) * $limit) + $limit), $store_sync_history_total, ceil($store_sync_history_total / $limit));

		$url = '';
		
		if($this->input->get('filter_store')) 
		{
			$url .= '&filter_store=' . $this->input->get('filter_store');
		}
		
		if($this->input->get('filter_type')) 
		{
			$url .= '&filter_type=' . $this->input->get('filter_type');
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
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$data['limit_10']  = base_url().'store/store_sync_history?limit=10'.$url;
		$data['limit_15']  = base_url().'store/store_sync_history?limit=15'.$url;
		$data['limit_50']  = base_url().'store/store_sync_history?limit=50'.$url;
		$data['limit_100'] = base_url().'store/store_sync_history?limit=100'.$url;
	
		$url = '';
		
		if($this->input->get('filter_store')) 
		{
			$url .= '&filter_store=' . $this->input->get('filter_store');
		}
		
		if($this->input->get('filter_type')) 
		{
			$url .= '&filter_type=' . $this->input->get('filter_type');
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
		
		if($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_store']       = base_url().'store/store_sync_history&sort=store.name' . $url;
		$data['sort_type']        = base_url().'store/store_sync_history&sort=store_sync_history.type' . $url;
		$data['sort_status']      = base_url().'store/store_sync_history&sort=store_sync_history.status' . $url;
		$data['sort_date_added']  = base_url().'store/store_sync_history&sort=store_sync_history.date_added' . $url;

		$url = '';
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		$data['filter_url'] = base_url().'store/store_sync_history' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_store']       = $filter_store;
		$data['filter_type']        = $filter_type;
		$data['filter_status']      = $filter_status;
		$data['filter_date_added']  = $filter_date_added;
		
		$this->load->view('common/header');
		$this->load->view('store/store_sync_history_list', $data);
		$this->load->view('common/footer');
	}
	
	function detail()
	{
		$store_sync_history_id = $this->input->get('store_sync_history_id');
		
		$store_sync_history = $this->store_sync_history_model->get_store_sync_history($store_sync_history_id);
		
		$data['store'] = $store_sync_history['store'];
		
		if($store_sync_history['type'] == 0)
		{
			$data['type'] = $this->lang->line('text_download');
		}
		else
		{
			$data['type'] = $this->lang->line('text_upload');
		}
		
		if($store_sync_history['status'] == 1)
		{
			$data['status'] = $this->lang->line('text_success');
		}
		else
		{
			$data['status'] = $this->lang->line('text_fail');
		}
		
		$data['date_added'] = $store_sync_history['date_added'];
		
		$data['messages'] = unserialize($store_sync_history['messages']);

		$this->load->view('common/header');
		$this->load->view('store/store_sync_history_detail', $data);
		$this->load->view('common/footer');
	}
	
	public function delete()
	{
		if($this->input->get('id'))
		{
			$id = $this->input->get('id');
			
			$this->store_sync_history_model->delete_store_sync_history($id);

			$outdata = array(
				'success'   => true
			);
			
			echo json_encode($outdata);
		}
	}
	
	public function clear()
	{
		$this->store_sync_history_model->clear_store_sync_history();
		
		$this->session->set_flashdata('success', $this->lang->line('text_store_sync_clear_success'));
			
		redirect(base_url() . 'store/store_sync_history', 'refresh');
	}
}


