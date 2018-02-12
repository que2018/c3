<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Location_ajax extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('warehouse/location');
		
		$this->load->model('warehouse/location_model');
	}
	
	public function autocomplete()
	{
		$outdata = array();
		
		if($this->input->get('location_name'))
		{
			$location_name = $this->input->get('location_name');
			
			if($this->input->get('warehouse_id'))
			{
				$warehouse_id = $this->input->get('warehouse_id');
				
				$filter_data = array(
					'filter_name'      => $location_name,
					'filter_warehouse' => $warehouse_id,
					'start'            => 0,
					'limit'            => $this->config->item('config_autocomplete_limit')
				);
			}
			else
			{
				$filter_data = array(
					'filter_name'      => $location_name,
					'start'            => 0,
					'limit'            => $this->config->item('config_autocomplete_limit')
				);
			}
			
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
		
		echo json_encode($outdata);
		die();
	}
}


