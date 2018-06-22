<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ups extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('shipping/ups');
		
		$this->load->model('client/client_model');
		$this->load->model('setting/setting_model');
		
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/shipping/ups.css');
				
		$this->header->set_title($this->lang->line('text_ups'));
		
		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(
				'ups_access_key'           => $this->input->post('ups_access_key'),
				'ups_username'             => $this->input->post('ups_username'),
				'ups_password'             => $this->input->post('ups_password'),
				'ups_account_number'       => $this->input->post('ups_account_number'),
				'ups_pickup_method'    	   => $this->input->post('ups_pickup_method'),
				'ups_classification_code'  => $this->input->post('ups_classification_code'),
				'ups_time_zone'            => $this->input->post('ups_time_zone'),
				'ups_origin'               => $this->input->post('ups_origin'),
				'ups_street'               => $this->input->post('ups_street'),	
				'ups_street2'              => $this->input->post('ups_street2'),
				'ups_city'         		   => $this->input->post('ups_city'),
				'ups_state'    			   => $this->input->post('ups_state'),
				'ups_postcode'    		   => $this->input->post('ups_postcode'),
				'ups_country'    		   => $this->input->post('ups_country'),
				'ups_quote_type'    	   => $this->input->post('ups_quote_type'),
				'ups_owner'    			   => $this->input->post('ups_owner'),				
				'ups_description'    	   => $this->input->post('ups_description'),
				'ups_phone'    	           => $this->input->post('ups_phone'),	
				'ups_length_unit'    	   => $this->input->post('ups_length_unit'),	
				'ups_weight_unit'    	   => $this->input->post('ups_weight_unit'),	
				'ups_image_type'    	   => $this->input->post('ups_image_type'),	
				'ups_debug_mode'    	   => $this->input->post('ups_debug_mode'),	
				'ups_status'   	  		   => $this->input->post('ups_status'),
				'ups_sort_order'  		   => $this->input->post('ups_sort_order'),
				'ups_service'     		   => $this->input->post('ups_service'),
				'ups_state_mapping'        => $this->input->post('ups_state_mapping'),
				'ups_fee_type'     		   => $this->input->post('ups_fee_type'),
				'ups_fee_value'            => $this->input->post('ups_fee_value'),
				'ups_client_fee'           => $this->input->post('ups_client_fee')
			);
			
			$this->setting_model->edit_setting('ups', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/shipping', 'refresh');
		}
		
		if($this->input->post('ups_access_key')) 
		{
			$data['ups_access_key'] = $this->input->post('ups_access_key');
		} 
		else 
		{
			$data['ups_access_key'] = $this->config->item('ups_access_key');
		}
		
		if($this->input->post('ups_username')) 
		{
			$data['ups_username'] = $this->input->post('ups_username');
		} 
		else 
		{
			$data['ups_username'] = $this->config->item('ups_username');
		}
		
		if($this->input->post('ups_password')) 
		{
			$data['ups_password'] = $this->input->post('ups_password');
		} 
		else 
		{
			$data['ups_password'] = $this->config->item('ups_password');
		}
		
		if($this->input->post('ups_account_number')) 
		{
			$data['ups_account_number'] = $this->input->post('ups_account_number');
		} 
		else 
		{
			$data['ups_account_number'] = $this->config->item('ups_account_number');
		}
		
		if($this->input->post('ups_pickup_method')) 
		{
			$data['ups_pickup_method'] = $this->input->post('ups_pickup_method');
		} 
		else 
		{
			$data['ups_pickup_method'] = $this->config->item('ups_pickup_method');
		}
		
		if($this->input->post('ups_classification_code')) 
		{
			$data['ups_classification_code'] = $this->input->post('ups_classification_code');
		} 
		else 
		{
			$data['ups_classification_code'] = $this->config->item('ups_classification_code');
		}
		
		if($this->input->post('ups_time_zone')) 
		{
			$data['ups_time_zone'] = $this->input->post('ups_time_zone');
		} 
		else 
		{
			$data['ups_time_zone'] = $this->config->item('ups_time_zone');
		}
		
		if($this->input->post('ups_origin')) 
		{
			$data['ups_origin'] = $this->input->post('ups_origin');
		} 
		else 
		{
			$data['ups_origin'] = $this->config->item('ups_origin');
		}
		
		if($this->input->post('ups_street')) 
		{
			$data['ups_street'] = $this->input->post('ups_street');
		} 
		else 
		{
			$data['ups_street'] = $this->config->item('ups_street');
		}
		
		if($this->input->post('ups_street2')) 
		{
			$data['ups_street2'] = $this->input->post('ups_street2');
		} 
		else 
		{
			$data['ups_street2'] = $this->config->item('ups_street2');
		}
		
		if($this->input->post('ups_city')) 
		{
			$data['ups_city'] = $this->input->post('ups_city');
		} 
		else 
		{
			$data['ups_city'] = $this->config->item('ups_city');
		}
		
		if($this->input->post('ups_state')) 
		{
			$data['ups_state'] = $this->input->post('ups_state');
		} 
		else 
		{
			$data['ups_state'] = $this->config->item('ups_state');
		}
		
		if($this->input->post('ups_postcode')) 
		{
			$data['ups_postcode'] = $this->input->post('ups_postcode');
		} 
		else 
		{
			$data['ups_postcode'] = $this->config->item('ups_postcode');
		}
		
		if($this->input->post('ups_country')) 
		{
			$data['ups_country'] = $this->input->post('ups_country');
		} 
		else 
		{
			$data['ups_country'] = $this->config->item('ups_country');
		}
		
		if($this->input->post('ups_quote_type')) 
		{
			$data['ups_quote_type'] = $this->input->post('ups_quote_type');
		} 
		else 
		{
			$data['ups_quote_type'] = $this->config->item('ups_quote_type');
		}
		
		if($this->input->post('ups_owner')) 
		{
			$data['ups_owner'] = $this->input->post('ups_owner');
		} 
		else 
		{
			$data['ups_owner'] = $this->config->item('ups_owner');
		}
		
		if($this->input->post('ups_description')) 
		{
			$data['ups_description'] = $this->input->post('ups_description');
		} 
		else 
		{
			$data['ups_description'] = $this->config->item('ups_description');
		}
		
		if($this->input->post('ups_phone')) 
		{
			$data['ups_phone'] = $this->input->post('ups_phone');
		} 
		else 
		{
			$data['ups_phone'] = $this->config->item('ups_phone');
		}
		
		if($this->input->post('ups_length_unit')) 
		{
			$data['ups_length_unit'] = $this->input->post('ups_length_unit');
		} 
		else 
		{
			$data['ups_length_unit'] = $this->config->item('ups_length_unit');
		}
		
		if($this->input->post('ups_weight_unit')) 
		{
			$data['ups_weight_unit'] = $this->input->post('ups_weight_unit');
		} 
		else 
		{
			$data['ups_weight_unit'] = $this->config->item('ups_weight_unit');
		}
		
		if($this->input->post('ups_image_type')) 
		{
			$data['ups_image_type'] = $this->input->post('ups_image_type');
		} 
		else 
		{
			$data['ups_image_type'] = $this->config->item('ups_image_type');
		}
		
		if($this->input->post('ups_debug_mode')) 
		{
			$data['ups_debug_mode'] = $this->input->post('ups_debug_mode');
		} 
		else 
		{
			$data['ups_debug_mode'] = $this->config->item('ups_debug_mode');
		}
		
		if($this->input->post('ups_status')) 
		{
			$data['ups_status'] = $this->input->post('ups_status');
		} 
		else 
		{
			$data['ups_status'] = $this->config->item('ups_status');
		}
		
		if($this->input->post('ups_sort_order')) 
		{
			$data['ups_sort_order'] = $this->input->post('ups_sort_order');
		} 
		else 
		{
			$data['ups_sort_order'] = $this->config->item('ups_sort_order');
		}
		
		if($this->input->post('ups_service')) 
		{
			$data['ups_services'] = $this->input->post('ups_service');
		} 
		else 
		{
			$data['ups_services'] = $this->config->item('ups_service');
		}
		
		if($this->input->post('ups_state_mapping')) 
		{
			$data['ups_states_mapping'] = $this->input->post('ups_state_mapping');
		} 
		else 
		{
			$data['ups_states_mapping'] = $this->config->item('ups_state_mapping');
		}
		
		if($this->input->post('ups_fee_type')) 
		{
			$data['ups_fee_type'] = $this->input->post('ups_fee_type');
		} 
		else 
		{
			$data['ups_fee_type'] = $this->config->item('ups_fee_type');
		}
		
		if($this->input->post('ups_fee_value')) 
		{
			$data['ups_fee_value'] = $this->input->post('ups_fee_value');
		} 
		else 
		{
			$data['ups_fee_value'] = $this->config->item('ups_fee_value');
		}
		
		if($this->input->post('ups_client_fee')) 
		{
			$ups_client_fees = $this->input->post('ups_client_fee');
		} 
		else 
		{
			$ups_client_fees = $this->config->item('ups_client_fee');
		}
		
		$data['clients'] = array();
		
		$clients = $this->client_model->get_clients();

		if($clients)
		{
			foreach($clients as $client)
			{	
				$client_id = $client['id'];
				
				$fee = false;
				
				if($ups_client_fees)
				{
					foreach($ups_client_fees as $ups_client_fee)
					{
						if($ups_client_fee['client_id'] == $client['id'])
						{
							$fee = $ups_client_fee['fee'];
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
		
		$data['ups_classification_codes'] = array(
			'01'  =>  '01',
			'03'  =>  '03',
			'04'  =>  '04'
		);
		
		$data['ups_pickup_methods'] = array(
			'01'  =>  $this->lang->line('text_daily_pickup'),
			'03'  =>  $this->lang->line('text_customer_counter'),
			'06'  =>  $this->lang->line('text_onetime_pickup'),
			'07'  =>  $this->lang->line('text_on_call_air_pickup'),
			'19'  =>  $this->lang->line('text_letter_center'),
			'20'  =>  $this->lang->line('text_air_service_center'),
			'11'  =>  $this->lang->line('text_suggest_retail_rate')
		);
		
		$data['ups_origins'] = array(
			'US'     =>  $this->lang->line('text_us_origin'),
			'CA'     =>  $this->lang->line('text_canada_origin'),
			'EU'     =>  $this->lang->line('text_european_union_origin'),
			'PR'     =>  $this->lang->line('text_puerto_rico_origin'),
			'MX'     =>  $this->lang->line('text_mexico_origin'),
			'other'  =>  $this->lang->line('text_all_other_origins')
		);
		
		$data['ups_quote_types'] = array(
			'residential'     =>  $this->lang->line('text_residential'),
			'commercial'      =>  $this->lang->line('text_commerical')
		);
		
		$data['ups_length_units'] = array(
			'CM'      =>  $this->lang->line('text_cm'),
			'INCH'    =>  $this->lang->line('text_inch')
		);
		
		$data['ups_weight_units'] = array(
			'KG'    =>  $this->lang->line('text_kg'),
			'G'     =>  $this->lang->line('text_g'),
			'LB'    =>  $this->lang->line('text_lb'),
			'OZ'    =>  $this->lang->line('text_oz')
		);
		
		$data['ups_image_types'] = array(
			'GIF'  =>  $this->lang->line('text_gif'),
			'PNG'  =>  $this->lang->line('text_png'),
			'JPG'  =>  $this->lang->line('text_jpg')
		);
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('shipping/ups', $data);
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('ups_access_key', $this->lang->line('text_access_key'), 'required');
		$this->form_validation->set_rules('ups_username', $this->lang->line('text_username'), 'required');
		$this->form_validation->set_rules('ups_password', $this->lang->line('text_password'), 'required');
		$this->form_validation->set_rules('ups_account_number', $this->lang->line('text_account_number'), 'required');
		$this->form_validation->set_rules('ups_pickup_method', $this->lang->line('text_pickup_method'), 'required');
		$this->form_validation->set_rules('ups_classification_code', $this->lang->line('text_classification_code'), 'required');
		$this->form_validation->set_rules('ups_time_zone', $this->lang->line('text_time_zone'), 'required');
		$this->form_validation->set_rules('ups_origin', $this->lang->line('text_origin'), 'required');
		$this->form_validation->set_rules('ups_street', $this->lang->line('text_street'), 'required');
		$this->form_validation->set_rules('ups_city', $this->lang->line('text_city'), 'required');
		$this->form_validation->set_rules('ups_state', $this->lang->line('text_state'), 'required');
		$this->form_validation->set_rules('ups_postcode', $this->lang->line('text_postcode'), 'required');
		$this->form_validation->set_rules('ups_country', $this->lang->line('text_country'), 'required');
		$this->form_validation->set_rules('ups_quote_type', $this->lang->line('text_quote_type'), 'required');
		$this->form_validation->set_rules('ups_owner', $this->lang->line('text_owner'), 'required');
		$this->form_validation->set_rules('ups_description', $this->lang->line('text_description'), 'required');
		$this->form_validation->set_rules('ups_phone', $this->lang->line('text_phone'), 'required');
		$this->form_validation->set_rules('ups_length_unit', $this->lang->line('text_length_unit'), 'required');
		$this->form_validation->set_rules('ups_weight_unit', $this->lang->line('text_weight_unit'), 'required');
		$this->form_validation->set_rules('ups_image_type', $this->lang->line('text_image_type'), 'required');
		$this->form_validation->set_rules('ups_debug_mode', $this->lang->line('text_debug_mode'), 'required');
		$this->form_validation->set_rules('ups_sort_order', $this->lang->line('text_sort_order'), 'required');
		$this->form_validation->set_rules('ups_status', $this->lang->line('text_status'), 'required');
		$this->form_validation->set_rules('ups_service[]', $this->lang->line('text_service'), 'required');
		$this->form_validation->set_rules('ups_fee_value', $this->lang->line('text_fee_value'), 'required');

		return $this->form_validation->run();
	}
}


