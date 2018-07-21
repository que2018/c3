<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inventory_batch extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('inventory/inventory');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/inventory_list.css');
	
		$this->header->set_title($this->lang->line('text_inventory_list'));
	
		$data = $this->get_list_batch();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/inventory_batch_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list_batch();
			
		$this->load->view('inventory/inventory_batch_list_table', $data);
	}
	
	protected function get_list_batch()
	{
		$this->load->library('phpexcel');
		
		$this->lang->load('inventory/inventory');
		
		$this->load->model('client/client_model');
		$this->load->model('inventory/inventory_model');
		
		$data['success'] = $this->session->flashdata('success');
		                   	
		if($this->input->get('filter_client_id'))
		{
			$filter_client_id = $this->input->get('filter_client_id');
		} 
		else 
		{
			$filter_client_id = '';
		}
		
		if($this->input->get('filter_location'))
		{
			$filter_location = $this->input->get('filter_location');
		} 
		else 
		{
			$filter_location = '';
		}
		
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
			$sort = 'inventory.date_modified';
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
			'filter_client_id'     => $filter_client_id,
			'filter_location'      => $filter_location,
			'filter_sku'    	   => $filter_sku,
			'filter_upc'    	   => $filter_upc,
			'filter_batch'    	   => $filter_batch,
			'sort'                 => $sort,
			'order'                => $order,
			'start'                => ($page - 1) * $limit,
			'limit'                => $limit
		);
		
		$inventories = $this->inventory_model->get_batch_inventories($filter_data);	
		
		$inventory_total = $this->inventory_model->get_batch_inventory_total($filter_data);
		
		$data['inventories'] = array();
		
		if($inventories) 
		{
			$this->load->model('catalog/product_model');
			
			foreach($inventories as $inventory)
			{	
				$product_info = $this->product_model->get_product($inventory['product_id']);	
			
				$data['inventories'][] = array(
					'inventory_id'  => $inventory['id'],
					'product_id'    => $inventory['product_id'],
					'product'       => $product_info['name'],
					'upc'       	=> $product_info['upc'],
					'sku'       	=> $product_info['sku'],
					'location'      => $inventory['location_name'],
					'batch'         => $inventory['batch'],
					'quantity'      => $inventory['quantity'],
					'date_modified' => $inventory['date_modified']
				);
			}
		}
		
		//excel export begin
		$objPHPExcel = new PHPExcel();	
		$objPHPExcel->createSheet();
		$objPHPExcel->setActiveSheetIndex(0);
		
		$objPHPExcel->getActiveSheet()->getStyle('A1:G1')->getFont()->setSize(12);
		$objPHPExcel->getActiveSheet()->getStyle('A1:G1')->getFont()->setBold(true);

		$objPHPExcel->getActiveSheet()->SetCellValue('A1', $this->lang->line('column_name'));
		$objPHPExcel->getActiveSheet()->SetCellValue('B1', $this->lang->line('column_upc'));
		$objPHPExcel->getActiveSheet()->SetCellValue('C1', $this->lang->line('column_sku'));
		$objPHPExcel->getActiveSheet()->SetCellValue('D1', $this->lang->line('column_client'));
		$objPHPExcel->getActiveSheet()->SetCellValue('E1', $this->lang->line('column_location'));
		$objPHPExcel->getActiveSheet()->SetCellValue('F1', $this->lang->line('column_batch'));
		$objPHPExcel->getActiveSheet()->SetCellValue('G1', $this->lang->line('column_quantity'));

		$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);	

		$i = 2;
		
		$filter_data = array(
			'filter_client_id'     => $filter_client_id,
			'filter_location'      => $filter_location,
			'filter_sku'    	   => $filter_sku,
			'filter_upc'    	   => $filter_upc,
			'filter_batch'    	   => $filter_batch,
			'sort'                 => $sort,
			'order'                => $order
		);
		
		$inventories_excel = $this->inventory_model->get_batch_inventories($filter_data);	
		
		if($inventories_excel) 
		{
			foreach($inventories_excel as $inventory)
			{	
				$product_info = $this->product_model->get_product($inventory['product_id']);	
			
				$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $product_info['name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $product_info['upc']);
				$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $product_info['sku']);
				$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $inventory['client']);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $inventory['location_name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $inventory['batch']);
				$objPHPExcel->getActiveSheet()->SetCellValue('G'.$i, $inventory['quantity']);

				$i++;
			}
		}
		
		PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);
		
		$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
		$objWriter->save(FCPATH  . 'assets/file/export/inventory.xlsx');
		//excel export end
		
		$url = '';
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
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
		
		if($this->input->get('filter_batch')) 
		{
			$url .= '&filter_batch=' . $this->input->get('filter_batch');
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
	
		$this->pagination->total  = $inventory_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'inventory/inventory_batch?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($inventory_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($inventory_total - $limit)) ? $inventory_total : ((($page - 1) * $limit) + $limit), $inventory_total, ceil($inventory_total / $limit));
		
		$url = '';
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
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
		
		if($this->input->get('filter_batch')) 
		{
			$url .= '&filter_batch=' . $this->input->get('filter_batch');
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
		
		$data['sort_product']     = base_url() . 'inventory/inventory_batch?sort=product.name' . $url;
		$data['sort_upc']         = base_url() . 'inventory/inventory_batch?sort=product.upc' . $url;
		$data['sort_sku']         = base_url() . 'inventory/inventory_batch?sort=product.sku' . $url;
		$data['sort_location']    = base_url() . 'inventory/inventory_batch?sort=location.name' . $url;
		$data['sort_client']      = base_url() . 'inventory/inventory_batch?sort=client' . $url;
		$data['sort_batch']       = base_url() . 'inventory/inventory_batch?sort=inventory.batch' . $url;
		$data['sort_quantity']    = base_url() . 'inventory/inventory_batch?sort=inventory.quantity' . $url;
		
		$url = '';
		
		if($this->input->get('limit')) 
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
		
		$data['filter_url'] = base_url() . 'inventory/inventory_batch' . $url;
		
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
			$url .= '&page=' . $this->input->get('page');
		}
				
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
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
		
		$data['reload_url'] = base_url() . 'inventory/inventory_batch/reload' . $url;

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
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('filter_client_id')) 
		{
			$url .= '&filter_client_id=' . $this->input->get('filter_client_id');
		}
		
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
		
		$data['non_batch_url']  = base_url() . 'inventory/inventory' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_client_id']  = $filter_client_id;
		$data['filter_location']   = $filter_location;
		$data['filter_sku']        = $filter_sku;
		$data['filter_upc']        = $filter_upc;
		$data['filter_batch']      = $filter_batch;
		
		//clients
		$data['clients'] = array();
		
		$clients = $this->client_model->get_clients();
		
		if($clients)
		{
			foreach($clients as $client)
			{	
				$data['clients'][] = array(
					'client_id'    => $client['id'],
					'name'         => $client['name']
				);	
			}
		}
		
		//edit permission
		$data['modifiable'] = $this->auth->has_permission('modify', 'inventory');
		
		return $data;
	}
	
	public function add() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('inventory/inventory');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
	
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
		$this->load->model('inventory/inventory_model');

		$this->header->add_style(base_url(). 'assets/css/app/inventory/inventory_add.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
	
		$this->header->set_title($this->lang->line('text_inventory_add'));
		
		$this->form_validation->set_rules('product_id', $this->lang->line('text_product'), 'required');
		$this->form_validation->set_rules('location_id', $this->lang->line('text_location'), 'required');
		$this->form_validation->set_rules('batch', $this->lang->line('text_batch'), 'callback_validate_inventory_add_unique');
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required|regex_match[/^[0-9]*[1-9][0-9]*$/]');
	
		$data = array(
			'product_id'     => $this->input->post('product_id'),
			'location_id'    => $this->input->post('location_id'),
			'batch'          => $this->input->post('batch'),
			'quantity'       => $this->input->post('quantity')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->inventory_model->add_inventory($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_inventory_add_success'));
			
			redirect(base_url() . 'inventory/inventory_batch', 'refresh');
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
		
		$this->load->view('inventory/inventory_add', $data);
	}
	
	public function edit() 
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('inventory/inventory');
		
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('warehouse/warehouse_model');
		$this->load->model('inventory/inventory_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/inventory_edit.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
	
		$this->header->set_title($this->lang->line('text_inventory_edit'));
		
		$inventory_id = $this->input->get('inventory_id');
	
		$this->form_validation->set_rules('quantity', $this->lang->line('text_quantity'), 'required|regex_match[/^[0-9]*[1-9][0-9]*$/]');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'product_id'     => $this->input->post('product_id'),
				'location_id'    => $this->input->post('location_id'),
				'batch'          => $this->input->post('batch'),
				'quantity'       => $this->input->post('quantity')
			);
			
			$this->inventory_model->edit_inventory($inventory_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_inventory_edit_success'));
			
			redirect(base_url() . 'inventory/inventory_batch', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['product_id']   = $this->input->post('product_id');
			$data['location_id']  = $this->input->post('location_id');
			$data['batch']        = $this->input->post('batch');
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
			$inventory = $this->inventory_model->get_inventory($inventory_id);	
		
			$data['product_id']   = $inventory['product_id'];
			$data['location_id']  = $inventory['location_id'];
			$data['batch']        = $inventory['batch'];
			$data['quantity']     = $inventory['quantity'];
		
			$product = $this->product_model->get_product($inventory['product_id']);
			
			$data['product_name'] = $product['name'];
			
			$location_id = $inventory['location_id'];
			
			$location = $this->location_model->get_location($location_id);
			
			$data['location_name'] = $location['name'];
		}
	
		$data['error']  = validation_errors();
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/inventory_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('inventory/inventory_model');

		if($this->input->get('inventory_id'))
		{
			$inventory_id = $this->input->get('inventory_id');
			
			$result = $this->inventory_model->delete_inventory($inventory_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function bulk_delete()
	{
		$this->load->model('inventory/inventory_model');

		if($this->input->post('inventory_ids'))
		{
			$inventory_ids = $this->input->post('inventory_ids');
			
			$success = true;
			
			foreach($inventory_ids as $inventory_id)
			{
				if(!$this->inventory_model->delete_inventory($inventory_id))
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
	
	function validate_inventory_add_unique()
	{
		$this->load->model('inventory/inventory_model');
		
		$batch       = $this->input->post('batch');
		$product_id  = $this->input->post('product_id');
		$location_id = $this->input->post('location_id');

		$result = $this->inventory_model->get_inventory_by_location_batch_product($location_id, $batch, $product_id);
		
		if($result)
		{	
			$this->form_validation->set_message('validate_inventory_add_unique', $this->lang->line('error_inventory_add_unique'));

			return false;
		}
		else
		{
			return true;
		}			
	}
}


