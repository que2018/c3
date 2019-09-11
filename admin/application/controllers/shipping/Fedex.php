<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fedex extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('shipping/fedex');
		
		$this->load->model('client/client_model');
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/shipping/fedex.css');
				
		$this->header->set_title($this->lang->line('text_fedex'));

		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(				
				'fedex_account_number'       => $this->input->post('fedex_account_number'),
				'fedex_meter_number'         => $this->input->post('fedex_meter_number'),
				'fedex_key'       		     => $this->input->post('fedex_key'),
				'fedex_password'             => $this->input->post('fedex_password'),
				'fedex_company'              => $this->input->post('fedex_company'),
				'fedex_time_zone'            => $this->input->post('fedex_time_zone'),
				'fedex_origin'               => $this->input->post('fedex_origin'),
				'fedex_street'               => $this->input->post('fedex_street'),	
				'fedex_street2'              => $this->input->post('fedex_street2'),
				'fedex_city'         		 => $this->input->post('fedex_city'),
				'fedex_state'    			 => $this->input->post('fedex_state'),
				'fedex_postcode'    		 => $this->input->post('fedex_postcode'),
				'fedex_country'    		     => $this->input->post('fedex_country'),
				'fedex_owner'    			 => $this->input->post('fedex_owner'),
				'fedex_phone'    	         => $this->input->post('fedex_phone'),	
				'fedex_length_unit'    	     => $this->input->post('fedex_length_unit'),	
				'fedex_weight_unit'    	     => $this->input->post('fedex_weight_unit'),	
				'fedex_image_type'    	     => $this->input->post('fedex_image_type'),	
				'fedex_debug_mode'    	     => $this->input->post('fedex_debug_mode'),	
				'fedex_status'   	  		 => $this->input->post('fedex_status'),
				'fedex_sort_order'  		 => $this->input->post('fedex_sort_order'),
				'fedex_service'     		 => $this->input->post('fedex_service'),
				'fedex_state_mapping'        => $this->input->post('fedex_state_mapping'),
				'fedex_fee_type'     		 => $this->input->post('fedex_fee_type'),
				'fedex_fee_value'            => $this->input->post('fedex_fee_value'),
				'fedex_client_fee'           => $this->input->post('fedex_client_fee')
			);
			
			$this->setting_model->edit_setting('fedex', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/shipping', 'refresh');
		}
		if($this->input->post('fedex_account_number')) 
		{
			$data['fedex_account_number'] = $this->input->post('fedex_account_number');
		} 
		else 
		{
			$data['fedex_account_number'] = $this->config->item('fedex_account_number');
		}
		
		if($this->input->post('fedex_meter_number')) 
		{
			$data['fedex_meter_number'] = $this->input->post('fedex_meter_number');
		} 
		else 
		{
			$data['fedex_meter_number'] = $this->config->item('fedex_meter_number');
		}
		
		if($this->input->post('fedex_key')) 
		{
			$data['fedex_key'] = $this->input->post('fedex_key');
		} 
		else 
		{
			$data['fedex_key'] = $this->config->item('fedex_key');
		}
		
		if($this->input->post('fedex_password')) 
		{
			$data['fedex_password'] = $this->input->post('fedex_password');
		} 
		else 
		{
			$data['fedex_password'] = $this->config->item('fedex_password');
		}
		
		if($this->input->post('fedex_time_zone')) 
		{
			$data['fedex_time_zone'] = $this->input->post('fedex_time_zone');
		} 
		else 
		{
			$data['fedex_time_zone'] = $this->config->item('fedex_time_zone');
		}		
		
		if($this->input->post('fedex_company')) 
		{
			$data['fedex_company'] = $this->input->post('fedex_company');
		} 
		else 
		{
			$data['fedex_company'] = $this->config->item('fedex_company');
		}
		
		if($this->input->post('fedex_origin')) 
		{
			$data['fedex_origin'] = $this->input->post('fedex_origin');
		} 
		else 
		{
			$data['fedex_origin'] = $this->config->item('fedex_origin');
		}
		
		if($this->input->post('fedex_street')) 
		{
			$data['fedex_street'] = $this->input->post('fedex_street');
		} 
		else 
		{
			$data['fedex_street'] = $this->config->item('fedex_street');
		}
		
		if($this->input->post('fedex_street2')) 
		{
			$data['fedex_street2'] = $this->input->post('fedex_street2');
		} 
		else 
		{
			$data['fedex_street2'] = $this->config->item('fedex_street2');
		}
		
		if($this->input->post('fedex_city')) 
		{
			$data['fedex_city'] = $this->input->post('fedex_city');
		} 
		else 
		{
			$data['fedex_city'] = $this->config->item('fedex_city');
		}
		
		if($this->input->post('fedex_state')) 
		{
			$data['fedex_state'] = $this->input->post('fedex_state');
		} 
		else 
		{
			$data['fedex_state'] = $this->config->item('fedex_state');
		}
		
		if($this->input->post('fedex_postcode')) 
		{
			$data['fedex_postcode'] = $this->input->post('fedex_postcode');
		} 
		else 
		{
			$data['fedex_postcode'] = $this->config->item('fedex_postcode');
		}
		
		if($this->input->post('fedex_country')) 
		{
			$data['fedex_country'] = $this->input->post('fedex_country');
		} 
		else 
		{
			$data['fedex_country'] = $this->config->item('fedex_country');
		}
		
		if($this->input->post('fedex_owner')) 
		{
			$data['fedex_owner'] = $this->input->post('fedex_owner');
		} 
		else 
		{
			$data['fedex_owner'] = $this->config->item('fedex_owner');
		}
		
		if($this->input->post('fedex_phone')) 
		{
			$data['fedex_phone'] = $this->input->post('fedex_phone');
		} 
		else 
		{
			$data['fedex_phone'] = $this->config->item('fedex_phone');
		}
		
		if($this->input->post('fedex_length_unit')) 
		{
			$data['fedex_length_unit'] = $this->input->post('fedex_length_unit');
		} 
		else 
		{
			$data['fedex_length_unit'] = $this->config->item('fedex_length_unit');
		}
		
		if($this->input->post('fedex_weight_unit')) 
		{
			$data['fedex_weight_unit'] = $this->input->post('fedex_weight_unit');
		} 
		else 
		{
			$data['fedex_weight_unit'] = $this->config->item('fedex_weight_unit');
		}
		
		if($this->input->post('fedex_image_type')) 
		{
			$data['fedex_image_type'] = $this->input->post('fedex_image_type');
		} 
		else 
		{
			$data['fedex_image_type'] = $this->config->item('fedex_image_type');
		}
		
		if($this->input->post('fedex_debug_mode')) 
		{
			$data['fedex_debug_mode'] = $this->input->post('fedex_debug_mode');
		} 
		else 
		{
			$data['fedex_debug_mode'] = $this->config->item('fedex_debug_mode');
		}
		
		if($this->input->post('fedex_status')) 
		{
			$data['fedex_status'] = $this->input->post('fedex_status');
		} 
		else 
		{
			$data['fedex_status'] = $this->config->item('fedex_status');
		}
		
		if($this->input->post('fedex_sort_order')) 
		{
			$data['fedex_sort_order'] = $this->input->post('fedex_sort_order');
		} 
		else 
		{
			$data['fedex_sort_order'] = $this->config->item('fedex_sort_order');
		}
		
		if($this->input->post('fedex_service')) 
		{
			$data['fedex_services'] = $this->input->post('fedex_service');
		} 
		else 
		{
			$data['fedex_services'] = $this->config->item('fedex_service');
		}
		
		if($this->input->post('fedex_state_mapping')) 
		{
			$data['fedex_states_mapping'] = $this->input->post('fedex_state_mapping');
		} 
		else 
		{
			$data['fedex_states_mapping'] = $this->config->item('fedex_state_mapping');
		}
		
		if($this->input->post('fedex_fee_type')) 
		{
			$data['fedex_fee_type'] = $this->input->post('fedex_fee_type');
		} 
		else 
		{
			$data['fedex_fee_type'] = $this->config->item('fedex_fee_type');
		}
		
		if($this->input->post('fedex_fee_value')) 
		{
			$data['fedex_fee_value'] = $this->input->post('fedex_fee_value');
		} 
		else 
		{
			$data['fedex_fee_value'] = $this->config->item('fedex_fee_value');
		}
		
		if($this->input->post('fedex_client_fee')) 
		{
			$fedex_client_fees = $this->input->post('fedex_client_fee');
		} 
		else 
		{
			$fedex_client_fees = $this->config->item('fedex_client_fee');
		}
		
		$data['clients'] = array();
		
		$clients = $this->client_model->get_clients();

		if($clients)
		{
			foreach($clients as $client)
			{	
				$client_id = $client['id'];
				
				$fee = false;
				
				if($fedex_client_fees)
				{
					foreach($fedex_client_fees as $fedex_client_fee)
					{
						if($fedex_client_fee['client_id'] == $client['id'])
						{
							$fee = $fedex_client_fee['fee'];
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
		
		$data['fedex_origins'] = array(
			'US'     =>  $this->lang->line('text_us_origin'),
			'CA'     =>  $this->lang->line('text_canada_origin'),
			'EU'     =>  $this->lang->line('text_european_union_origin'),
			'PR'     =>  $this->lang->line('text_puerto_rico_origin'),
			'MX'     =>  $this->lang->line('text_mexico_origin'),
			'other'  =>  $this->lang->line('text_all_other_origins')
		);
		
		$data['fedex_length_units'] = array(
			'CM'      =>  $this->lang->line('text_cm'),
			'IN'    =>  $this->lang->line('text_inch')
		);
		
		$data['fedex_weight_units'] = array(
			'KG'    =>  $this->lang->line('text_kg'),
			'LB'    =>  $this->lang->line('text_lb')
		);
		
		$data['fedex_image_types'] = array(
			'PNG'  =>  $this->lang->line('text_png')
		);
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('shipping/fedex', $data);
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('fedex_account_number', $this->lang->line('text_account_number'), 'required');
		$this->form_validation->set_rules('fedex_meter_number', $this->lang->line('text_meter_number'), 'required');
		$this->form_validation->set_rules('fedex_key', $this->lang->line('text_key'), 'required');
		$this->form_validation->set_rules('fedex_password', $this->lang->line('text_password'), 'required');
		
		$this->form_validation->set_rules('fedex_company', $this->lang->line('text_company'), 'required');
		$this->form_validation->set_rules('fedex_time_zone', $this->lang->line('text_time_zone'), 'required');
		$this->form_validation->set_rules('fedex_origin', $this->lang->line('text_origin'), 'required');
		$this->form_validation->set_rules('fedex_street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('fedex_city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('fedex_state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('fedex_postcode', $this->lang->line('text_postcode'), 'required');
		$this->form_validation->set_rules('fedex_country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('fedex_owner', $this->lang->line('text_owner'), 'required');
		$this->form_validation->set_rules('fedex_phone', $this->lang->line('text_phone'), 'required');
		$this->form_validation->set_rules('fedex_length_unit', $this->lang->line('text_length_unit'), 'required');
		$this->form_validation->set_rules('fedex_weight_unit', $this->lang->line('text_weight_unit'), 'required');
		$this->form_validation->set_rules('fedex_image_type', $this->lang->line('text_image_type'), 'required');
		$this->form_validation->set_rules('fedex_debug_mode', $this->lang->line('text_debug_mode'), 'required');
		$this->form_validation->set_rules('fedex_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('fedex_status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('fedex_service[]', $this->lang->line('text_service'), 'required');
		$this->form_validation->set_rules('fedex_fee_value', $this->lang->line('text_fee_value'), 'required');

		return $this->form_validation->run();
	}
}


