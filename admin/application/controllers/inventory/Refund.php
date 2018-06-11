<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Refund extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('inventory/refund');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/refund_list.css');
	
		$this->header->set_title($this->lang->line('text_refund_list'));
	
		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/refund_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('inventory/refund_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->load->library('phpexcel');
		
		$this->lang->load('inventory/refund');
		
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/refund_model');
				                   	
		if($this->input->get('filter_sku'))
		{
			$filter_sku = $this->input->get('filter_sku');
		} 
		else 
		{
			$filter_sku = '';
		}
		
		if($this->input->get('filter_upc'))
		{
			$filter_upc = $this->input->get('filter_upc');
		} 
		else 
		{
			$filter_upc = '';
		}
		
		if($this->input->get('filter_location'))
		{
			$filter_location = $this->input->get('filter_location');
		} 
		else 
		{
			$filter_location = '';
		}
		
		if($this->input->get('filter_batch'))
		{
			$filter_batch = $this->input->get('filter_batch');
		} 
		else 
		{
			$filter_batch = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'refund.date_modified';
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
			'filter_sku'    	=> $filter_sku,
			'filter_upc'    	=> $filter_upc,
			'filter_location'   => $filter_location,
			'filter_batch'   	=> $filter_batch,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$refunds = $this->refund_model->get_refunds($filter_data);	
		
		$refund_total = $this->refund_model->get_refund_total($filter_data);
		
		$data['refunds'] = array();
		
		if($refunds) 
		{			
			foreach($refunds as $refund)
			{	
				$data['refunds'][] = array(
					'refund_id'     => $refund['refund_id'],
					'product_id'    => $refund['product_id'],
					'product'       => $refund['name'],
					'upc'       	=> $refund['upc'],
					'sku'       	=> $refund['sku'],
					'location'      => $refund['location_name'],
					'batch'      	=> $refund['batch'],
					'quantity'      => $refund['quantity']
				);
			}
		}
		
		//excel export begin
 		$objPHPExcel = new PHPExcel();	
		$objPHPExcel->createSheet();
		$objPHPExcel->setActiveSheetIndex(0);
		
		$objPHPExcel->getActiveSheet()->getStyle('A1:F1')->getFont()->setSize(12);
		$objPHPExcel->getActiveSheet()->getStyle('A1:F1')->getFont()->setBold(true);

		$objPHPExcel->getActiveSheet()->SetCellValue('A1', $this->lang->line('column_name'));
		$objPHPExcel->getActiveSheet()->SetCellValue('B1', $this->lang->line('column_upc'));
		$objPHPExcel->getActiveSheet()->SetCellValue('C1', $this->lang->line('column_sku'));
		$objPHPExcel->getActiveSheet()->SetCellValue('D1', $this->lang->line('column_location'));
		$objPHPExcel->getActiveSheet()->SetCellValue('E1', $this->lang->line('column_batch'));
		$objPHPExcel->getActiveSheet()->SetCellValue('F1', $this->lang->line('column_quantity'));

		$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);	

		$i = 2;
		
		if($refunds) 
		{
			foreach($refunds as $refund)
			{	
				$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $refund['name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $refund['upc']);
				$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $refund['sku']);
				$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $refund['location_name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $refund['batch']);
				$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $refund['quantity']);

				$i++;
			}
		}
		
		PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);
		
		$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
		$objWriter->save(FCPATH  . 'assets/file/export/refund.xlsx'); 
		//excel export end
		
		$url = '';
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
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
	
		$this->pagination->total  = $refund_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'inventory/refund?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($refund_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($refund_total - $limit)) ? $refund_total : ((($page - 1) * $limit) + $limit), $refund_total, ceil($refund_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
			
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
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
		
		$data['sort_name']      = base_url() . 'inventory/refund?sort=product.name' . $url;
		$data['sort_upc']       = base_url() . 'inventory/refund?sort=product.upc' . $url;
		$data['sort_sku']       = base_url() . 'inventory/refund?sort=product.sku' . $url;
		$data['sort_location']  = base_url() . 'inventory/refund?sort=location.name' . $url;
		$data['sort_batch']  	= base_url() . 'inventory/refund?sort=inventory.batch' . $url;
		$data['sort_quantity']  = base_url() . 'inventory/refund?sort=refund.quantity' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'inventory/refund' . $url;
		
		$data['reload_url'] = base_url() . 'inventory/refund/reload' . $url;

		$url = '';
				
		if ($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('filter_sku')) 
		{
			$url .= '&filter_sku=' . $this->input->get('filter_sku');
		}
		
		if($this->input->get('filter_upc')) 
		{
			$url .= '&filter_upc=' . $this->input->get('filter_upc');
		}
		
		if($this->input->get('filter_location')) 
		{
			$url .= '&filter_location=' . $this->input->get('filter_location');
		}
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_sku']        = $filter_sku;
		$data['filter_upc']        = $filter_upc;
		$data['filter_location']   = $filter_location;
		
		//edit permission
		$data['modifiable'] = $this->auth->has_permission('modify', 'refund');
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('inventory/refund');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
	
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/refund_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');

		$this->header->add_style(base_url(). 'assets/css/app/inventory/refund_add.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
	
		$this->header->set_title($this->lang->line('text_refund_add'));
		
		$this->form_validation->set_rules('product_id', $this->lang->line('text_product'), 'required');
		$this->form_validation->set_rules('location_id', $this->lang->line('text_location'), 'required');
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required|regex_match[/^[0-9]*[1-9][0-9]*$/]');
	
		$data = array(
			'product_id'    => $this->input->post('product_id'),
			'location_id'   => $this->input->post('location_id'),
			'batch'    		=> $this->input->post('batch'),
			'quantity'      => $this->input->post('quantity')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->refund_model->add_refund($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_refund_add_success'));
			
			redirect(base_url() . 'inventory/refund', 'refresh');
		}
		
		//product
		$product_id = $this->input->post('product_id');
			
		$product = $this->product_model->get_product($product_id);
		
		$data['code'] = $product['name'];
			
		//location
		$location_id = $this->input->post('location_id');

		$location = $this->location_model->get_location($location_id);
		
		$data['location_name'] = $location['name'];
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/refund_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('inventory/refund');
		
		$this->load->model('catalog/product_model');
		$this->load->model('inventory/refund_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/refund_edit.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
	
		$this->header->set_title($this->lang->line('text_refund_edit'));
		
		$refund_id = $this->input->get('refund_id');
	
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required|regex_match[/^[0-9]*[1-9][0-9]*$/]');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'product_id'   => $this->input->post('product_id'),
				'location_id'  => $this->input->post('location_id'),
				'batch'    	   => $this->input->post('batch'),
				'quantity'     => $this->input->post('quantity')
			);
			
			$this->refund_model->edit_refund($refund_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_refund_edit_success'));
			
			redirect(base_url() . 'inventory/refund', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['product_id']   = $this->input->post('product_id');
			$data['location_id']  = $this->input->post('location_id');
			$data['batch']  	  = $this->input->post('batch');
			$data['quantity']     = $this->input->post('quantity');
			
			$product_id = $this->input->post('product_id');
			
			$product = $this->product_model->get_product($product_id);
			
			$data['product_name'] = $product['name'];
			
			$location_id = $this->input->post('location_id');
			
			$location = $this->location_model->get_location($location_id);
			
			$data['location_name'] = $location['name'];
		}
		else
		{
			$refund = $this->refund_model->get_refund($refund_id);	
		
			$data['product_id']   = $refund['product_id'];
			$data['location_id']  = $refund['location_id'];
			$data['batch']  	  = $refund['batch'];
			$data['quantity']     = $refund['quantity'];
		
			$product = $this->product_model->get_product($refund['product_id']);
			
			$data['product_name'] = $product['name'];
			
			$location_id = $refund['location_id'];
			
			$location = $this->location_model->get_location($location_id);
			
			$data['location_name'] = $location['name'];
		}
	
		$data['error']  = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/refund_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('inventory/refund_model');

		if($this->input->get('refund_id'))
		{
			$refund_id = $this->input->get('refund_id');
			
			$result = $this->refund_model->delete_refund($refund_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function bulk_delete()
	{
		$this->load->model('inventory/refund_model');

		if($this->input->post('refund_ids'))
		{
			$refund_ids = $this->input->post('refund_ids');
			
			$success = true;
			
			foreach($refund_ids as $refund_id)
			{
				if(!$this->refund_model->delete_refund($refund_id))
				{
					$success = false;
				}
			}
				
			$outdata = array(
				'success'     => ($success)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function validate_refund_add_unique()
	{
		$this->load->model('inventory/refund_model');
		
		$batch       = $this->input->post('batch');
		$product_id  = $this->input->post('product_id');
		$location_id = $this->input->post('location_id');

		$result = $this->refund_model->get_refund_by_location_batch_product($location_id, $batch, $product_id);
		
		if($result)
		{	
			$this->form_validation->set_message('validate_refund_add_unique', $this->lang->line('error_refund_add_unique'));

			return false;
		}
		else
		{
			return true;
		}			
	}
}


