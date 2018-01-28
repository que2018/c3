<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Square extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('platform/square');
	}
	
	function index()
	{
		$this->load->library('form_validation');
	
		$this->load->model('setting/setting_model');
	
		$this->form_validation->set_rules('square_field[]', $this->lang->line('text_fields'), 'required');
		$this->form_validation->set_rules('square_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('square_status', $this->lang->line('text_status'), 'required');
		
		$data = array(
			'square_field'      => $this->input->post('square_field'),
			'square_sort_order' => $this->input->post('square_sort_order'),
			'square_status'     => $this->input->post('square_status')			
		);
		
		if($this->form_validation->run() == true)
		{
			$this->setting_model->edit_setting('square', $data);
			
			$this->session->set_flashdata('success', $this->lang->line("text_square_platform_edit_success"));
			
			redirect(base_url() . 'extension/platform', 'refresh');
		}
		else 
		{
			$setting = $this->setting_model->get_setting('square');
			
			$data['square_fields'] = $setting['square_field'];	
			$data['square_sort_order'] = $setting['square_sort_order'];			
			$data['square_status'] = $setting['square_status'];
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('platform/square', $data);
		$this->load->view('common/footer');
	}
	
	function sale_detail() 
	{
		$this->load->library('currency');
		
		$this->load->model('platform/square_model');
		
		$store_id = $this->input->get('store_id');
		$payment_id = $this->input->get('payment_id');
		
		$payment = $this->square_model->get_payment($store_id, $payment_id);

		$data['payment_id']             = $payment_id;
		$data['device']                 = $payment['device']['name'];
		$data['created_at']             = $payment['created_at'];
		$data['total_collected_money']  = $this->currency->format($payment['total_collected_money']['amount']);
		$data['net_total_money']        = $this->currency->format($payment['net_total_money']['amount']);
		$data['discount_money']         = $this->currency->format($payment['discount_money']['amount']);
		$data['refunded_money']         = $this->currency->format($payment['refunded_money']['amount']);

		$data['itemizations'] = array();
		
		foreach($payment['itemizations'] as $itemization)
		{
			$data['itemizations'][] = array(
				'name'              => $itemization['name'],
				'quantity'          => (int)$itemization['quantity'],
				'itemization_type'  => $itemization['itemization_type'],
				'total_money'       => $this->currency->format($itemization['total_money']['amount']),
				'discount_money'    => $this->currency->format($itemization['discount_money']['amount'])
			);
		}
		
		$this->load->view('common/header');
		$this->load->view('platform/square_sale_detail', $data);
		$this->load->view('common/footer');
	}
}


