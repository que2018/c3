<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkin_scan extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->lang->load('check/checkin');

		$this->header->add_style(base_url(). 'assets/css/app/check/checkin_scan.css');
		$this->header->add_style(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.css');
	
		$this->header->add_script(base_url(). 'assets/js/plugins/jquery-ui/jquery-ui.min.js');

		$this->header->set_title($this->lang->line('text_checkin_scan'));
			
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('check/checkin_scan', $data);
	}

	public function get_product_or_location()
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
		$this->load->model('catalog/product_model');
		$this->load->model('warehouse/location_model');
		
		if($this->input->post('code'))
		{
			$code = $this->input->post('code');
		
			$code = trim($code);		
			
			$is_product = false;
			$is_location = false;
			
			$result = $this->product_model->get_product_by_upc($code);
			
			if($result) $is_product = true;
			
			if(!$result) 
			{
				$result = $this->product_model->get_product_by_sku($code);
				
				if($result) $is_product = true;
			}
			
			if(!$result) 
			{
				$result = $this->product_model->get_product_by_asin($code);
				
				if($result) $is_product = true;
			}
			
			if(!$result) 
			{
				$result = $this->product_model->get_product_by_name($code);
				
				if($result) $is_product = true;
			}
			
			if(!$result) 
			{
				$result = $this->location_model->get_location_by_code($code);

				if($result) $is_location = true;								
			}
				
			if(!$result)
			{
				$outdata = array(
					'success'   => false
				);
				
				echo json_encode($outdata);
				die();
			}
			else
			{
				if($is_product)
				{
					$product = array(
						'product_id'  => $result['id'],
						'upc'         => $result['upc'],
						'sku'         => $result['sku'],
						'asin'        => $result['asin'],
						'name'        => $result['name']
					);
				
					$outdata = array(
						'success'     => true,
						'is_product'  => true,
						'is_location' => false,
						'product'     => $product
					);
				}
				
				if($is_location)
				{
					$location = array(
						'location_id'   => $result['id'],
						'location_name' => $result['name']
					);
				
					$outdata = array(
						'success'     => true,
						'is_product'  => false,
						'is_location' => true,
						'location'    => $location
					);
				}
				
				$this->output->set_content_type('application/json');
				$this->output->set_output(json_encode($outdata));
			}
		}
		else
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_code_empty')
			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}			
	}
	
	public function add_checkin()
	{
		$this->lang->load('check/checkin');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->load->model('check/checkin_model');
			
		$this->form_validation->set_rules('status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('tracking', $this->lang->line('text_tracking'), 'callback_validate_tracking');
		$this->form_validation->set_rules('checkin_product', $this->lang->line('text_checkin_product'), 'callback_validate_checkin_product');
			
		$data = array(
			'tracking'          => $this->input->post('tracking'),
			'status'            => $this->input->post('status'),
			'note'              => '',
			'checkin_products'  => $this->input->post('checkin_product'),
			'checkin_fees'      => array(),
		);
		
		if($this->form_validation->run() == true)
		{
			$this->checkin_model->add_checkin($data);	

			$outdata = array(
				'success'   => true,
				'message'   => $this->lang->line('text_checkin_add_success')
			);			
		}
		else
		{
			$outdata = array(
				'success'   => false,
				'message'   => validation_errors()
			);
		}
	
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
	
	public function validate_tracking($tracking)
	{
		$this->lang->load('check/checkin');
				
		$this->load->model('check/checkin_model');
		
		if($tracking)
		{
			$result = $this->checkin_model->get_checkin_by_tracking($tracking);
		
			if($result)
			{
				$this->form_validation->set_message('validate_tracking', $this->lang->line('error_tracking_is_used'));
			
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

	public function validate_checkin_product($checkin_products)
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');		
		$this->load->model('catalog/product_model');			
		
		if($this->input->post('checkin_product'))
		{
			$validated = true;
			
			$checkin_products = $this->input->post('checkin_product');
			
			$error_message = '';
			
			foreach($checkin_products as $checkin_product)
			{	
				$product_id   = $checkin_product['product_id'];
				$quantity 	  = $checkin_product['quantity'];
				$location_id  = $checkin_product['location_id'];
				
				$product_info = $this->product_model->get_product($product_id);	
				
				if(!$quantity)
				{
					$error_message .= sprintf($this->lang->line('error_checkin_product_quantity_required'), $product_info['name']);
					$error_message .= '<br>';
					
					if($validated) $validated = false;
				}
				
				if(!$location_id)
				{
					$error_message .= sprintf($this->lang->line('error_checkin_product_location_required'), $product_info['name']);
					$error_message .= '<br>';
					
					if($validated) $validated = false;
				}
			}
			
			if(!$validated)
			{
				$this->form_validation->set_message('validate_checkin_product', $error_message);
				
				return false;
			}
			else
			{
				return true;
			}
		}
		else
		{
			$this->form_validation->set_message('validate_checkin_product', $this->lang->line('error_checkin_product_required'));
			
			return false;
		}	
	}
}


