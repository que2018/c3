<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Location_ajax extends CI_Controller 
{
	public function autocomplete()
	{
		$this->lang->load('warehouse/location');
		
		$this->load->model('warehouse/location_model');
		
		$outdata = array();
		
		if($this->input->get('location_name'))
		{
			$location_name = $this->input->get('location_name');
			
			$filter_data = array(
				'filter_name'      => $location_name,
				'start'            => 0,
				'limit'            => $this->config->item('config_autocomplete_limit')
			);
			
			$locations_data = $this->location_model->find_locations($filter_data);

			if($locations_data) 
			{
				$locations = array();
				
				foreach($locations_data as $location_data)
				{
					$locations[] = array(
						'label'       => $location_data['name'],
						'location_id' => $location_data['id'],
						'name'        => $location_data['name']
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
					'success'  => false
				);
			}
		}
		
		$this->output->set_content_type('application/json');
		$this->output->set_output(json_encode($outdata));
	}
}


