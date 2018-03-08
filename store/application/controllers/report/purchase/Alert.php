<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Alert extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('report/purchase/alert');
		
		$this->load->model('report/purchase/alert_model');
	}
	
	function index()
	{
		$data['success'] = $this->session->flashdata('success');
		                   	
		if($this->input->get('filter_product'))
		{
			$filter_product = $this->input->get('filter_product');
		} 
		else 
		{
			$filter_product = '';
		}
		
		if($this->input->get('filter_location'))
		{
			$filter_location = $this->input->get('filter_location');
		} 
		else 
		{
			$filter_location = '';
		}
		
		if($this->input->get('filter_warehouse'))
		{
			$filter_warehouse = $this->input->get('filter_warehouse');
		} 
		else 
		{
			$filter_warehouse = '';
		}
		
		if($this->input->get('filter_quantity'))
		{
			$filter_quantity = $this->input->get('filter_quantity');
		} 
		else 
		{
			$filter_quantity = '';
		}
		
		if($this->input->get('filter_date_modified'))
		{
			$filter_date_modified = $this->input->get('filter_date_modified');
		} 
		else 
		{
			$filter_date_modified = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'inventory.quantity';
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
			'filter_product'    	 => $filter_product,
			'filter_location'   	 => $filter_location,
			'filter_warehouse'   	 => $filter_warehouse,
			'filter_quantity'        => $filter_quantity,
			'filter_date_modified'   => $filter_date_modified,
			'sort'                   => $sort,
			'order'                  => $order,
			'start'                  => ($page - 1) * $limit,
			'limit'                  => $limit
		);
		
		$alerts = $this->alert_model->get_alerts($filter_data);	
		$alert_total = $this->alert_model->get_alert_total($filter_data);
		
		$data['alerts'] = array();
		
		if($alerts) 
		{
			foreach($alerts as $alert)
			{	
				$data['alerts'][] = array(
					'product_id'    => $alert['product_id'],
					'product'       => $alert['product_name'],
					'location'      => $alert['location_name'],
					'warehouse'     => $alert['warehouse_name'],
					'quantity'      => $alert['quantity'],
					'date_modified' => $alert['date_modified']
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_product')) 
		{
			$url .= '&filter_product=' . $this->input->get('filter_product');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_date_modified')) 
		{
			$url .= '&filter_date_modified=' . $this->input->get('filter_date_modified');
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
	
		$this->pagination->total  = $alert_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'report/purchase/alert?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($alert_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($alert_total - $limit)) ? $alert_total : ((($page - 1) * $limit) + $limit), $alert_total, ceil($alert_total / $limit));

		$url = '';
		
		if($this->input->get('filter_product')) 
		{
			$url .= '&filter_product=' . $this->input->get('filter_product');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_date_modified')) 
		{
			$url .= '&filter_date_modified=' . $this->input->get('filter_date_modified');
		}
				
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$data['limit_10']  = base_url() . 'report/purchase/alert?limit=10' . $url;
		$data['limit_15']  = base_url() . 'report/purchase/alert?limit=15' . $url;
		$data['limit_50']  = base_url() . 'report/purchase/alert?limit=50' . $url;
		$data['limit_100'] = base_url() . 'report/purchase/alert?limit=100' . $url;
	
		$url = '';
		
		if($this->input->get('filter_product')) 
		{
			$url .= '&filter_product=' . $this->input->get('filter_product');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_warehouse')) 
		{
			$url .= '&filter_warehouse=' . $this->input->get('filter_warehouse');
		}
		
		if($this->input->get('filter_quantity')) 
		{
			$url .= '&filter_quantity=' . $this->input->get('filter_quantity');
		}
		
		if($this->input->get('filter_date_modified')) 
		{
			$url .= '&filter_date_modified=' . $this->input->get('filter_date_modified');
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
		
		$data['sort_product']        = base_url() . 'report/purchase/alert?sort=product.name' . $url;
		$data['sort_location']       = base_url() . 'report/purchase/alert?sort=locaiton.name' . $url;
		$data['sort_warehouse']  	 = base_url() . 'report/purchase/alert?sort=warehouse.name' . $url;
		$data['sort_quantity']       = base_url() . 'report/purchase/alert?sort=report.quantity' . $url;
		$data['sort_date_modified']  = base_url() . 'report/purchase/alert?sort=report.date_modified' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'report/purchase/alert' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_product']         = $filter_product;
		$data['filter_location']        = $filter_location;
		$data['filter_warehouse']       = $filter_warehouse;
		$data['filter_quantity']        = $filter_quantity;
		$data['filter_date_modified']   = $filter_date_modified;
		
		$this->load->view('common/header');
		$this->load->view('report/purchase/alert_list', $data);
		$this->load->view('common/footer');
	}
	
	function export() 
	{
		$this->load->library('phpexcel');
		
		$this->phpexcel->getProperties()->setCreator('activape');
		$this->phpexcel->getProperties()->setLastModifiedBy('activape');
		$this->phpexcel->getProperties()->setTitle('activape');
		
		$this->phpexcel->getActiveSheet()->setCellValue('A1', $this->lang->line('column_name'));
		$this->phpexcel->getActiveSheet()->setCellValue('B1', $this->lang->line('column_location'));
		$this->phpexcel->getActiveSheet()->setCellValue('C1', $this->lang->line('column_warehouse'));
		$this->phpexcel->getActiveSheet()->setCellValue('D1', $this->lang->line('column_quantity'));

		$alerts = $this->alert_model->get_all_alerts();	
		
		$row = 2;
		
		if($alerts)
		{
			foreach($alerts as $alert)
			{
				$this->phpexcel->getActiveSheet()->setCellValue('A' . $row, $alert['product']);
				$this->phpexcel->getActiveSheet()->setCellValue('B' . $row, $alert['location']);
				$this->phpexcel->getActiveSheet()->setCellValue('C' . $row, $alert['warehouse']);
				$this->phpexcel->getActiveSheet()->setCellValue('D' . $row, $alert['quantity']);
				
				$row++;
			}
		}
		
		$file_writer = PHPExcel_IOFactory::createWriter($this->phpexcel, 'Excel2007');
		$file = FCPATH . 'assets/file/export/purchase_alert.xlsx';
		$file_writer->save($file);
		
		$link = base_url() . 'assets/file/export/purchase_alert.xlsx';
		
		$outdata = array(
			'success' => true,
			'link'    => $link
		);
		
		echo json_encode($outdata);
	}
}


