<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Alipay extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('payment/alipay');
		
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');
	}
	
	public function index()
	{
		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(
				'alipay_service'     => $this->input->post('alipay_service'),
				'alipay_partner'     => $this->input->post('alipay_partner'),
				'alipay_seller_id'   => $this->input->post('alipay_seller_id'),
				'alipay_key'         => $this->input->post('alipay_key'),
				'alipay_sort_order'  => $this->input->post('alipay_sort_order'),
				'alipay_status'      => $this->input->post('alipay_status')			
			);
			
			$this->setting_model->edit_setting('alipay', $data);
			
			$this->session->set_flashdata('success', $this->lang->line("text_alipay_edit_success"));
			
			redirect(base_url() . 'extension/payment', 'refresh');
		}
		
		if($this->input->post('alipay_service')) 
		{
			$data['alipay_service'] = $this->input->post('alipay_service');
		} 
		else 
		{
			$data['alipay_service'] = $this->config->item('alipay_service');
		}
		
		if($this->input->post('alipay_partner')) 
		{
			$data['alipay_partner'] = $this->input->post('alipay_partner');
		} 
		else 
		{
			$data['alipay_partner'] = $this->config->item('alipay_partner');
		}
		
		if($this->input->post('alipay_seller_id')) 
		{
			$data['alipay_seller_id'] = $this->input->post('alipay_seller_id');
		} 
		else 
		{
			$data['alipay_seller_id'] = $this->config->item('alipay_seller_id');
		}
		
		if($this->input->post('alipay_key')) 
		{
			$data['alipay_key'] = $this->input->post('alipay_key');
		} 
		else 
		{
			$data['alipay_key'] = $this->config->item('alipay_key');
		}
		
		if($this->input->post('alipay_sort_order')) 
		{
			$data['alipay_sort_order'] = $this->input->post('alipay_sort_order');
		} 
		else 
		{
			$data['alipay_sort_order'] = $this->config->item('alipay_sort_order');
		}
		
		if($this->input->post('alipay_status')) 
		{
			$data['alipay_status'] = $this->input->post('alipay_status');
		} 
		else 
		{
			$data['alipay_status'] = $this->config->item('alipay_status');
		}
			
		$data['alipay_services'] = array(
			'create_forex_trade'         => $this->lang->line('text_create_forex_trade'),
			'create_direct_pay_by_user'  => $this->lang->line('text_create_direct_pay_by_user')
		);

		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('payment/alipay', $data);
		$this->load->view('common/footer');
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('alipay_service', $this->lang->line('text_alipay_service'), 'required');
		$this->form_validation->set_rules('alipay_partner', $this->lang->line('text_alipay_partner'), 'required');
		$this->form_validation->set_rules('alipay_seller_id', $this->lang->line('text_alipay_seller_id'), 'required');
		$this->form_validation->set_rules('alipay_key', $this->lang->line('text_alipay_key'), 'required');
		$this->form_validation->set_rules('alipay_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('alipay_status', $this->lang->line('text_status'), 'required');
		
		return $this->form_validation->run();
	}
}


