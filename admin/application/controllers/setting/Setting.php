<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Setting extends MX_Controller 
{
	public function index()
	{
		$this->load->module('header');
		$this->load->module('footer');
	
		$this->load->library('form_validation');
		
		$this->form_validation->CI =& $this;
		
		$this->lang->load('setting/setting');
		
		$this->load->model('tool/image_model');
		$this->load->model('setting/setting_model');
		$this->load->model('setting/language_model');
		$this->load->model('extension/shipping_model');
		$this->load->model('setting/information_model');
		$this->load->model('setting/length_class_model');
		$this->load->model('setting/weight_class_model');
		
		$this->header->add_style(base_url(). 'assets/css/app/setting/setting.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/iCheck/custom.css');
		$this->header->add_style(base_url(). 'assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css');

		$this->header->add_script(base_url(). 'assets/js/plugins/iCheck/icheck.min.js');

		$this->header->set_title($this->lang->line('text_setting'));

		$this->form_validation->set_rules('config_time_zone', $this->lang->line('text_time_zone'), 'required');
		$this->form_validation->set_rules('config_page_limit', $this->lang->line('text_page_limit'), 'required');
		$this->form_validation->set_rules('config_sale_product_page_limit', $this->lang->line('text_sale_product_page_limit'), 'required');
		$this->form_validation->set_rules('config_dashboard_activity_limit', $this->lang->line('text_dashboard_activity_limit'), 'required');
		$this->form_validation->set_rules('config_dashboard_order_limit', $this->lang->line('text_dashboard_order_limit'), 'required');
		$this->form_validation->set_rules('config_dashboard_store_sync_limit', $this->lang->line('text_dashboard_store_sync_limit'), 'required');
		$this->form_validation->set_rules('config_language_id', $this->lang->line('text_language'), 'required');
		$this->form_validation->set_rules('config_length_class_id', $this->lang->line('text_length_class'), 'required');
		$this->form_validation->set_rules('config_weight_class_id', $this->lang->line('text_weight_class'), 'required');
		$this->form_validation->set_rules('config_autocomplete_limit', $this->lang->line('text_autocomplete_limit'), 'required');
		$this->form_validation->set_rules('config_label_width_type', $this->lang->line('config_label_width_type'), 'required');
		$this->form_validation->set_rules('config_label_width', $this->lang->line('text_label_width'), 'required');
		$this->form_validation->set_rules('config_label_posy', $this->lang->line('text_label_posy'), 'required');
		$this->form_validation->set_rules('config_location_barcode_width', $this->lang->line('text_location_barcode_width'), 'required');
		$this->form_validation->set_rules('config_location_barcode_height', $this->lang->line('text_location_barcode_height'), 'required');
		$this->form_validation->set_rules('config_location_barcode_posx', $this->lang->line('text_location_barcode_posx'), 'required');
		$this->form_validation->set_rules('config_location_barcode_posy', $this->lang->line('text_location_barcode_posy'), 'required');
		$this->form_validation->set_rules('config_location_barcode_name_size', $this->lang->line('text_location_barcode_name_size'), 'required');
		$this->form_validation->set_rules('config_location_barcode_code_size', $this->lang->line('text_location_barcode_code_size'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_width', $this->lang->line('text_location_barcode_batch_width'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_height', $this->lang->line('text_location_barcode_batch_height'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_posx', $this->lang->line('text_location_barcode_batch_posx'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_posy', $this->lang->line('text_location_barcode_batch_posy'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_name_size', $this->lang->line('text_location_barcode_batch_name_size'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_code_size', $this->lang->line('text_location_barcode_batch_code_size'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_margin', $this->lang->line('config_location_barcode_batch_margin'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_page_item', $this->lang->line('config_location_barcode_batch_page_item'), 'required');
		$this->form_validation->set_rules('config_location_barcode_batch_code_size', $this->lang->line('text_location_barcode_batch_code_size'), 'required');	
		$this->form_validation->set_rules('config_printnode_position_x', $this->lang->line('text_printnode_position_x'), 'required');
		$this->form_validation->set_rules('config_printnode_position_y', $this->lang->line('text_printnode_position_y'), 'required');
		$this->form_validation->set_rules('config_printnode_width', $this->lang->line('text_printnode_width'), 'required');
		$this->form_validation->set_rules('config_printnode_api_key', $this->lang->line('text_printnode_api_key'), 'required');
		$this->form_validation->set_rules('config_printnode_label_printer_id', $this->lang->line('text_printnode_active_label_printer'), 'required');
		$this->form_validation->set_rules('config_printnode_general_printer_id', $this->lang->line('text_printnode_active_general_printer'), 'required');
		$this->form_validation->set_rules('config_default_order_shipping_provider', $this->lang->line('text_default_order_shipping_provider'), 'required');
		$this->form_validation->set_rules('config_default_order_shipping_service', $this->lang->line('text_default_order_shipping_service'), 'required');
		
		if($this->form_validation->run() == true)
		{
			$data = array(
				'config_time_zone'                       	=> $this->input->post('config_time_zone'),
				'config_page_limit'                      	=> $this->input->post('config_page_limit'),
				'config_sale_product_page_limit'         	=> $this->input->post('config_sale_product_page_limit'),
				'config_dashboard_activity_limit'        	=> $this->input->post('config_dashboard_activity_limit'),
				'config_dashboard_order_limit'           	=> $this->input->post('config_dashboard_order_limit'),
				'config_dashboard_store_sync_limit'      	=> $this->input->post('config_dashboard_store_sync_limit'),
				'config_autocomplete_limit'      			=> $this->input->post('config_autocomplete_limit'),
				'config_label_width_type'      			    => $this->input->post('config_label_width_type'),
				'config_label_width'      					=> $this->input->post('config_label_width'),
				'config_label_posy'      					=> $this->input->post('config_label_posy'),				
				'config_location_barcode_width'      		=> $this->input->post('config_location_barcode_width'),
				'config_location_barcode_height'      		=> $this->input->post('config_location_barcode_height'),
				'config_location_barcode_posx'      		=> $this->input->post('config_location_barcode_posx'),
				'config_location_barcode_posy'      		=> $this->input->post('config_location_barcode_posy'),
				'config_location_barcode_name_size'         => $this->input->post('config_location_barcode_name_size'),
				'config_location_barcode_code_size'         => $this->input->post('config_location_barcode_code_size'),
				'config_location_barcode_batch_width'       => $this->input->post('config_location_barcode_batch_width'),
				'config_location_barcode_batch_height'      => $this->input->post('config_location_barcode_batch_height'),
				'config_location_barcode_batch_posx'        => $this->input->post('config_location_barcode_batch_posx'),
				'config_location_barcode_batch_posy'        => $this->input->post('config_location_barcode_batch_posy'),
				'config_location_barcode_batch_name_size'   => $this->input->post('config_location_barcode_batch_name_size'),
				'config_location_barcode_batch_code_size'   => $this->input->post('config_location_barcode_batch_code_size'),
				'config_location_barcode_batch_margin'   	=> $this->input->post('config_location_barcode_batch_margin'),
				'config_location_barcode_batch_page_item'   => $this->input->post('config_location_barcode_batch_page_item'),
				'config_printnode_position_x'   	        => $this->input->post('config_printnode_position_x'),
				'config_printnode_position_y'   		    => $this->input->post('config_printnode_position_y'),
				'config_printnode_width'   					=> $this->input->post('config_printnode_width'),
				'config_printnode_api_key'   				=> $this->input->post('config_printnode_api_key'),
				'config_printnode_label_printer_id'   		=> $this->input->post('config_printnode_label_printer_id'),
				'config_printnode_general_printer_id'       => $this->input->post('config_printnode_general_printer_id'),
				'config_language_id'      			        => $this->input->post('config_language_id'),
				'config_information_id'      			    => $this->input->post('config_information_id'),
				'config_information_front_id'      			=> $this->input->post('config_information_front_id'),
				'config_length_class_id'      			    => $this->input->post('config_length_class_id'),
				'config_weight_class_id'      			    => $this->input->post('config_weight_class_id'),
				'config_logo'      			                => $this->input->post('config_logo'),
				'config_default_order_shipping_provider' 	=> $this->input->post('config_default_order_shipping_provider'),
				'config_default_order_shipping_service'  	=> $this->input->post('config_default_order_shipping_service'),
				'config_smtp_hostname'                   	=> $this->input->post('config_smtp_hostname'),
				'config_smtp_username'                   	=> $this->input->post('config_smtp_username'),
				'config_smtp_password'                   	=> $this->input->post('config_smtp_password'),
				'config_smtp_port'                       	=> $this->input->post('config_smtp_port'),
				'config_smtp_timeout'                    	=> $this->input->post('config_smtp_timeout'),
				'config_google_key'                      	=> $this->input->post('config_google_key')
			);
				
			$this->setting_model->edit_setting('config', $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_setting_edit_success'));
			
			redirect(base_url() . 'setting/setting', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{			
			$data = array(
				'config_time_zone'                       	=> $this->input->post('config_time_zone'),
				'config_page_limit'              		 	=> $this->input->post('config_page_limit'),
				'config_sale_product_page_limit'         	=> $this->input->post('config_sale_product_page_limit'),
				'config_dashboard_activity_limit'        	=> $this->input->post('config_dashboard_activity_limit'),
				'config_dashboard_order_limit'           	=> $this->input->post('config_dashboard_order_limit'),
				'config_dashboard_store_sync_limit'      	=> $this->input->post('config_dashboard_store_sync_limit'),
				'config_autocomplete_limit'      		 	=> $this->input->post('config_autocomplete_limit'),
				'config_label_width_type'      			    => $this->input->post('config_label_width_type'),
				'config_label_width'      					=> $this->input->post('config_label_width'),
				'config_label_posy'      					=> $this->input->post('config_label_posy'),		
				'config_location_barcode_width'      		=> $this->input->post('config_location_barcode_width'),
				'config_location_barcode_height'      		=> $this->input->post('config_location_barcode_height'),	
				'config_location_barcode_posx'      		=> $this->input->post('config_location_barcode_posx'),
				'config_location_barcode_posy'      		=> $this->input->post('config_location_barcode_posy'),
				'config_location_barcode_name_size'         => $this->input->post('config_location_barcode_name_size'),
				'config_location_barcode_code_size'         => $this->input->post('config_location_barcode_code_size'),
				'config_location_barcode_batch_width'       => $this->input->post('config_location_barcode_batch_width'),
				'config_location_barcode_batch_height'      => $this->input->post('config_location_barcode_batch_height'),	
				'config_location_barcode_batch_posx'      	=> $this->input->post('config_location_barcode_batch_posx'),
				'config_location_barcode_batch_posy'      	=> $this->input->post('config_location_barcode_batch_posy'),
				'config_location_barcode_batch_name_size'   => $this->input->post('config_location_barcode_batch_name_size'),
				'config_location_barcode_batch_code_size'   => $this->input->post('config_location_barcode_batch_code_size'),
				'config_location_barcode_batch_margin'  	=> $this->input->post('config_location_barcode_batch_margin'),
				'config_location_barcode_batch_page_item'   => $this->input->post('config_location_barcode_batch_page_item'),
				'config_printnode_position_x'   		    => $this->input->post('config_printnode_position_x'),
				'config_printnode_position_y'  			    => $this->input->post('config_printnode_position_y'),
				'config_printnode_width'      			    => $this->input->post('config_printnode_width'),
				'config_printnode_api_key'   				=> $this->input->post('config_printnode_api_key'),
				'config_printnode_label_printer_id'         => $this->input->post('config_printnode_label_printer_id'),
				'config_printnode_general_printer_id'       => $this->input->post('config_printnode_general_printer_id'),
				'config_language_id'        			    => $this->input->post('config_language_id'),
				'config_information_id'      			    => $this->input->post('config_information_id'),
				'config_information_front_id'      			=> $this->input->post('config_information_front_id'),
				'config_length_class_id'      			    => $this->input->post('config_length_class_id'),
				'config_weight_class_id'      			    => $this->input->post('config_weight_class_id'),
				'config_logo'      			                => $this->input->post('config_logo'),
				'config_default_order_shipping_provider' 	=> $this->input->post('config_default_order_shipping_provider'),
				'config_default_order_shipping_service'  	=> $this->input->post('config_default_order_shipping_service'),
				'config_smtp_hostname'                   	=> $this->input->post('config_smtp_hostname'),
				'config_smtp_username'                   	=> $this->input->post('config_smtp_username'),
				'config_smtp_password'                   	=> $this->input->post('config_smtp_password'),
				'config_smtp_port'                       	=> $this->input->post('config_smtp_port'),
				'config_smtp_timeout'                    	=> $this->input->post('config_smtp_timeout'),
				'config_google_key'                      	=> $this->input->post('config_google_key')
			);
		}
		else
		{
			$data['config_time_zone']             				= $this->config->item('config_time_zone');
			$data['config_page_limit']             				= $this->config->item('config_page_limit');
			$data['config_sale_product_page_limit']         	= $this->config->item('config_sale_product_page_limit');
			$data['config_dashboard_activity_limit']        	= $this->config->item('config_dashboard_activity_limit');
			$data['config_dashboard_order_limit']           	= $this->config->item('config_dashboard_order_limit');
			$data['config_dashboard_store_sync_limit']      	= $this->config->item('config_dashboard_store_sync_limit');
			$data['config_autocomplete_limit']     		    	= $this->config->item('config_autocomplete_limit');
			$data['config_label_width_type']     				= $this->config->item('config_label_width_type');
			$data['config_label_width']     					= $this->config->item('config_label_width');
			$data['config_label_posy']     		  				= $this->config->item('config_label_posy');
			$data['config_location_barcode_width']     		  	= $this->config->item('config_location_barcode_width');
			$data['config_location_barcode_height']     		= $this->config->item('config_location_barcode_height');
			$data['config_location_barcode_posx']     			= $this->config->item('config_location_barcode_posx');
			$data['config_location_barcode_posy']     			= $this->config->item('config_location_barcode_posy');
			$data['config_location_barcode_name_size']     		= $this->config->item('config_location_barcode_name_size');
			$data['config_location_barcode_code_size']     		= $this->config->item('config_location_barcode_code_size');
			$data['config_location_barcode_batch_width']    	= $this->config->item('config_location_barcode_batch_width');
			$data['config_location_barcode_batch_height']       = $this->config->item('config_location_barcode_batch_height');
			$data['config_location_barcode_batch_posx']     	= $this->config->item('config_location_barcode_batch_posx');
			$data['config_location_barcode_batch_posy']         = $this->config->item('config_location_barcode_batch_posy');
			$data['config_location_barcode_batch_name_size']    = $this->config->item('config_location_barcode_batch_name_size');
			$data['config_location_barcode_batch_code_size']    = $this->config->item('config_location_barcode_batch_code_size');
			$data['config_location_barcode_batch_margin']    	= $this->config->item('config_location_barcode_batch_margin');
			$data['config_location_barcode_batch_page_item']    = $this->config->item('config_location_barcode_batch_page_item');
			$data['config_printnode_position_x']     		    = $this->config->item('config_printnode_position_x');
			$data['config_printnode_position_y']     		    = $this->config->item('config_printnode_position_y');
			$data['config_printnode_width']     		        = $this->config->item('config_printnode_width');
			$data['config_printnode_api_key']     		        = $this->config->item('config_printnode_api_key');
			$data['config_printnode_label_printer_id']     		= $this->config->item('config_printnode_label_printer_id');
			$data['config_printnode_general_printer_id']        = $this->config->item('config_printnode_general_printer_id');
			$data['config_language_id']     		            = $this->config->item('config_language_id');
			$data['config_information_id']     		            = $this->config->item('config_information_id');
			$data['config_information_front_id']     		    = $this->config->item('config_information_front_id');
			$data['config_length_class_id']     		        = $this->config->item('config_length_class_id');
			$data['config_weight_class_id']     		        = $this->config->item('config_weight_class_id');
			$data['config_logo']     		                    = $this->config->item('config_logo');
			$data['config_default_order_shipping_provider'] 	= $this->config->item('config_default_order_shipping_provider');
			$data['config_default_order_shipping_service']  	= $this->config->item('config_default_order_shipping_service');
			$data['config_smtp_hostname']                   	= $this->config->item('config_smtp_hostname');
			$data['config_smtp_username']                   	= $this->config->item('config_smtp_username');
			$data['config_smtp_password']                   	= $this->config->item('config_smtp_password');
			$data['config_smtp_port']                           = $this->config->item('config_smtp_port');
			$data['config_smtp_timeout']                   		= $this->config->item('config_smtp_timeout');
			$data['config_google_key']             			    = $this->config->item('config_google_key');
		}
		
		//languages
		$data['languages'] = array();
		
		$languages = $this->language_model->get_languages();
		
		if($languages) 
		{
			foreach($languages as $language)
			{
				$data['languages'][] = array(
					'language_id' => $language['language_id'],
					'name'        => $language['name']
				);
			}
		}
		
		//informations
		$data['informations'] = array();
		
		$informations = $this->information_model->get_informations();
		
		if($informations) 
		{
			foreach($informations as $information)
			{
				$data['informations'][] = array(
					'information_id' => $information['information_id'],
					'title'          => $information['title']
				);
			}
		}
		
		//length classes
		$data['length_classes'] = array();
		
		$length_classes = $this->length_class_model->get_length_classes();
		
		if($length_classes) 
		{
			foreach($length_classes as $length_class)
			{
				$data['length_classes'][] = array(
					'id'    => $length_class['id'],
					'unit'  => $length_class['unit']
				);
			}
		}
			
		//weight classses
		$data['weight_classes'] = array();
		
		$weight_classes = $this->weight_class_model->get_weight_classes();
		
		if($weight_classes) 
		{
			foreach($weight_classes as $weight_class)
			{
				$data['weight_classes'][] = array(
					'id'    => $weight_class['id'],
					'unit'  => $weight_class['unit']
				);
			}
		}
		
		//logo thumb
		if(is_file(IMAGEPATH . $data['config_logo'])) 
		{
			$data['thumb_logo'] = $this->image_model->resize($data['config_logo'], 100, 100);
		} 
		else
		{
			$data['thumb_logo'] = $this->image_model->resize('no_image.jpg', 100, 100);
		}
		
		$data['placeholder'] = $this->image_model->resize('no_image.jpg', 100, 100);
		
		//shipping providers
		$data['shipping_providers'] = array();
		
		$shipping_providers_data = $this->shipping_model->get_shipping_providers();
				
		foreach($shipping_providers_data as $shipping_provider_data) 
		{
			$code = $shipping_provider_data['code'];
			
			if($this->config->item($code .'_status'))
			{
				$data['shipping_providers'][] = array(
					'code'     => $shipping_provider_data['code'],
					'name'     => $shipping_provider_data['name']
				);
			}
		}
		
		//shipping providers
		$data['shipping_services'] = array();
		
		if($data['config_default_order_shipping_provider'])
		{
			$shipping_provider = $data['config_default_order_shipping_provider'];
			
			$shipping_services_data = $this->shipping_model->get_shipping_services($shipping_provider);
			
			if($shipping_services_data)
			{
				foreach($shipping_services_data as $shipping_service_data)
				{
					$data['shipping_services'][] = array(
						'code'  => $shipping_service_data['code'],
						'name'  => $shipping_service_data['name']
					);
				}
			}
		}
		
		$data['success'] = $this->session->flashdata('success');
		
		$data['error'] = validation_errors();
		
		$this->lang->load('setting/setting');
		$this->load->model('setting/setting_model');
	
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('setting/setting', $data);
	}
	
	public function get_printers()
	{	
		$this->load->library('printnode');
	
		$printers_data = $this->printnode->get_printers();
		
		if($printers_data)
		{
			$printers = array();
			
			foreach($printers_data as $printer_data)
			{
				$printers[] = array(
					'id'    => $printer_data['id'],
					'name'  => $printer_data['name']
				);
			}
			
			$outdata = array(
				'success'   => true,
				'printers'  => $printers
			);
		}
		else
		{
			$outdata = array(
				'success'   => false
			);
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	} 
}


