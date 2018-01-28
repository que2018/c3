<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkin_rapid extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
	}
	
	public function index()
	{
		$this->load->library('form_validation');
		
		$tracking = $this->input->post('tracking');
		
		$this->form_validation->set_rules('checkin_product[]', $this->lang->line('text_checkin_product'), 'required');
		
		$data = array(
			'checkin_products'  => $this->input->post('checkin_product')
		);
		
		if($this->form_validation->run() == true)
		{
			$this->checkin_model->edit_rapid_checkin($tracking, $data);
			
			$this->session->set_flashdata('success', $this->lang->line('text_rapid_checkin_add_success'));
			
			redirect(base_url() . 'check/checkin', 'refresh');
		}
		
		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			$checkin = $this->checkin_model->get_checkin_by_tracking($tracking);
		
			if($checkin)
			{
				$data['location_name'] = $checkin['location_name'];
			}
			else
			{
				$data['location_name'] = '';
			}
		}
		else
		{
			$data['location_name'] = '';
		}
		
		$data['error'] = validation_errors();
		
		$this->load->view('common/header');
		$this->load->view('check/checkin_rapid', $data);
		$this->load->view('common/footer');
	}
	
	function get_checkin()
	{		
		if($this->input->get('code'))
		{
			$code = $this->input->get('code');
								
			$result = $this->checkin_model->get_checkin($code);
			
			if(!$result) 
			{
				$result = $this->checkin_model->get_checkin_by_tracking($code);	
			}
				
			if(!$result)
			{
				$outdata = array(
					'success'   => false,
					'message'   => $this->lang->line('error_checkin_not_found')
				);
				
				echo json_encode($outdata);
				die();
			}
			 
			//find checkin
			$checkin_id = $result['id']; 
			
			$checkin_products_data = $this->checkin_model->get_checkin_products($checkin_id);				

			$checkin_products = array();
			
			foreach($checkin_products_data as $checkin_product_data)
			{
				$checkin_products[] = array(
					'product_name'   => $checkin_product_data['product_name'],
					'upc'            => $checkin_product_data['upc'],
					'sku'            => $checkin_product_data['sku'],
					'quantity'       => $checkin_product_data['quantity'],
					'location_name'  => (isset($checkin_product_data['location_name']))?$checkin_product_data['location_name']:''
				);
			}
			
			$checkin = array(
				'checkin_id'        => $checkin_id,
				'tracking'          => $result['tracking'],
				'checkin_products'  => $checkin_products
			);			
					
			$outdata = array(
				'success'   => true,
				'checkin'   => $checkin
			);
				
			echo json_encode($outdata);
		}
	}
	
	function complete()
	{		
		if($this->input->get('checkin_id'))
		{
			$checkin_id = $this->input->get('checkin_id');
									
			$checkin = $this->checkin_model->get_checkin($checkin_id);
			
			if(!$checkin) 
			{
				$outdata = array(
					'success'  => false,
					'level'    => 2,
					'message'  => $this->lang->line('error_checkin_not_found')
				);
				
			}
			else
			{
				if($checkin['status'] == 2)
				{
					$outdata = array(
						'success'  => false,
						'level'    => 1,
						'message'  => $this->lang->line('error_checkin_already_acompleted')
					);
				}
				else
				{
					$this->checkin_model->complete_checkin($checkin_id);
					
					$outdata = array(
						'success'  => true,
						'message'  => $this->lang->line('text_checkin_is_completed')

					);
				}	
			}
				
			echo json_encode($outdata);
		}
	}
}


