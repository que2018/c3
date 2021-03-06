<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_ajax extends CI_Controller 
{	
	public function get_product()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		
		//code empty
		if(!$this->input->post('code'))
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_code_empty')
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
		
		//can't find product
		$code = $this->input->post('code');
		
		$code = trim($code);		
		
		$this->load->model('catalog/product_model');
		
		$key = 'upc';
		
		$results = $this->product_model->find_product_by_upc($code);
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_sku($code);
			
			$key = 'sku';
		}
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_asin($code);
			
			$key = 'asin';
		}
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_name($code);	
			
			$key = 'name';
		}
			
		if(!$results)
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_product_not_found')
			);
			
			echo json_encode($outdata);
			die();
		}
		 
		//find product
		$products = array();
		
		foreach($results as $result)
		{
			$product_info = $this->product_model->get_product($result['id']);
		
			$products[] = array(
				'label'       => $product_info[$key],
				'product_id'  => $product_info['id'],
				'upc'         => $product_info['upc'],
				'sku'         => $product_info['sku'],
				'asin'        => $product_info['asin'],
				'name'        => $product_info['name']
			);
		}
	
		$outdata = array(
			'success'   => true,
			'products'  => $products
		);
			
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_sale_products_volume()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('catalog/product_model');
		$this->load->model('setting/length_class_model');

		if($this->input->post('sale_product'))
		{
			$sale_products = $this->input->post('sale_product');
							
			$volume = $this->sale_model->get_sale_products_volume($sale_products);
						
			$outdata = array(
				'length'           => $volume['length'],
				'width'            => $volume['width'],
				'height'  		   => $volume['height'],
				'length_class_id'  => $volume['length_class_id']
			);
		} 
		else
		{
			$outdata = array(
				'length'           => 0,
				'width'            => 0,
				'height'  		   => 0,
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_sale_products_weight()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('catalog/product_model');
		$this->load->model('setting/weight_class_model');

		if($this->input->post('sale_product'))
		{
			$sale_products = $this->input->post('sale_product');
			
			$weight = $this->sale_model->get_sale_products_weight($sale_products);

			$outdata = array(
				'weight'  		   => $weight['weight'],
				'weight_class_id'  => $weight['weight_class_id']
			);
		}
		else
		{			
			$outdata = array(
				'weight'  		   => 0,
				'weight_class_id'  => $this->config->item('config_weight_class_id')
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}

	public function checkout()
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('check/checkout_model');
		$this->load->model('catalog/product_model');
		
		$sale_id = $this->input->get('sale_id');
		
		$checkout = $this->checkout_model->get_sale_checkout($sale_id);	
		
		if($checkout['status'] == 2)
		{
			$outdata = array(
				'success'   => false,
				'message'   => $this->lang->line('error_sale_checkout_completed_notice')
			);	
		}
		else 
		{
			$sale_products = $this->input->post('sale_product');
			
			$checkout_products = array();
			
			foreach($sale_products as $product_id => $location_id)
			{
				$sale_product = $this->sale_model->get_sale_product($sale_id, $product_id);	
				
				$checkout_products[] = array(	
					'product_id'    => $product_id,
					'quantity'      => $sale_product['quantity'],
					'location_id'   => $location_id
				);
			}
		
			//checkout fee
			$checkout_fees = array();
			
			foreach($sale_products as $product_id)
			{
				$product_fees = $this->product_model->get_product_fees($product_id);	
				
				if($product_fees)
				{
					foreach($product_fees as $product_fee)
					{
						if($product_fee['type'] == 2)
						{
							$checkout_fees[] = array(
								'name'    => $product_fee['name'],
								'amount'  => $product_fee['amount']
							);
						}
					}
				}
			}
			
			$checkout_data = array(
				'sale_id'           => $sale_id,
				'tracking'          => '',
				'status'            => 1,
				'note'              => $this->lang->line('text_note_sale_checkout', $sale_id),
				'checkout_products' => $checkout_products,
				'checkout_fees'     => $checkout_fees
			);
			
			if($checkout)
			{
				$this->checkout_model->edit_checkout($checkout_data);	
			}
			else
			{	
				$this->checkout_model->add_checkout($checkout_data);	
			}
			
			$outdata = array(
				'success'   => true,
				'message'   => $this->lang->line('text_checkout_record_is_generated')				
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_tracking_detail()
	{		
		$this->load->model('sale/sale_model');
		
		if($this->input->get('sale_id')) 
		{
			$sale_id = $this->input->get('sale_id');
			
			$sale = $this->sale_model->get_sale($sale_id);	
			
			$tracking = $sale['tracking'];
			
			$code = $sale['shipping_provider'];
			
			$this->load->model('tracking/'. $code .'_model');

			$tracking_details = $this->{$code . '_model'}->get_tracking_detail($tracking);
		
			$outdata['tracking_details'] = $tracking_details;
		
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function update_tracking()
	{
		$this->load->model('sale/sale_model');
		
		$sale_id  = $this->input->post('sale_id');
		$tracking = $this->input->post('tracking');
			
		$result = $this->sale_model->update_tracking($sale_id, $tracking);
			
		$outdata = array(
			'success'     => ($result)?true:false
		);
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function change_status()
	{
		$this->load->library('mail');
		
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');
		$this->load->model('check/checkout_model');
		
		if($this->input->get('sale_id'))
		{
			$sale_id = $this->input->get('sale_id');
			
			$sale = $this->sale_model->get_sale($sale_id);
			
			$sale_products = $this->sale_model->get_sale_products($sale_id);
			
			$checkout = $this->checkout_model->get_sale_checkout($sale_id);

			$status = 0;	
			$message = null;

			if(!$checkout) 
			{
				$result = $this->validate_sale_checkout($sale_id);

				if($result['success'])
				{		
					$data = array(
						'sale_id'            => $sale_id,
						'tracking'           => '',
						'status'             => 1,
						'length'	         => $sale['length'],
						'width'	             => $sale['width'],
						'height'	         => $sale['height'],
						'weight'	         => $sale['weight'],
						'length_class_id'	 => $sale['length_class_id'],
						'weight_class_id'	 => $sale['weight_class_id'],
						'shipping_provider'	 => $sale['shipping_provider'],
						'shipping_service'	 => $sale['shipping_service'],
						'checkout_fee_code'	 => $this->config->item('config_default_checkout_fee'),
						'note'               => '',
						'checkout_products'  => $result['checkout_products']
					);
					
					$checkout_id = $this->checkout_model->add_checkout($data);

					$success = true;
					$status = 2;	
				}
				else
				{
					$success = false;
					$status = 4;	
					$message = $result['message'];
				}
			}
			else
			{
				$checkout_id = $checkout['id'];
				
				if($checkout['status'] == 1) 
				{
					$result = $this->validate_sale_checkout($sale_id);
					
					if($result['success'])
					{
						$this->checkout_model->complete_checkout($checkout_id);
					
						$success = true;
						$status = 3;	
					}
					else
					{
						$success = false;
						$status = 4;
						$message = $result['message'];
					}
				}
				
				if($checkout['status'] == 2)
				{
					$result = $this->checkout_model->uncomplete_checkout($checkout_id);
					
					$success = true;
					$status = 2;
				}
			}
			
			//send mail
			if($this->config->item('config_smtp_enabled') && $status != 4) 
			{
				$store_id = $sale['store_id'];
				$store = $this->store_model->get_store($store_id);
				
				$client_id = $store['client_id'];
				$client = $this->client_model->get_client($client_id);
				
				$this->mail->protocol = 'smtp';
				$this->mail->smtp_hostname = $this->config->item('config_smtp_hostname');
				$this->mail->smtp_username = $this->config->item('config_smtp_username');
				$this->mail->smtp_password = $this->config->item('config_smtp_password');
				$this->mail->smtp_port = $this->config->item('config_smtp_port');

				$this->mail->setTo($client['email']);
				$this->mail->setFrom($this->config->item('config_smtp_username'));
				$this->mail->setSender($this->config->item('config_smtp_sender')); 
				
				if($status == 1) 
				{
					$this->mail->setSubject(sprintf($this->lang->line('text_checkout_record_generated'), $sale_id));
				}
				
				if($status == 2) 
				{
					$this->mail->setSubject(sprintf($this->lang->line('text_checkout_record_checking_out'), $sale_id));
				}
				
				if($status == 3) 
				{
					$this->mail->setSubject(sprintf($this->lang->line('text_checkout_record_completed'), $sale_id));
				}
							
				$html  = '<div><strong>'.$this->lang->line('text_order_detail').'</strong></div>';
				$html .= '<br>';
				
				foreach($sale_products as $sale_product)
				{
					$html .= '<div>';
					$html .= '<span><strong>'.$this->lang->line('entry_product_name').':&nbsp;</strong>'.$sale_product['name'].'</spans>&nbsp;&nbsp;';
					$html .= '<span><strong>'.$this->lang->line('entry_product_quantity').':&nbsp;</strong>'.$sale_product['quantity'].'</spans>';
					$html .= '</div>';
				}
				
				$this->mail->setHtml($html);
			
				$this->mail->send();
			}
			
			$outdata = array(
				'success'   => $success,
				'status'    => $status,
				'message'   => $message
			);
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function export_sale() 
	{
		$this->lang->load('sale/sale');
	
		$this->load->library('phpexcel');

		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		
		//excel export begin
		$objPHPExcel = new PHPExcel();	
		$objPHPExcel->createSheet();
		$objPHPExcel->setActiveSheetIndex(0);
		
		$objPHPExcel->getActiveSheet()->getStyle('A1:P1')->getFont()->setSize(12);
		$objPHPExcel->getActiveSheet()->getStyle('A1:P1')->getFont()->setBold(true);
		
		$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('M')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setAutoSize(true);
		$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setAutoSize(true);
		
		$objPHPExcel->getActiveSheet()->setCellValue('A1', $this->lang->line('column_sale_id'));
		$objPHPExcel->getActiveSheet()->setCellValue('B1', $this->lang->line('column_store_order_id'));
		$objPHPExcel->getActiveSheet()->setCellValue('C1', $this->lang->line('column_tracking'));
		$objPHPExcel->getActiveSheet()->setCellValue('D1', $this->lang->line('column_customer'));
		$objPHPExcel->getActiveSheet()->setCellValue('E1', $this->lang->line('column_street'));
		$objPHPExcel->getActiveSheet()->setCellValue('F1', $this->lang->line('column_street2'));
		$objPHPExcel->getActiveSheet()->setCellValue('G1', $this->lang->line('column_city'));
		$objPHPExcel->getActiveSheet()->setCellValue('H1', $this->lang->line('column_state'));
		$objPHPExcel->getActiveSheet()->setCellValue('I1', $this->lang->line('column_country'));
		$objPHPExcel->getActiveSheet()->setCellValue('J1', $this->lang->line('column_zipcode'));
		$objPHPExcel->getActiveSheet()->setCellValue('K1', $this->lang->line('column_length'));
		$objPHPExcel->getActiveSheet()->setCellValue('L1', $this->lang->line('column_width'));
		$objPHPExcel->getActiveSheet()->setCellValue('M1', $this->lang->line('column_height'));
		$objPHPExcel->getActiveSheet()->setCellValue('N1', $this->lang->line('column_weight'));
		$objPHPExcel->getActiveSheet()->setCellValue('O1', $this->lang->line('column_length_class'));
		$objPHPExcel->getActiveSheet()->setCellValue('P1', $this->lang->line('column_weight_class'));
	
		if($this->input->post('filter_sale_id'))
		{
			$filter_sale_id = $this->input->post('filter_sale_id');
		} 
		else 
		{
			$filter_sale_id = '';
		}
		
		if($this->input->post('filter_store_sale_id'))
		{
			$filter_store_sale_id = $this->input->post('filter_store_sale_id');
		} 
		else 
		{
			$filter_store_sale_id = '';
		}
		
		if($this->input->post('filter_status'))
		{
			$filter_status = $this->input->post('filter_status');
		} 
		else 
		{
			$filter_status = '';
		}
		
		if($this->input->post('filter_tracking'))
		{
			$filter_tracking = $this->input->post('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
		}
		
		if($this->input->post('filter_date_added_from'))
		{
			$filter_date_added_from = $this->input->post('filter_date_added_from');
		} 
		else 
		{
			$filter_date_added_from = '';
		}
		
		if($this->input->post('filter_date_added_to'))
		{
			$filter_date_added_to = $this->input->post('filter_date_added_to');
		} 
		else 
		{
			$filter_date_added_to = '';
		}
		
		if($this->input->post('sort'))
		{
			$sort = $this->input->post('sort');
		} 
		else 
		{
			$sort = 'sale.id';
		}
		
		if($this->input->post('order'))
		{
			$order = $this->input->post('order');
		} 
		else 
		{
			$order = 'DESC';
		}
	
		$filter_data = array(
			'filter_sale_id'         => $filter_sale_id,
			'filter_store_sale_id'   => $filter_store_sale_id,
			'filter_status'          => $filter_status,
			'filter_tracking'        => $filter_tracking,
			'filter_date_added_from' => $filter_date_added_from,
			'filter_date_added_to'   => $filter_date_added_to,
			'sort'                   => $sort,
			'order'                  => $order
		);
		
		$row = 2;
		
		$sales = $this->sale_model->get_sales($filter_data);
				
		if($sales)
		{			
			foreach($sales as $sale)
			{
				$store = $this->store_model->get_store($sale['store_id']);	
			
				$length_class = $this->length_class_model->get_length_class($sale['length_class_id']);

				$weight_class = $this->weight_class_model->get_weight_class($sale['weight_class_id']);
				
				$objPHPExcel->getActiveSheet()->setCellValue('A' . $row, $sale['id']);
				$objPHPExcel->getActiveSheet()->setCellValue('B' . $row, $sale['store_sale_id']);
				$objPHPExcel->getActiveSheet()->setCellValue('C' . $row, $sale['tracking']);
				$objPHPExcel->getActiveSheet()->setCellValue('D' . $row, $sale['name']);
				$objPHPExcel->getActiveSheet()->setCellValue('E' . $row, $sale['street']);
				$objPHPExcel->getActiveSheet()->setCellValue('F' . $row, $sale['street2']);
				$objPHPExcel->getActiveSheet()->setCellValue('G' . $row, $sale['city']);
				$objPHPExcel->getActiveSheet()->setCellValue('H' . $row, $sale['state']);
				$objPHPExcel->getActiveSheet()->setCellValue('I' . $row, $sale['country']);
				$objPHPExcel->getActiveSheet()->setCellValue('J' . $row, $sale['zipcode']);
				$objPHPExcel->getActiveSheet()->setCellValue('K' . $row, $sale['length']);
				$objPHPExcel->getActiveSheet()->setCellValue('L' . $row, $sale['width']);
				$objPHPExcel->getActiveSheet()->setCellValue('M' . $row, $sale['height']);
				$objPHPExcel->getActiveSheet()->setCellValue('N' . $row, $sale['weight']);
				$objPHPExcel->getActiveSheet()->setCellValue('O' . $row, $length_class['unit']);
				$objPHPExcel->getActiveSheet()->setCellValue('P' . $row, $weight_class['unit']);
				
				$row++;
			}
		}
		
		PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);

		$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
		
		$objWriter->save(FILEPATH  . 'order.xlsx');
	
		$outdata = array(
			'success'   => true,
			'link'      => $this->config->item('media_url') . 'file/order.xlsx'
		);
				
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function get_shippings()
	{	
		$this->load->library('currency');
	
		$this->load->model('sale/sale_model');
			
		if($this->input->post('filter_sale_id'))
		{
			$filter_sale_id = $this->input->post('filter_sale_id');
		} 
		else 
		{
			$filter_sale_id = '';
		}
		
		if($this->input->post('filter_store_id'))
		{
			$filter_store_id = $this->input->post('filter_store_id');
		} 
		else 
		{
			$filter_store_id = '';
		}
		
		if($this->input->post('filter_store_sale_id'))
		{
			$filter_store_sale_id = $this->input->post('filter_store_sale_id');
		} 
		else 
		{
			$filter_store_sale_id = '';
		}
		
		if($this->input->post('filter_status'))
		{
			$filter_status = $this->input->post('filter_status');
		} 
		else 
		{
			$filter_status = '';
		}
		
		if($this->input->post('filter_tracking'))
		{
			$filter_tracking = $this->input->post('filter_tracking');
		} 
		else 
		{
			$filter_tracking = '';
		}
		
		if($this->input->post('filter_date_added_from'))
		{
			$filter_date_added_from = $this->input->post('filter_date_added_from');
		} 
		else 
		{
			$filter_date_added_from = '';
		}
		
		if($this->input->post('filter_date_added_to'))
		{
			$filter_date_added_to = $this->input->post('filter_date_added_to');
		} 
		else 
		{
			$filter_date_added_to = '';
		}
		
		if($this->input->post('sort'))
		{
			$sort = $this->input->post('sort');
		} 
		else 
		{
			$sort = 'sale.id';
		}
		
		if($this->input->post('order'))
		{
			$order = $this->input->post('order');
		} 
		else 
		{
			$order = 'DESC';
		}
		
		if($this->input->post('limit'))
		{
			$limit = $this->input->post('limit');
		} 
		else 
		{
			$limit = $this->config->item('config_page_limit');
		}
		
		if($this->input->post('page'))
		{
			$page = $this->input->post('page');
		} 
		else 
		{
			$page = 1;
		}
		
		$filter_data = array(
			'filter_sale_id'         => $filter_sale_id,
			'filter_store_id'        => $filter_store_id,
			'filter_store_sale_id'   => $filter_store_sale_id,
			'filter_status'          => $filter_status,
			'filter_tracking'        => $filter_tracking,
			'filter_date_added_from' => $filter_date_added_from,
			'filter_date_added_to'   => $filter_date_added_to,
			'sort'                   => $sort,
			'order'                  => $order,
			'start'                  => ($page - 1) * $limit,
			'limit'                  => $limit
		);
		
		$sales = $this->sale_model->get_sales($filter_data);
		
		$shippings = array();
		
		if($sales)
		{			
			foreach($sales as $sale)
			{
				//shipping fee
				$code = $sale['shipping_provider'];
				
				$this->load->model('shipping/'. $code .'_model');
				
				$shippng_fee_unformat = $this->{$code . '_model'}->get_shipping_fee($sale['id']);
								
				$shipping_fee = $this->currency->format($shippng_fee_unformat);
				
				$shippings[] = array(
					'sale_id'      => $sale['id'],
					'shipping_fee' => $shipping_fee
				);	
			}
		}
		
		$outdata = array(
			'shippings'   => $shippings
		);
			
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function export_label() 
	{
		$this->load->library('pdf_merage');

		$this->load->model('sale/sale_model');
		
		$merge = new FPDF_Merge();
		
		if($this->input->post('sale_id'))
		{
			$sale_ids = $this->input->post('sale_id');
			
			$pdfs = array();
			
			foreach($sale_ids as $sale_id)
			{
				$sale = $this->sale_model->get_sale($sale_id);
				
				if(is_file(FILEPATH . $sale['tracking'] . '.pdf'))
				{
					$pdf = FILEPATH . $sale['tracking'] . '.pdf';
					
					$merge->add($pdf);
				}
			}
			
			$merge->output(FILEPATH . 'labels.pdf');
			
			$outdata = array(
				'success'   => true,
				'link'      => $this->config->item('media_url') . 'file/labels.pdf'
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function void_label($tracking) 
	{
		$this->load->model('sale/sale_model');
		
		if($this->input->get('tracking'))
		{
			$tracking = $this->input->get('tracking');
			
			$sale_label = $this->sale_model->get_sale_label($tracking);
			
			$code = $sale_label['shipping_provider'];
			
			$result = $this->{$code . '_model'}->void_label($tracking);

			if($result['success'])
			{
				$outdata = array(
					'success'   => true
				);
			}
			else
			{
				$outdata = array(
					'success'   => false,
					'message'   => $result['message']
				);
			}
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	private function validate_sale_checkout($sale_id)
	{
		$this->lang->load('sale/sale');
		
		$this->load->model('sale/sale_model');
		$this->load->model('inventory/inventory_model');

		$validated = true;
		
		$message = '';
		
		$checkout_products = array();
		
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		
		foreach($sale_products as $sale_product)
		{
			$inventories = $this->inventory_model->get_inventories_by_product($sale_product['product_id']);
				
			if(!$inventories)
			{
				$message .= sprintf($this->lang->line('error_product_no_inventory'), $sale_product['name']).'<br>';
								
				if($validated)
					$validated = false;
			}
			else if(sizeof($inventories) > 1)
			{
				$message .= sprintf($this->lang->line('error_product_multi_inventory'), $sale_product['name']).'<br>';
				
				if($validated)
					$validated = false;
			}
			else if($inventories[0]['quantity'] < $sale_product['quantity'])
			{
				$message .= sprintf($this->lang->line('error_product_inventory_insufficent'), $sale_product['name']).'<br>';
								
				if($validated)
					$validated = false;
			}
			else
			{
				$checkout_products[] = array(
					'product_id'    => $sale_product['product_id'],
					'inventory_id'  => $inventories[0]['id'],
					'quantity'      => $sale_product['quantity']
				);
			}
		}
		
		$result = array(
			'success'           => ($validated)?true:false,
			'message'           => $message,
			'checkout_products' => $checkout_products
		);
		
		return $result;
	}
}


