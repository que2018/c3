<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Jd extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('shipping/jd');
		
		$this->load->library('form_validation');
		
		$this->load->model('setting/setting_model');

		$this->form_validation->CI =& $this;
		
		$this->header->add_style(base_url(). 'assets/css/app/shipping/jd.css');
				
		$this->header->set_title($this->lang->line('text_jd'));
		
		if(($this->input->server('REQUEST_METHOD') == 'POST') && $this->validate())
		{
			$data = array(	
				'jd_user'   	 		    => $this->input->post('jd_user'),
				'jd_secret_key'   	 		=> $this->input->post('jd_secret_key'),
				'jd_url_args'   	 		=> $this->input->post('jd_url_args'),
				'jd_source'   	 			=> $this->input->post('jd_source'),
				'jd_customer_code'   	 	=> $this->input->post('jd_customer_code'),
				'jd_sender_name'   	 		=> $this->input->post('jd_sender_name'),
				'jd_sender_mobile'   	 	=> $this->input->post('jd_sender_mobile'),
				'jd_sender_address'   	 	=> $this->input->post('jd_sender_address'),
				'jd_sender_city'   	 		=> $this->input->post('jd_sender_city'),
				'jd_sender_province'   	 	=> $this->input->post('jd_sender_province'),
				'jd_sender_country'   	 	=> $this->input->post('jd_sender_country'),
				'jd_sender_postcode'   	    => $this->input->post('jd_sender_postcode'),
				'jd_order_type'   	 		=> $this->input->post('jd_order_type'),
				'jd_goods_type'   	 		=> $this->input->post('jd_goods_type'),
				'jd_sale_plat'   	 		=> $this->input->post('jd_sale_plat'),
				'jd_weight_unit'   	 		=> $this->input->post('jd_weight_unit'),
				'jd_service_level'   	 	=> $this->input->post('jd_service_level'),
				'jd_service_pickup_method' 	=> $this->input->post('jd_service_pickup_method'),
				'jd_collection_value'  		=> $this->input->post('jd_collection_value'),
				'jd_sort_order'  			=> $this->input->post('jd_sort_order'),
				'jd_status'   	 			=> $this->input->post('jd_status'),
				'jd_service'     			=> $this->input->post('jd_service')
			);
			
			$this->setting_model->edit_setting('jd', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_edit_success'));
			
			redirect(base_url() . 'extension/shipping', 'refresh');
		}
		
		if($this->input->post('jd_user')) 
		{
			$data['jd_user'] = $this->input->post('jd_user');
		} 
		else 
		{
			$data['jd_user'] = $this->config->item('jd_user');
		}
		
		if($this->input->post('jd_secret_key')) 
		{
			$data['jd_secret_key'] = $this->input->post('jd_secret_key');
		} 
		else 
		{
			$data['jd_secret_key'] = $this->config->item('jd_secret_key');
		}
		
		if($this->input->post('jd_url_args')) 
		{
			$data['jd_url_args'] = $this->input->post('jd_url_args');
		} 
		else 
		{
			$data['jd_url_args'] = $this->config->item('jd_url_args');
		}
		
		if($this->input->post('jd_source')) 
		{
			$data['jd_source'] = $this->input->post('jd_source');
		} 
		else 
		{
			$data['jd_source'] = $this->config->item('jd_source');
		}
		
		if($this->input->post('jd_customer_code')) 
		{
			$data['jd_customer_code'] = $this->input->post('jd_customer_code');
		} 
		else 
		{
			$data['jd_customer_code'] = $this->config->item('jd_customer_code');
		}
		
		if($this->input->post('jd_sender_name')) 
		{
			$data['jd_sender_name'] = $this->input->post('jd_sender_name');
		} 
		else 
		{
			$data['jd_sender_name'] = $this->config->item('jd_sender_name');
		}
		
		if($this->input->post('jd_sender_mobile')) 
		{
			$data['jd_sender_mobile'] = $this->input->post('jd_sender_mobile');
		} 
		else 
		{
			$data['jd_sender_mobile'] = $this->config->item('jd_sender_mobile');
		}
		
		if($this->input->post('jd_sender_address')) 
		{
			$data['jd_sender_address'] = $this->input->post('jd_sender_address');
		} 
		else 
		{
			$data['jd_sender_address'] = $this->config->item('jd_sender_address');
		}
		
		if($this->input->post('jd_sender_city')) 
		{
			$data['jd_sender_city'] = $this->input->post('jd_sender_city');
		} 
		else 
		{
			$data['jd_sender_city'] = $this->config->item('jd_sender_city');
		}
		
		if($this->input->post('jd_sender_province')) 
		{
			$data['jd_sender_province'] = $this->input->post('jd_sender_province');
		} 
		else 
		{
			$data['jd_sender_province'] = $this->config->item('jd_sender_province');
		}
		
		if($this->input->post('jd_sender_country')) 
		{
			$data['jd_sender_country'] = $this->input->post('jd_sender_country');
		} 
		else 
		{
			$data['jd_sender_country'] = $this->config->item('jd_sender_country');
		}
		
		if($this->input->post('jd_sender_postcode')) 
		{
			$data['jd_sender_postcode'] = $this->input->post('jd_sender_postcode');
		} 
		else 
		{
			$data['jd_sender_postcode'] = $this->config->item('jd_sender_postcode');
		}
		
		if($this->input->post('jd_order_type')) 
		{
			$data['jd_order_type'] = $this->input->post('jd_order_type');
		} 
		else 
		{
			$data['jd_order_type'] = $this->config->item('jd_order_type');
		}
		
		if($this->input->post('jd_sale_plat')) 
		{
			$data['jd_sale_plat'] = $this->input->post('jd_sale_plat');
		} 
		else 
		{
			$data['jd_sale_plat'] = $this->config->item('jd_sale_plat');
		}
		
		if($this->input->post('jd_weight_unit')) 
		{
			$data['jd_weight_unit'] = $this->input->post('jd_weight_unit');
		} 
		else 
		{
			$data['jd_weight_unit'] = $this->config->item('jd_weight_unit');
		}
		
		if($this->input->post('jd_service_level')) 
		{
			$data['jd_service_level'] = $this->input->post('jd_service_level');
		} 
		else 
		{
			$data['jd_service_level'] = $this->config->item('jd_service_level');
		}
		
		if($this->input->post('jd_service_pickup_method')) 
		{
			$data['jd_service_pickup_method'] = $this->input->post('jd_service_pickup_method');
		} 
		else 
		{
			$data['jd_service_pickup_method'] = $this->config->item('jd_service_pickup_method');
		}
		
		if($this->input->post('jd_collection_value')) 
		{
			$data['jd_collection_value'] = $this->input->post('jd_collection_value');
		} 
		else 
		{
			$data['jd_collection_value'] = $this->config->item('jd_collection_value');
		}
		
		if($this->input->post('jd_good_type')) 
		{
			$data['jd_good_type'] = $this->input->post('jd_good_type');
		} 
		else 
		{
			$data['jd_good_type'] = $this->config->item('jd_goods_type');
		}
		
		if($this->input->post('jd_country')) 
		{
			$data['jd_country'] = $this->input->post('jd_country');
		} 
		else 
		{
			$data['jd_country'] = $this->config->item('jd_country');
		}
		
		if($this->input->post('jd_status')) 
		{
			$data['jd_status'] = $this->input->post('jd_status');
		} 
		else 
		{
			$data['jd_status'] = $this->config->item('jd_status');
		}
		
		if($this->input->post('jd_sort_order')) 
		{
			$data['jd_sort_order'] = $this->input->post('jd_sort_order');
		} 
		else 
		{
			$data['jd_sort_order'] = $this->config->item('jd_sort_order');
		}
		
		if($this->input->post('jd_service')) 
		{
			$data['jd_services'] = $this->input->post('jd_service');
		} 
		else 
		{
			$data['jd_services'] = $this->config->item('jd_service');
		}
		
		$data['order_types'] = array(
			0  => $this->lang->line('text_type_common'),
			1  => $this->lang->line('text_type_out_source')
		);
		
		$data['sale_plats'] = array(
			'0010001'  => $this->lang->line('text_plat_jd'),
			'0030001'  => $this->lang->line('text_plat_other')
		);
		
		$data['weight_units'] = array(
			'kg'     => $this->lang->line('text_kg'),
			'pound'  => $this->lang->line('text_pound')
		);
		
		$data['service_pickup_methods'] = array(
			1  => $this->lang->line('text_pickup_method_pickup'),
			2  => $this->lang->line('text_pickup_method_self_send')
		);
		
		$data['collection_values'] = array(
			0  => $this->lang->line('text_collection_type_no'),
			1  => $this->lang->line('text_collection_type_yes')
		);
		
		$data['good_types'] = array(
			1  => $this->lang->line('text_good_type_common'),
			2  => $this->lang->line('text_good_type_warm'),
			3  => $this->lang->line('text_good_type_warehouse'),
			4  => $this->lang->line('text_good_type_special'),
			5  => $this->lang->line('text_good_type_fresh'),
			6  => $this->lang->line('text_good_type_templature'),
			7  => $this->lang->line('text_good_type_cool'),
			8  => $this->lang->line('text_good_type_freeze'),
			9  => $this->lang->line('text_good_type_depp_freeze')
		);
		
		$data['countries'] = array(
			'US'  => $this->lang->line('text_country_us'),
			'MY'  => $this->lang->line('text_country_my'),
			'TH'  => $this->lang->line('text_country_th'),
			'VN'  => $this->lang->line('text_country_vn'),
			'ID'  => $this->lang->line('text_country_id')
		);
		
		$data['error'] = validation_errors();
		
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('shipping/jd', $data);
	}
	
	protected function validate() 
	{
		$this->form_validation->set_rules('jd_user', $this->lang->line('text_user'), 'required');
		$this->form_validation->set_rules('jd_secret_key', $this->lang->line('text_secret_key'), 'required');
		$this->form_validation->set_rules('jd_url_args', $this->lang->line('text_url_args'), 'required');
		$this->form_validation->set_rules('jd_source', $this->lang->line('text_source'), 'required');
		//$this->form_validation->set_rules('jd_customer_code', $this->lang->line('text_customer_code'), 'required');
		$this->form_validation->set_rules('jd_sender_name', $this->lang->line('jd_sender_name'), 'required');
		$this->form_validation->set_rules('jd_sender_mobile', $this->lang->line('text_sender_mobile'), 'required');
		$this->form_validation->set_rules('jd_sender_address', $this->lang->line('text_sender_address'), 'required');
		$this->form_validation->set_rules('jd_sender_city', $this->lang->line('text_sender_city'), 'required');
		$this->form_validation->set_rules('jd_sender_province', $this->lang->line('text_sender_province'), 'required');
		$this->form_validation->set_rules('jd_sender_country', $this->lang->line('text_sender_country'), 'required');
		$this->form_validation->set_rules('jd_sender_postcode', $this->lang->line('text_sender_postcode'), 'required');
		$this->form_validation->set_rules('jd_order_type', $this->lang->line('text_order_type'), 'required');
		$this->form_validation->set_rules('jd_sale_plat', $this->lang->line('text_sale_plat'), 'required');
		$this->form_validation->set_rules('jd_weight_unit', $this->lang->line('text_weight_unit'), 'required');
		$this->form_validation->set_rules('jd_service_level', $this->lang->line('text_service_level'), 'required');
		$this->form_validation->set_rules('jd_service_pickup_method', $this->lang->line('text_service_pickup_method'), 'required');
		$this->form_validation->set_rules('jd_collection_value', $this->lang->line('text_collection_value'), 'required');
		$this->form_validation->set_rules('jd_sort_order', $this->lang->line('text_sort_order'), 'required');

		return $this->form_validation->run();
	}
}


