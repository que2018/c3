<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Shipping extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('extension/shipping');
	}
	
	function index()
	{
		$this->load->model('extension/extension_model');
		
		$data['success'] = $this->session->flashdata('success');
		
		$shippings = $this->extension_model->get_installed('shipping');
	
		foreach($shippings as $key => $code) 
		{
			$file = ucfirst($code);
			
			if(!is_file(APPPATH . '/controllers/shipping/' . $file . '.php') && !is_file(APPPATH . '/controllers/shipping/' . $file . '.php')) 
			{
				$this->extension_model->uninstall('shipping', $file);

				unset($shippings[$key]);
			}
		}

		$data['shippings'] = array();

		//Compatibility code for old extension folders
		$files = glob(APPPATH . '/controllers/shipping/*.php', GLOB_BRACE);

		if($files) {
			foreach ($files as $file) {
				$shipping = strtolower(basename($file, '.php'));

				$this->lang->load('shipping/' . $shipping);

				$data['shippings'][] = array(
					'code'       => $shipping,
					'name'       => $this->lang->line('text_title'),
					'status'     => ($this->config->item($shipping .'_status'))?$this->lang->line('text_enabled'):$this->lang->line('text_disabled'),
					'sort_order' => 0,
					'installed'  => in_array($shipping, $shippings)
				);
			}
		}
	
		$this->load->view('common/header');
		$this->load->view('extension/shipping', $data);
		$this->load->view('common/footer');
	}
	
	public function install() 
	{
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->install('shipping', $code);
		
		$this->load->model('shipping/'. $code .'_model');

		$this->{$code . '_model'}->install();
		
		$this->session->set_flashdata('success', $this->lang->line('text_install_success'));

		redirect(base_url() . 'extension/shipping', 'refresh');
	}
	
	public function uninstall() 
	{
		$this->load->model('extension/extension_model');
		
		$code = $this->input->get('code');
		
		$this->extension_model->uninstall('shipping', $code);

		$this->load->model('shipping/'. $code .'_model');

		$this->{$code . '_model'}->uninstall();
		
		$this->session->set_flashdata('success', $this->lang->line('text_uninstall_success'));

		redirect(base_url() . 'extension/shipping', 'refresh');
	}
	
	public function get_shipping_services() 
	{
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
			
			$shipping_services_data = $this->config->item($code . '_service');
		
			if($shipping_services_data) 
			{				
				$shipping_services = array();
				
				foreach($shipping_services_data as $shipping_service_data)
				{
					$shipping_services[] = array(
						'code'   => $shipping_service_data['code'],
						'name'   => $shipping_service_data['name']
					);
				}
				
				$outdata = array(
					'success'           => true,
					'shipping_services' => $shipping_services
				);
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'msg'      => $this->lang->line('error_no_shipping_service')
				);
			}
					
			echo json_encode($outdata);
		}
	}
	
	public function get_shipping_rate() 
	{
		$shipping_method   = $this->input->post('shipping_method');
		$postal_code       = $this->input->post('postal_code');	
		$products          = $this->input->post('product');
		
		$this->load->model('shipping/' . $shipping_service . '_model');
		
		$result = $this->{$shipping_service . _model}->rating($products, $postal_code, $shipping_method);

		if(isset($result['error']))
		{
			$outdata = array(
				'success' => false,
				'error'   => $result['error']
 			);
		}
		else 
		{			
			$rate = $result['rate'];
								
			$outdata = array(
				'success'      => true,
				'rate'         => $rate
 			);
		}
		
		echo json_encode($outdata);
	}
}


