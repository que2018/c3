<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Postpony extends CI_Controller {

	public function index()
	{
		$this->lang->load('shipping/postpony');
		
		$this->load->library('form_validation');
		
		$this->load->model('client/client_model');
		
		$this->load->model('setting/setting_model');
		
		$this->form_validation->set_rules('postpony_key', $this->lang->line('text_key'), 'required');
		$this->form_validation->set_rules('postpony_pwd', $this->lang->line('text_pwd'), 'required');
		$this->form_validation->set_rules('postpony_authorizedkey', $this->lang->line('text_authorizedkey'), 'required');
		$this->form_validation->set_rules('postpony_company', $this->lang->line('text_company'), 'required');
		$this->form_validation->set_rules('postpony_street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('postpony_city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('postpony_state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('postpony_postcode', $this->lang->line('text_postcode'), 'required');
		$this->form_validation->set_rules('postpony_country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('postpony_owner', $this->lang->line('text_owner'), 'required');
		$this->form_validation->set_rules('postpony_phone', $this->lang->line('text_phone'), 'required');
		$this->form_validation->set_rules('postpony_length_unit', $this->lang->line('text_length_unit'), 'required');
		$this->form_validation->set_rules('postpony_weight_unit', $this->lang->line('text_weight_unit'), 'required');
		$this->form_validation->set_rules('postpony_image_type', $this->lang->line('text_image_type'), 'required');
		$this->form_validation->set_rules('postpony_debug_mode', $this->lang->line('text_debug_mode'), 'required');
		$this->form_validation->set_rules('postpony_status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('postpony_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('postpony_service[]', $this->lang->line('text_service'), 'required');
		$this->form_validation->set_rules('postpony_fee_type', $this->lang->line('text_fee_type'), 'required');
		$this->form_validation->set_rules('postpony_fee_value', $this->lang->line('text_fee_value'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(				
				'postpony_key'       		 => $this->input->post('postpony_key'),
				'postpony_pwd'               => $this->input->post('postpony_pwd'),
				'postpony_authorizedkey'     => $this->input->post('postpony_authorizedkey'),
				'postpony_company'           => $this->input->post('postpony_company'),
				'postpony_street'            => $this->input->post('postpony_street'),	
				'postpony_street2'           => $this->input->post('postpony_street2'),
				'postpony_city'         	 => $this->input->post('postpony_city'),
				'postpony_state'    	     => $this->input->post('postpony_state'),
				'postpony_postcode'    		 => $this->input->post('postpony_postcode'),
				'postpony_country'    		 => $this->input->post('postpony_country'),
				'postpony_owner'    		 => $this->input->post('postpony_owner'),
				'postpony_phone'    	     => $this->input->post('postpony_phone'),	
				'postpony_length_unit'    	 => $this->input->post('postpony_length_unit'),	
				'postpony_weight_unit'    	 => $this->input->post('postpony_weight_unit'),	
				'postpony_image_type'    	 => $this->input->post('postpony_image_type'),	
				'postpony_debug_mode'    	 => $this->input->post('postpony_debug_mode'),	
				'postpony_status'   	     => $this->input->post('postpony_status'),
				'postpony_sort_order'  		 => $this->input->post('postpony_sort_order'),
				'postpony_service'     		 => $this->input->post('postpony_service'),
				'postpony_state_mapping'     => $this->input->post('postpony_state_mapping'),
				'postpony_fee_type'          => $this->input->post('postpony_fee_type'),
				'postpony_fee_value'         => $this->input->post('postpony_fee_value'),
				'postpony_client_fee'        => $this->input->post('postpony_client_fee')
			);
			
			$this->setting_model->edit_setting('postpony', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/shipping', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$data['postpony_key']       		= $this->input->post('postpony_key');
			$data['postpony_pwd']          		= $this->input->post('postpony_pwd');
			$data['postpony_authorizedkey']     = $this->input->post('postpony_authorizedkey');
			$data['postpony_company']           = $this->input->post('postpony_company');
			$data['postpony_street']            = $this->input->post('postpony_street');	
			$data['postpony_street2']           = $this->input->post('postpony_street2');
			$data['postpony_city']         	 	= $this->input->post('postpony_city');
			$data['postpony_state']    	     	= $this->input->post('postpony_state');
			$data['postpony_postcode']    		= $this->input->post('postpony_postcode');
			$data['postpony_country']    		= $this->input->post('postpony_country');
			$data['postpony_owner']    		 	= $this->input->post('postpony_owner');
			$data['postpony_phone']    	     	= $this->input->post('postpony_phone');
			$data['postpony_length_unit']    	= $this->input->post('postpony_length_unit');	
			$data['postpony_weight_unit']       = $this->input->post('postpony_weight_unit');	
			$data['postpony_image_type']    	= $this->input->post('postpony_image_type');	
			$data['ostpony_debug_mode']    	 	= $this->input->post('postpony_debug_mode');	
			$data['postpony_status']   	     	= $this->input->post('postpony_status');
			$data['postpony_sort_order']  		= $this->input->post('postpony_sort_order');
			$data['postpony_services']     		= $this->input->post('postpony_service');
			$data['postpony_states_mapping']    = $this->input->post('postpony_state_mapping');
			$data['postpony_fee_type']          = $this->input->post('postpony_fee_type');
			$data['postpony_fee_value']         = $this->input->post('postpony_fee_value');
			
			$postpony_client_fees = $this->input->post('postpony_client_fee');
		
			$data['clients'] = array();
			
			$clients = $this->client_model->get_clients();

			if($clients)
			{
				foreach($clients as $client)
				{	
					$client_id = $client['id'];
					
					$fee = false;
					
					if($postpony_client_fees)
					{
						foreach($postpony_client_fees as $postpony_client_fee)
						{
							if($postpony_client_fee['client_id'] == $client['id'])
							{
								$fee = $postpony_client_fee['fee'];
								break;
							}
						}
					}

					$data['clients'][] = array(
						'client_id'    => $client['id'],
						'name'         => $client['name'],
						'fee'   	   => ($fee)?$fee:0
					);
				}
			}
		}
		else
		{
			$data['postpony_key'] 				= $this->config->item('postpony_key');
			$data['postpony_pwd'] 				= $this->config->item('postpony_pwd');
			$data['postpony_authorizedkey'] 	= $this->config->item('postpony_authorizedkey');
			$data['postpony_company'] 			= $this->config->item('postpony_company');
			$data['postpony_street'] 			= $this->config->item('postpony_street');
			$data['postpony_street2'] 			= $this->config->item('postpony_street2');
			$data['postpony_city'] 				= $this->config->item('postpony_city');
			$data['postpony_state'] 			= $this->config->item('postpony_state');
			$data['postpony_postcode'] 			= $this->config->item('postpony_postcode');
			$data['postpony_country'] 			= $this->config->item('postpony_country');
			$data['postpony_owner'] 			= $this->config->item('postpony_owner');
			$data['postpony_phone'] 			= $this->config->item('postpony_phone');
			$data['postpony_length_unit'] 		= $this->config->item('postpony_length_unit');
			$data['postpony_weight_unit'] 		= $this->config->item('postpony_weight_unit');
			$data['postpony_image_type'] 		= $this->config->item('postpony_image_type');
			$data['postpony_debug_mode'] 		= $this->config->item('postpony_debug_mode');
			$data['postpony_status'] 			= $this->config->item('postpony_status');
			$data['postpony_sort_order'] 		= $this->config->item('postpony_sort_order');
			$data['postpony_services'] 			= $this->config->item('postpony_service');
			$data['postpony_states_mapping'] 	= $this->config->item('postpony_state_mapping');
			$data['postpony_fee_type'] 			= $this->config->item('postpony_fee_type');
			$data['postpony_fee_value'] 		= $this->config->item('postpony_fee_value');
			
			$postpony_client_fees = $this->config->item('postpony_client_fee');
		
			$data['clients'] = array();
			
			$clients = $this->client_model->get_clients();

			if($clients)
			{
				foreach($clients as $client)
				{	
					$client_id = $client['id'];
					
					$fee = false;
					
					if($postpony_client_fees)
					{
						foreach($postpony_client_fees as $postpony_client_fee)
						{
							if($postpony_client_fee['client_id'] == $client['id'])
							{
								$fee = $postpony_client_fee['fee'];
								break;
							}
						}
					}

					$data['clients'][] = array(
						'client_id'    => $client['id'],
						'name'         => $client['name'],
						'fee'   	   => ($fee)?$fee:0
					);
				}
			}
		}
		
		$data['postpony_length_units'] = array(
			'CM'    =>  $this->lang->line('text_cm'),
			'IN'    =>  $this->lang->line('text_inch')
		);
		
		$data['postpony_weight_units'] = array(
			'KG'    =>  $this->lang->line('text_kg'),
			'LB'    =>  $this->lang->line('text_lb')
		);
		
		$data['postpony_image_types'] = array(
			'PNG'  =>  $this->lang->line('text_png')
		);
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('shipping/postpony', $data);
		$this->load->view('common/footer');
	}
}


