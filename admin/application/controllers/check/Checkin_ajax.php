<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Checkin_ajax extends CI_Controller
{
	public function get_product()
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
		$this->load->model('warehouse/location_model');
		$this->load->model('inventory/inventory_model');
		
		//code empty
		if(!$this->input->post('code'))
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_code_empty')
			);
			
			echo json_encode($outdata);
			die();
		}
		
		//can't find product
		$code = $this->input->post('code');
		
		$code = trim($code);		
		
		$this->load->model('catalog/product_model');
		
		$key = 'upc';
		
		$results = $this->product_model->find_product_by_upc($code);
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_sku($code);
			
			$key = 'sku';
		}
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_asin($code);
			
			$key = 'asin';
		}
		
		if(!$results) 
		{
			$results = $this->product_model->find_product_by_name($code);	
			
			$key = 'name';
		}
			
		if(!$results)
		{
			$outdata = array(
				'success'   => false,
				'msg'       => $this->lang->line('error_product_not_found')
			);
			
			echo json_encode($outdata);
			die();
		}
		 
		//find product
		$products = array();
		
		foreach($results as $result)
		{
			$product_info = $this->product_model->get_product($result['id']);
		
			$products[] = array(
				'label'       => $product_info[$key],
				'product_id'  => $product_info['id'],
				'upc'         => $product_info['upc'],
				'sku'         => $product_info['sku'],
				'asin'        => $product_info['asin'],
				'name'        => $product_info['name']
			);
		}
	
		$outdata = array(
			'success'   => true,
			'products'  => $products
		);
			
		echo json_encode($outdata);
	}
	
	public function get_locations()
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('warehouse/location_model');

		if($this->input->get('client_id'))
		{
			$client_id = $this->input->get('client_id');
			
			$locations_data = $this->location_model->get_locations_by_client($client_id);
		
			if($locations_data) 
			{				
				$locations = array();
				
				foreach($locations_data as $location_data)
				{
					$locations[] = array(
						'id'    => $location_data['id'],
						'name'  => $location_data['name']
					);
				}
				
				$outdata = array(
					'success'   => true,
					'locations' => $locations
				);
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'msg'      => $this->lang->line('error_client_no_locations')
				);
			}
					
			echo json_encode($outdata);
		}
	}
	
	public function get_checkin_by_tracking()
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');
		
		if($this->input->post('tracking'))
		{
			$tracking = $this->input->post('tracking');
			
			$tracking = trim($tracking);
			
			$checkin = $this->checkin_model->get_checkin_by_tracking($tracking);
		
			if($checkin) 
			{	
				$status     = $checkin['status'];
				$checkin_id = $checkin['id'];
				
				if($status != 1)
				{
					$outdata = array(
						'success'  => false,
						'msg'      => $this->lang->line('error_checkin_status_invalid')
					);
				}
				else
				{
					$checkin_products_data = $this->checkin_model->get_checkin_products($checkin_id);
					
					$checkin_products = array();
					
					foreach($checkin_products_data as $checkin_product_data) 
					{
						$checkin_products[] = array(
							'product_id' => $checkin_product_data['id'],
							'name'       => $checkin_product_data['name'],
							'upc'        => $checkin_product_data['upc'],
							'sku'        => $checkin_product_data['sku'],
							'quantity'   => $checkin_product_data['quantity']
						);
					}
					
					$outdata = array(
						'success'          => true,
						'location'         => $checkin['location_name'],
						'status'           => $checkin['status'],
						'checkin_products' => $checkin_products
					);
				}
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'msg'      => $this->lang->line('error_checkin_not_found')
				);
			}
					
			echo json_encode($outdata);
			die();
		}
	}
	
	public function change_status()
	{
		$this->lang->load('check/checkin');
		
		$this->load->model('check/checkin_model');

		if($this->input->get('checkin_id'))
		{
			$checkin_id = $this->input->get('checkin_id');
			
			$checkin = $this->checkin_model->get_checkin($checkin_id);

			if($checkin['status'] == 1) 
			{
				$result = $this->checkin_model->complete_checkin($checkin_id);
				
				$status = 2;
			}
			
			if($checkin['status'] == 2)
			{
				$result = $this->checkin_model->uncomplete_checkin($checkin_id);
				
				$status = 1;
			}

			$outdata = array(
				'success'   => ($result)?true:false,
				'status'    => $status
			);
					
			echo json_encode($outdata);
		}
	}
	
	public function upload_file()
	{	 
		$temp_file = $_FILES['file']['tmp_name'];   
		
		$debug = $_FILES["file"]["name"];
		
		$target_file = UPLOADPATH . $_FILES['file']['name'];  		
	 
		move_uploaded_file($temp_file, $target_file);
		
		$outdata = array();
		
		echo json_encode($outdata);
	}
}


