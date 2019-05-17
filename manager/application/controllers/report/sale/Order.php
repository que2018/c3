<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Order extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();	
	}
	
	function index()
	{		
		$this->lang->load('report/sale/order');
		
		$this->load->model('report/sale/order/order_model');
		
		$limit = $this->config->item('config_page_limit');
		
		$page = 1;


		$data['sales'] = array();
		$sale_total = 0;

		$this->pagination->total  = $sale_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->jquery = base_url().'sale/sale?page={page}';
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($sale_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($sale_total - $limit)) ? $sale_total : ((($page - 1) * $limit) + $limit), $sale_total, ceil($sale_total / $limit));
		
		$this->load->view('common/header');
		$this->load->view('report/sale/order/order_list');
		$this->load->view('common/footer');
	}
	
	function get_sales()
	{
		$this->load->model('report/sale/order/order_model');
		
		//client
		if($this->input->post('search_client'))
		{
			$search_client = $this->input->post('search_client');
		}
		else
		{
			$search_client = '';
		}
		
		//date from
		if($this->input->post('search_date_from'))
		{
			$search_date_from = $this->input->post('search_date_from');
		}
		else
		{
			$search_date_from = '';
		}
		
		//date to
		if($this->input->post('search_date_to'))
		{
			$search_date_to = $this->input->post('search_date_to');
		}		
		else
		{
			$search_date_to = '';
		}
			
		//sort_data	
		if($this->input->post('sort_data'))
		{
			$sort_data = $this->input->post('sort_data');
		}		
		else
		{
			$sort_data = 'id';
		}
		
		//order
		if($this->input->post('order'))
		{
			$order = $this->input->post('order');
		}		
		else
		{
			$order = 'ASC';
		}
		
		//filter array
		if($this->input->post('filter_data'))
		{
			$filter_data = json_decode($this->input->post('filter_data'));
		}		
		else
		{
			$filter_data = array();
		}
		
		//start defult 0
		if($this->input->post('start'))
		{
			$start = $this->input->post('start');
		}		
		else
		{
			$start = 0;
		}
		
		//limit defult 10
		if($this->input->post('limit'))
		{
			$limit = $this->input->post('limit');
		}		
		else
		{
			$limit = 10;
		}
		
		$page = $start/10 + 1;
		
		$sale_results = $this->order_model->get_sales($search_client, $search_date_from, $search_date_to, $sort_data, $order, $filter_data, $start, $limit);
		$sale_total = $this->order_model->get_sale_total($search_client, $search_date_from, $search_date_to, $filter_data);

		$this->pagination->total  = $sale_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->jquery = true;
		$pagination= $this->pagination->render();
		
		$results = sprintf($this->lang->line('text_pagination'), ($sale_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($sale_total - $limit)) ? $sale_total : ((($page - 1) * $limit) + $limit), $sale_total, ceil($sale_total / $limit));
		
			
		// if(!$sale_results)
		// {
			// $outdata = array(
				// 'success'   => false,
				// 'msg'       => $this->lang->line('error_no_data')
			// );
			
			// echo json_encode($outdata);
			// die();
		// }
		 
		//find product
		$sales = array();
		
		foreach($sale_results as $sale_result)
		{		
			$sales[] = array(
				'id'       		=> $sale_result['id'],
				'store_sale_id' => $sale_result['store_sale_id'],
				'tracking'      => $sale_result['tracking'],
				'customer'      => $sale_result['name'],
				'date_added'    => $sale_result['date_added']
			);
		}
	
		$outdata = array(
			'success'   	=> true,
			'total'     	=> $sale_total,
			'page'    		=> $page,
			'limit'   		=> $limit,
			'pagination'    => $pagination,
			'results'  		=> $results,
			'sales'     	=> $sales
		);
			
		echo json_encode($outdata);
	}
	
	function get_id_from_name()
	{
		$this->load->model('report/sale/order/order_model');
		
		//name
		if($this->input->post('name'))
		{
			$name = $this->input->post('name');
		}
		else
		{
			$name = '';
		}
		
		$results = $this->order_model->get_id_from_name($name);
		
		if(!$results)
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_no_data')
			);
			
			echo json_encode($outdata);
			die();
		}
		 
		//find names
		$names = array();
		
		foreach($results as $result)
		{		
			$names[] = array(
				'client_name'   => $result['client_name'],
				'id'       		=> $result['id'],
			);
		}
	
		$outdata = array(
			'success'   	=> true,
			'names'     	=> $names
		);
			
		echo json_encode($outdata);
	}
	
	function export_excel()
	{
		$this->lang->load('report/sale/order');
		$this->load->library('phpexcel');
		$this->load->model('report/sale/order/order_model');
		
		$this->phpexcel->getActiveSheet()->setCellValue('A1', $this->lang->line('column_order_id'));
		$this->phpexcel->getActiveSheet()->setCellValue('B1', $this->lang->line('column_store_order_id'));
		$this->phpexcel->getActiveSheet()->setCellValue('C1', $this->lang->line('column_tracking'));
		$this->phpexcel->getActiveSheet()->setCellValue('D1', $this->lang->line('column_customer'));
		$this->phpexcel->getActiveSheet()->setCellValue('E1', $this->lang->line('column_date_added'));

		//client
		if($this->input->post('search_client'))
		{
			$search_client = $this->input->post('search_client');
		}
		else
		{
			$search_client = '';
		}
		
		//date from
		if($this->input->post('search_date_from'))
		{
			$search_date_from = $this->input->post('search_date_from');
		}
		else
		{
			$search_date_from = '';
		}
		
		//date to
		if($this->input->post('search_date_to'))
		{
			$search_date_to = $this->input->post('search_date_to');
		}		
		else
		{
			$search_date_to = '';
		}
			
		//sort_data	
		if($this->input->post('sort_data'))
		{
			$sort_data = $this->input->post('sort_data');
		}		
		else
		{
			$sort_data = 'id';
		}
		
		//order
		if($this->input->post('order'))
		{
			$order = $this->input->post('order');
		}		
		else
		{
			$order = 'ASC';
		}
		
		//filter array
		if($this->input->post('filter_data'))
		{
			$filter_data = json_decode($this->input->post('filter_data'));
		}		
		else
		{
			$filter_data = array();
		}
		
		//start defult 0
		if($this->input->post('start'))
		{
			$start = $this->input->post('start');
		}		
		else
		{
			$start = 0;
		}
		
		$limit = null;
		
		$sale_results = $this->order_model->get_sales($search_client, $search_date_from, $search_date_to, $sort_data, $order, $filter_data, $start, $limit);
		
		$row = 2;
		
		if($sale_results)
		{
			foreach($sale_results as $sale_result)
			{
				$this->phpexcel->getActiveSheet()->setCellValue('A' . $row, $sale_result['id']);
				$this->phpexcel->getActiveSheet()->setCellValue('B' . $row, $sale_result['store_sale_id']);
				$this->phpexcel->getActiveSheet()->setCellValue('C' . $row, $sale_result['tracking']);
				$this->phpexcel->getActiveSheet()->setCellValue('D' . $row, $sale_result['name']);
				$this->phpexcel->getActiveSheet()->setCellValue('E' . $row, $sale_result['date_added']);
				
				$row++;
			}
		}
		
		$file_writer = PHPExcel_IOFactory::createWriter($this->phpexcel, 'Excel2007');
		$file = FCPATH . 'assets/file/export/products.xlsx';
		$file_writer->save($file);
		
		$link = base_url() . 'assets/file/export/products.xlsx';
		
		$outdata = array(
			'success' => true,
			'link'    => $link
		);
		
		echo json_encode($outdata);
	}
}


