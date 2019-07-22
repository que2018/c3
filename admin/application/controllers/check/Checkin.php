<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkin extends MX_Controller 
{
	public function index()
	{	
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('check/checkin');
		
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_list.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css');
	
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/moment.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js');

		$this->header->set_title($this->lang->line('text_checkin'));

		$data = $this->get_list();
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_list', $data);
	}
	
	public function reload()
	{
		$data = $this->get_list();
			
		$this->load->view('check/checkin_list_table', $data);
	}
	
	public function filter()
	{
		$data = $this->get_list();
			
		$this->load->view('check/checkin_list_filter', $data);
	}
	
	protected function get_list()
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
			
		if($this->input->get('filter_id'))
		{
			$filter_id = $this->input->get('filter_id');
		} 
		else 
		{
			$filter_id = '';
		}
		
		if($this->input->get('filter_tracking'))
		{
			$filter_tracking = $this->input->get('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
		}
		
		if($this->input->get('filter_note'))
		{
			$filter_note = $this->input->get('filter_note');
		} 
		else 
		{
			$filter_note = '';
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
		
		if ($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'date_added';
		}

		if ($this->input->get('order')) 
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
		
		if ($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		} 
		else 
		{
			$page = 1;
		}
		
		$filter_data = array(
			'filter_id'           => $filter_id,
			'filter_tracking'     => $filter_tracking,
			'filter_note'         => $filter_note,
			'filter_status'       => $filter_status,			
			'filter_date_added'   => $filter_date_added,
			'sort'                => $sort,
			'order'               => $order,
			'start'               => ($page - 1) * $limit,
			'limit'               => $limit
		);
		
		$checkins = $this->checkin_model->get_checkins($filter_data);	
		
		$checkin_total = $this->checkin_model->get_checkin_total($filter_data);
		
		$data['checkins'] = array();
		
		if($checkins) 
		{
			foreach($checkins as $checkin)
			{	
				$checkin_products = array();
				
				$checkin_products_data = $this->checkin_model->get_checkin_products($checkin['id']);	
				
				foreach($checkin_products_data as $checkin_product_data) {
					$checkin_products[] = array(
						'name'        => $checkin_product_data['name'],
						'batch'       => $checkin_product_data['batch'],
						'quantity'    => $checkin_product_data['quantity'],
						'location'    => $checkin_product_data['location_name']
					);
				}
			
				$data['checkins'][] = array(
					'checkin_id'       => $checkin['id'],
					'tracking'         => $checkin['tracking'],
					'note'             => $checkin['note'],
					'status'           => $checkin['status'],			
					'date_added'       => $checkin['date_added'],
					'checkin_products' => $checkin_products
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_note')) 
		{
			$url .= '&filter_note=' . $this->input->get('filter_note');
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
	
		$this->pagination->total  = $checkin_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'check/checkin?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($checkin_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($checkin_total - $limit)) ? $checkin_total : ((($page - 1) * $limit) + $limit), $checkin_total, ceil($checkin_total / $limit));

		$url = '';
		
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_note')) 
		{
			$url .= '&filter_note=' . $this->input->get('filter_note');
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
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['sort_id']           = base_url() . 'check/checkin?sort=id' . $url;
		$data['sort_tracking']     = base_url() . 'check/checkin?sort=tracking' . $url;
		$data['sort_note']         = base_url() . 'check/checkin?sort=note' . $url;
		$data['sort_status']       = base_url() . 'check/checkin?sort=status' . $url;
		$data['sort_date_added']   = base_url() . 'check/checkin?sort=date_added' . $url;
	
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
		
		$data['filter_url'] = base_url() . 'check/checkin/filter' . $url;
	
		$url = '';
		
		if($this->input->get('limit')) 
		{
			$url .= '?limit='.$this->input->get('limit');
		}
		else
		{
			$url .= '?limit='.$this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$url .= '&page='.$this->input->get('page');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort='.$this->input->get('sort');
		}
		
		if($this->input->get('filter_id')) 
		{
			$url .= '&filter_id=' . $this->input->get('filter_id');
		}
		
		if($this->input->get('filter_tracking')) 
		{
			$url .= '&filter_tracking=' . $this->input->get('filter_tracking');
		}
		
		if($this->input->get('filter_note')) 
		{
			$url .= '&filter_note=' . $this->input->get('filter_note');
		}
		
		if($this->input->get('filter_status')) 
		{
			$url .= '&filter_status=' . $this->input->get('filter_status');
		}
		
		if($this->input->get('filter_date_added')) 
		{
			$url .= '&filter_date_added=' . $this->input->get('filter_date_added');
		}
	
		$data['reload_url'] = base_url() . 'check/checkin/reload' . $url;

		$data['sort']   = $sort;
		$data['order']  = $order;
		$data['limit']  = $limit;
		
		$data['filter_id']           = $filter_id;
		$data['filter_tracking']     = $filter_tracking;
		$data['filter_note']         = $filter_note;
		$data['filter_status']       = $filter_status;
		$data['filter_date_added']   = $filter_date_added;
				
		return $data;
	}
	
	public function add()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('check/checkin');
		
		$this->load->library('currency');
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
	
		$this->header->add_style(base_url(). 'assets/css/plugins/jasny/jasny-bootstrap.min.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_edit.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_edit.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_checkin_add'));

		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_add_tracking');
		$this->form_validation->set_rules('checkin_product', $this->lang->line('text_product'), 'callback_validate_checkin_product');
		$this->form_validation->set_rules('checkin_fee', $this->lang->line('text_checkin_fee'), 'callback_validate_checkin_fee');

		$data = array(
			'tracking'          => $this->input->post('tracking'),
			'status'            => $this->input->post('status'),
			'checkin_fees'  	=> $this->input->post('checkin_fee'),
			'note'              => $this->input->post('note')
		);
		  
		$checkin_products = $this->input->post('checkin_product');
		
		$data['checkin_products'] = array();
			
		if($checkin_products)
		{	
			foreach($checkin_products as $checkin_product) 
			{
				$product_id = $checkin_product['product_id'];
				
				$product_info = $this->product_model->get_product($product_id);	
				
				$data['checkin_products'][] = array(
					'product_id'     => $product_id,
					'name'           => $product_info['name'],
					'upc'            => $product_info['upc'],
					'sku'            => $product_info['sku'],
					'batch'          => $checkin_product['batch'],
					'quantity'       => $checkin_product['quantity'],
					'location_id'    => $checkin_product['location_id'],
					'location_name'  => $checkin_product['location_name']
				);
			}
		}
		
		if($this->form_validation->run() == true)
		{
			$this->checkin_model->add_checkin($data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkin_add_success'));
			
			redirect(base_url() . 'check/checkin', 'refresh');
		}
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_add', $data);
	}
	
	public function edit()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('check/checkin');
		
		$this->load->library('phpexcel');
		$this->load->library('currency');
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
	
		$this->header->add_style(base_url(). 'assets/css/plugins/jasny/jasny-bootstrap.min.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_edit.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/summernote/summernote-bs3.css');
		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_edit.css');
		
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/summernote/summernote.min.js');
		
		$this->header->set_title($this->lang->line('text_checkin_edit'));	
		
		$checkin_id = $this->input->get('checkin_id');
		
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		//$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_edit_tracking');
		$this->form_validation->set_rules('checkin_product', $this->lang->line('text_product'), 'callback_validate_checkin_product');
		$this->form_validation->set_rules('checkin_fee', $this->lang->line('text_checkin_fee'), 'callback_validate_checkin_fee');

		if($this->form_validation->run() == true)
		{
			$data = array(
				'tracking'          => $this->input->post('tracking'),
				'status'            => $this->input->post('status'),
				'checkin_products'  => $this->input->post('checkin_product'),
				'checkin_fees'     => $this->input->post('checkin_fee'),
				'note'              => $this->input->post('note')		
			);
				
			$this->checkin_model->edit_checkin($checkin_id, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_checkin_edit_success'));
			
			redirect(base_url() . 'check/checkin', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data['checkin_id']     = $this->input->get('checkin_id');
			$data['tracking']       = $this->input->post('tracking');
			$data['note']           = $this->input->post('note');
			$data['status']         = $this->input->post('status');
			$data['checkin_fees']   = $this->input->post('checkin_fee');
		
			$checkin_products = $this->input->post('checkin_product');
			
			$data['checkin_products'] = array();
			
			if($checkin_products)
		    {	
				foreach($checkin_products as $checkin_product) 
				{
					$product_info = $this->product_model->get_product($checkin_product['product_id']);	
					
					$data['checkin_products'][] = array(
						'product_id'     => $checkin_product['product_id'],
						'name'           => $product_info['name'],
						'upc'            => $product_info['upc'],
						'sku'            => $product_info['sku'],
						'batch'          => $checkin_product['batch'],
						'quantity'       => $checkin_product['quantity'],
						'location_id'    => $checkin_product['location_id'],
						'location_name'  => $checkin_product['location_name']
					);
				}
			}	
		}
		else
		{
			$checkin = $this->checkin_model->get_checkin($checkin_id);	
		
			$data['tracking']      = $checkin['tracking'];
			$data['note']          = $checkin['note'];
			$data['status']        = $checkin['status'];

			$data['checkin_products'] = array();
			
			$checkin_products = $this->checkin_model->get_checkin_products($checkin_id);	
			
			foreach($checkin_products as $checkin_product) {
				$data['checkin_products'][] = array(
					'product_id'     => $checkin_product['product_id'],
					'name'           => $checkin_product['name'],
					'upc'            => $checkin_product['upc'],
					'sku'            => $checkin_product['sku'],
					'batch'          => $checkin_product['batch'],
					'quantity'       => $checkin_product['quantity'],
					'location_id'    => $checkin_product['location_id'],
					'location_name'  => $checkin_product['location_name']
				);
			}
			
			$data['checkin_fees'] = array();
			
			$checkin_fees = $this->checkin_model->get_checkin_fees($checkin_id);	
			
			if($checkin_fees) 
			{
				foreach($checkin_fees as $checkin_fee) 
				{
					$data['checkin_fees'][] = array(
						'name'   => $checkin_fee['name'],
						'amount' => $checkin_fee['amount']
					);
				}
			}
			
			//excel export begin
			$objPHPExcel = new PHPExcel();	
			$objPHPExcel->createSheet();
			$objPHPExcel->setActiveSheetIndex(0);
			
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);	
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);	
			
			$objPHPExcel->getActiveSheet()->mergeCells('A1:F1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:F1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('E1:F1')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->SetCellValue('A1', sprintf($this->lang->line('text_checkin_edit_title'), $checkin_id));
			
			$objPHPExcel->getActiveSheet()->mergeCells('A2:C2');
			$objPHPExcel->getActiveSheet()->mergeCells('D2:F2');
			$objPHPExcel->getActiveSheet()->getStyle('A2:F2')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:F2')->getFont()->setBold(true);
			
			$objPHPExcel->getActiveSheet()->SetCellValue('A2', sprintf($this->lang->line('text_excel_tracking'), $checkin['tracking']));
			
			if($checkin['status']) 
			{
				$objPHPExcel->getActiveSheet()->SetCellValue('D2', $this->lang->line('text_excel_pending'));
			} 
			else 
			{
				$objPHPExcel->getActiveSheet()->SetCellValue('D2', $this->lang->line('text_excel_completed'));
			}

			$objPHPExcel->getActiveSheet()->getStyle('A3:F3')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->SetCellValue('A3', $this->lang->line('column_name'));
			$objPHPExcel->getActiveSheet()->SetCellValue('B3', $this->lang->line('column_upc'));
			$objPHPExcel->getActiveSheet()->SetCellValue('C3', $this->lang->line('column_sku'));
			$objPHPExcel->getActiveSheet()->SetCellValue('D3', $this->lang->line('column_batch'));
			$objPHPExcel->getActiveSheet()->SetCellValue('E3', $this->lang->line('column_quantity'));
			$objPHPExcel->getActiveSheet()->SetCellValue('F3', $this->lang->line('column_location'));
			
			$i = 4;
			
			if($checkin_products) 
			{
				foreach($checkin_products as $checkin_product)
				{					
					$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $checkin_product['name']);
					$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $checkin_product['upc']);
					$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $checkin_product['sku']);
					$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $checkin_product['batch']);
					$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $checkin_product['quantity']);
					$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $checkin_product['location_name']);
				
					$i++;
				}
			}
			
			PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);
			
			$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
			$objWriter->save(FCPATH  . 'assets/file/export/checkin.xlsx');
			//excel export end
		}
		
		$data['checkin_id'] = $checkin_id;		
			
		$data['error'] = validation_errors();	
												
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_edit', $data);
	}
	
	public function delete()
	{
		$this->load->model('check/checkin_model');
		
		if($this->input->get('checkin_id'))
		{
			$checkin_id = $this->input->get('checkin_id');
			
			$result = $this->checkin_model->delete_checkin($checkin_id);

			$outdata = array(
				'success'   => ($result)?true:false
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function validate_add_tracking($tracking)
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');

		if($tracking)
		{
			$result = $this->checkin_model->get_checkin_by_tracking($tracking);
		
			if($result)
			{
				$this->form_validation->set_message('validate_add_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
						
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}
	
	public function validate_edit_tracking($tracking)
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');

		if($tracking)
		{
			$result = $this->checkin_model->get_checkin_by_tracking($tracking);
		
			if($result)
			{
				$checkin_id = $this->input->get('checkin_id');
				
				if($checkin_id != $result['id'])
				{
				$this->form_validation->set_message('validate_edit_tracking', sprintf($this->lang->line('error_tracking_is_used'), $tracking));
					
					return false;
				}
				else
				{
					return true;
				}
			}
			else
			{
				return true;
			}
		}
		else
		{
			return true;
		}
	}

	public function validate_checkin_product($checkin_products)
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
	
		if($this->input->post('checkin_product'))
		{
			$validated = true;
			
			$message = '';
			
			$checkin_products = $this->input->post('checkin_product');
			
			foreach($checkin_products as $checkin_product)
			{
				$product_id   = $checkin_product['product_id'];
				$quantity     = $checkin_product['quantity'];
				$location_id  = $checkin_product['location_id'];
				
				if(!preg_match("/^[1-9]\d*$/", $quantity))
				{
					$product = $this->product_model->get_product($product_id);
					
					$message .= sprintf($this->lang->line('error_checkin_product_quantity_format'), $product['name']);
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
				
				if(empty($location_id))
				{	
					$product = $this->product_model->get_product($product_id);
								
					$message .= sprintf($this->lang->line('error_checkin_product_location_required'), $product['name']);
					$message .= '<br>';
					
					if($validated)
						$validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkin_product', $message);
			}
			
			return $validated;
		}
		else
		{
			$this->form_validation->set_message('validate_checkin_product', $this->lang->line('error_checkin_product_required'));
			
			return false;
		}	
	}
	
	public function validate_checkin_fee()
	{	
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
		
		if($this->input->post('checkin_fee'))
		{
			$validated = true;
			
			$error_message = '';
			
			$checkin_fees = $this->input->post('checkin_fee');
			
			foreach($checkin_fees as $row => $checkin_fee)
			{
				$name = $checkin_fee['name'];
				$amount = $checkin_fee['amount'];
				
				if(!$name)
				{
					$error_message .= sprintf($this->lang->line('error_checkin_fee_row_name_required'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
				
				if(!$amount)
				{
					$error_message .= sprintf($this->lang->line('error_checkin_fee_row_amount_required'), ($row + 1));
					$error_message .= '<br>';
					
					if($validated) 
						$validated = false;
				}
			}
			
			$clients_ids = array();
			
			$checkin_products = $this->input->post('checkin_product');
			
			foreach($checkin_products as $checkin_product)
			{
				$product = $this->product_model->get_product($checkin_product['product_id']);
				
				if(!$product['client_id']) 
				{
					$error_message .= $this->lang->line('error_no_client_fee_notice');
					$error_message .= '<br>';
				
					if($validated) 
						$validated = false;
				}
				else
				{
					$clients_ids[] = $product['client_id'];
				}
			}
			
			$clients_ids = array_unique($clients_ids);
			
			if(sizeof($clients_ids) > 1)
			{
				$error_message .= $this->lang->line('error_multi_client_fee_notice');
				$error_message .= '<br>';
				
				if($validated) 
					$validated = false;
			}
			 
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkin_fee', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{			
			return true;
		}	
	}
}


