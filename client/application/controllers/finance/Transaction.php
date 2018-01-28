<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Transaction extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('finance/transaction');
		
		$this->load->model('finance/transaction_model');
	}
	
	function index()
	{	
		$this->load->library('currency');
		$this->load->library('phpexcel');
		
		if($this->input->get('filter_cost'))
		{
			$filter_cost = $this->input->get('filter_cost');
		} 
		else 
		{
			$filter_cost = '';
		}
		
		if($this->input->get('filter_markup'))
		{
			$filter_markup = $this->input->get('filter_markup');
		} 
		else 
		{
			$filter_markup = '';
		}
		
		if($this->input->get('filter_amount'))
		{
			$filter_amount = $this->input->get('filter_amount');
		} 
		else 
		{
			$filter_amount = '';
		}
		
		if($this->input->get('filter_comment'))
		{
			$filter_comment = $this->input->get('filter_comment');
		} 
		else 
		{
			$filter_comment = '';
		}
		
		if($this->input->get('filter_date_from'))
		{
			$filter_date_from = $this->input->get('filter_date_from');
		} 
		else 
		{
			$filter_date_from = '';
		}
		
		if($this->input->get('filter_date_to'))
		{
			$filter_date_to = $this->input->get('filter_date_to');
		} 
		else 
		{
			$filter_date_to = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'transaction.id';
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
			'filter_cost'          => $filter_cost,
			'filter_markup'        => $filter_markup,
			'filter_amount'        => $filter_amount,
			'filter_comment'       => $filter_comment,
			'filter_date_from'     => $filter_date_from,
			'filter_date_to'       => $filter_date_to,
			'sort'             	   => $sort,
			'order'                => $order,
			'start'                => ($page - 1) * $limit,
			'limit'                => $limit
		);
		
		$transactions = $this->transaction_model->get_transactions($filter_data);	
		$transaction_total = $this->transaction_model->get_transaction_total($filter_data);
		
		$data['transactions'] = array();
		
		if($transactions) 
		{
			foreach($transactions as $transaction)
			{	
				$data['transactions'][] = array(
					'transaction_id'  => $transaction['id'],
					'cost'            => $this->currency->format($transaction['cost']),
					'markup'          => $this->currency->format($transaction['markup']),
					'amount'          => $this->currency->format($transaction['amount']),
					'comment'         => $transaction['comment'],
					'date_added'      => $transaction['date_added']
				);
			}
		}
		
		//excel export begin
		$objPHPExcel = new PHPExcel();	
		$objPHPExcel->createSheet();
		$objPHPExcel->setActiveSheetIndex(0);
		
		$objPHPExcel->getActiveSheet()->mergeCells('A1:C1');
		$objPHPExcel->getActiveSheet()->mergeCells('D1:E1');
		
		$objPHPExcel->getActiveSheet()->getStyle('A1:C1')->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('D1:E1')->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('A1:C1')->getFont()->setSize(12);
		$objPHPExcel->getActiveSheet()->getStyle('D1:E1')->getFont()->setSize(12);
		
		$objPHPExcel->getActiveSheet()->getStyle('D1:E1') ->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);

		$objPHPExcel->getActiveSheet()->SetCellValue('A1', $this->lang->line('text_transaction_report'));
		
		if($filter_date_from && $filter_date_to) 
		{
			$objPHPExcel->getActiveSheet()->SetCellValue('D1', sprintf($this->lang->line('text_date_between'), $filter_date_from, $filter_date_to));
		}
		else if($filter_date_from && !$filter_date_to)
		{
			$objPHPExcel->getActiveSheet()->SetCellValue('D1', sprintf($this->lang->line('text_date_since'), $filter_date_from));
		}
		else if(!$filter_date_from && $filter_date_to)
		{
			$objPHPExcel->getActiveSheet()->SetCellValue('D1', sprintf($this->lang->line('text_date_before'), $$filter_date_to));
		}
		else
		{
			$objPHPExcel->getActiveSheet()->SetCellValue('D1', $this->lang->line('text_all_the_date'));
		}
				
		$objPHPExcel->getActiveSheet()->SetCellValue('A2', $this->lang->line('column_cost'));
		$objPHPExcel->getActiveSheet()->SetCellValue('B2', $this->lang->line('column_markup'));
		$objPHPExcel->getActiveSheet()->SetCellValue('C2', $this->lang->line('column_amount'));
		$objPHPExcel->getActiveSheet()->SetCellValue('D2', $this->lang->line('column_comment'));
		$objPHPExcel->getActiveSheet()->SetCellValue('E2', $this->lang->line('column_date_added'));
		
		$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);	
		$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);	

		$total_amount = 0;
		
		$filter_data = array(
			'filter_date_from'     => $filter_date_from,
			'filter_date_to'       => $filter_date_to
		);
		
		$transactions = $this->transaction_model->get_transactions($filter_data);	
		
		$i = 3;
		
		if($transactions) 
		{
			foreach($transactions as $transaction)
			{				
				$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $this->currency->format($transaction['cost']));
				$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $this->currency->format($transaction['markup']));
				$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $this->currency->format($transaction['amount']));
				$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $transaction['comment']);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $transaction['date_added']);
				
				$total_amount += $transaction['amount'];
				
				$i++;
			}
		}
		
		$objPHPExcel->getActiveSheet()->getStyle('D'.($i+2))->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('E'.($i+2))->getFont()->setBold(true);
		$objPHPExcel->getActiveSheet()->getStyle('D'.($i+2))->getFont()->setSize(12);
		$objPHPExcel->getActiveSheet()->getStyle('E'.($i+2))->getFont()->setSize(12);

		
		$objPHPExcel->getActiveSheet()->SetCellValue('D'.($i+2), $this->lang->line('text_total_amount'));
		$objPHPExcel->getActiveSheet()->SetCellValue('E'.($i+2), $this->currency->format($total_amount));
		
		PHPExcel_Settings::setZipClass(PHPExcel_Settings::PCLZIP);
		
		$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
		$objWriter->save(FCPATH  . 'assets/file/export/transaction.xlsx');
		
		//excel export end
		
		$url = '';
		
		if($this->input->get('filter_cost')) 
		{
			$url .= '&filter_cost=' . $this->input->get('filter_cost');
		}
		
		if($this->input->get('filter_markup')) 
		{
			$url .= '&filter_markup=' . $this->input->get('filter_markup');
		}
	
		if($this->input->get('filter_amount')) 
		{
			$url .= '&filter_amount=' . $this->input->get('filter_amount');
		}
		
		if($this->input->get('filter_comment')) 
		{
			$url .= '&filter_comment=' . $this->input->get('filter_comment');
		}
			
		if($this->input->get('filter_date_from')) 
		{
			$url .= '&filter_date_from=' . $this->input->get('filter_date_from');
		}
		
		if($this->input->get('filter_date_to')) 
		{
			$url .= '&filter_date_to=' . $this->input->get('filter_date_to');
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
	
		$this->pagination->total  = $transaction_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url() . 'finance/transaction?page={page}' . $url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($transaction_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($transaction_total - $limit)) ? $transaction_total : ((($page - 1) * $limit) + $limit), $transaction_total, ceil($transaction_total / $limit));

		$url = '';
		
		if($this->input->get('filter_cost')) 
		{
			$url .= '&filter_cost=' . $this->input->get('filter_cost');
		}
		
		if($this->input->get('filter_markup')) 
		{
			$url .= '&filter_markup=' . $this->input->get('filter_markup');
		}
		
		if($this->input->get('filter_amount')) 
		{
			$url .= '&filter_amount=' . $this->input->get('filter_amount');
		}
		
		if($this->input->get('filter_comment')) 
		{
			$url .= '&filter_comment=' . $this->input->get('filter_comment');
		}
			
		if($this->input->get('filter_date_from')) 
		{
			$url .= '&filter_date_from=' . $this->input->get('filter_date_from');
		}
		
		if($this->input->get('filter_date_to')) 
		{
			$url .= '&filter_date_to=' . $this->input->get('filter_date_to');
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
		
		$data['sort_cost']        = base_url() . 'finance/transaction?sort=transaction.cost' . $url;
		$data['sort_markup']      = base_url() . 'finance/transaction?sort=transaction.markup' . $url;
		$data['sort_amount']      = base_url() . 'finance/transaction?sort=transaction.amount' . $url;
		$data['sort_comment']     = base_url() . 'finance/transaction?sort=transaction.comment' . $url;
		$data['sort_date_added']  = base_url() . 'finance/transaction?sort=transaction.date_added' . $url;

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
		
		$data['filter_url'] = base_url() . 'finance/transaction' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_cost']		= $filter_cost;
		$data['filter_markup'] 	    = $filter_markup;
		$data['filter_amount'] 	    = $filter_amount;
		$data['filter_comment'] 	= $filter_comment;
		$data['filter_date_from']   = $filter_date_from;
		$data['filter_date_to']     = $filter_date_to;
				
		$this->load->view('common/header');
		$this->load->view('finance/transaction_list', $data);
		$this->load->view('common/footer');
	}
}


