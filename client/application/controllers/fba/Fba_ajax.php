<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_ajax extends CI_Controller 
{
	public function get_locations()
	{
		$this->lang->load('fba/fba');
		
		if($this->input->get('client_id'))
		{
			$client_id = $this->input->get('client_id');
			
			$this->load->model('warehouse/location_model');

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
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function change_status()
	{		
		$this->lang->load('fba/fba');
		
		$this->load->model('fba/fba_model');
		
		if($this->input->get('fba_id'))
		{
			$fba_id = $this->input->get('fba_id');
			
			$fba = $this->fba_model->get_fba($fba_id);

			if($fba['status'] == 1) 
			{
				$result = $this->fba_model->complete_fba($fba_id);
			
				$success = ($result)?true:false;
			
				$status = 2;
			}
			
			if($fba['status'] == 2)
			{
				$result = $this->fba_model->uncomplete_fba($fba_id);
				
				$success = ($result)?true:false;
				
				$status = 1;
			}

			$outdata = array(
				'success'   => $success,
				'status'    => $status
			);
					
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function upload_file() 
	{	
		$this->lang->load('fba/fba');
	
		$this->load->model('fba/fba_model');

		if(!empty($_FILES)) 
		{	
			$temp_file = $_FILES['file']['tmp_name'];      
			$target_path = FILEPATH . $_FILES['file']['name'];  
	 
			$result = move_uploaded_file($temp_file, $target_path);
			
			if($result)
			{
				$outdata = array(
					'success'  => true,
					'name'     => basename($target_path),
					'path'     => $_FILES['file']['name']
				);
			}
			else
			{
				$outdata = array(
					'success'  => false,
					'message'  => $this->lang->line('error_file_move')
				);
			}
		}
		else
		{
			$outdata = array(
				'success'  => false,
				'message'  => $this->lang->line('error_file_upload')
			);
		}

		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));		
	}
}


