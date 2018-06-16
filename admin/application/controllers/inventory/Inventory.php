<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inventory extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('inventory/inventory');
		
		$this->header->add_style(base_url(). 'assets/css/app/inventory/inventory_list.css');
	
		$this->header->set_title($this->lang->line('text_inventory_list'));
	
		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('inventory/inventory_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('inventory/inventory_list_table', $data);
	}
	
	protected function get_list()
	{
		$this->load->library('phpexcel');
		
		$this->lang->load('inventory/inventory');
		
		$this->load->model('client/client_model');
		$this->load->model('inventory/inventory_model');
				                   	
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
			'filter_type'          => 0,
			'sort'                 => $sort,
			'order'                => $order,
			'start'                => ($page - 1) * $limit,
			'limit'                => $limit
		);
		
		$inventories = $this->inventory_model->get_inventories($filter_data);	
		
		$inventory_total = $this->inventory_model->get_inventory_total($filter_data);
		
		$data['inventories'] = array();
		
		if($inventories) 
		{
			$this->load->model('catalog/product_model');
			
			foreach($inventories as $inventory)
			{	
				$product_info = $this->product_model->get_product($inventory['product_id']);	
			
				$data['inventories'][] = array(
					'inventory_id'  => $inventory['id'],
					'client'        => $inventory['client'],
					'product_id'    => $inventory['product_id'],
					'product'       => $product_info['name'],
					'upc'       	=> $product_info['upc'],
					'sku'       	=> $product_info['sku'],
					'location'      => $inventory['location_name'],
					'quantity'      => $inventory['quantity'],
					'date_modified' => $inventory['date_modified']
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
		$objPHPExcel->getActiveSheet()->SetCellValue('D1', $this->lang->line('column_client'));
		$objPHPExcel->getActiveSheet()->SetCellValue('E1', $this->lang->line('column_location'));
		$objPHPExcel->getActiveSheet()->SetCellValue('F1', $this->lang->line('column_quantity'));
		
		$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);	
		
		$i = 2;
		
		if($inventories) 
		{
			foreach($inventories as $inventory)
			{	
				$product_info = $this->product_model->get_product($inventory['product_id']);	
			
				$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $product_info['name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $product_info['upc']);
				$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $product_info['sku']);
				$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $inventory['client']);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $inventory['location_name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $inventory['quantity']);
			
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
		$this->pagination->url    = base_url() . 'inventory/inventory/load?page={page}' . $url;
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
		
		$data['sort_product']    = base_url() . 'inventory/inventory?sort=product.name' . $url;
		$data['sort_upc']        = base_url() . 'inventory/inventory?sort=product.upc' . $url;
		$data['sort_sku']        = base_url() . 'inventory/inventory?sort=product.sku' . $url;
		$data['sort_location']   = base_url() . 'inventory/inventory?sort=location.name' . $url;
		$data['sort_client']     = base_url() . 'inventory/inventory?sort=client' . $url;
		$data['sort_quantity']   = base_url() . 'inventory/inventory?sort=inventory.quantity' . $url;
		
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
		
		$data['filter_url'] = base_url() . 'inventory/inventory' . $url;
		
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
		
		$data['batch_url']  = base_url() . 'inventory/inventory_batch' . $url;
		
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_client_id']      = $filter_client_id;
		$data['filter_location']       = $filter_location;
		$data['filter_sku']            = $filter_sku;
		$data['filter_upc']            = $filter_upc;
		
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
		
		return $data;
	}
}


