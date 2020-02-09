<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fba_warehouse extends MX_Controller 
{
	public function autocomplete()
	{
		$this->load->model('fba/fba_warehouse_model');
		
		$outdata = array();
		
		if($this->input->get('fba_warehouse_name'))
		{
			$fba_warehouse_name = $this->input->get('fba_warehouse_name');
			
			$filter_data = array(
				'filter_name'  => $fba_warehouse_name,
				'start'        => 0,
				'limit'        => $this->config->item('config_autocomplete_limit')
			);
			
			$fba_warehouses_data = $this->fba_warehouse_model->get_fba_warehouses($filter_data);

			if($fba_warehouses_data) 
			{
				$fba_warehouses = array();
				
				foreach($fba_warehouses_data as $fba_warehouse_data)
				{
					$fba_warehouses[] = array(
						'label'            => $fba_warehouse_data['name'],
						'name'             => $fba_warehouse_data['name'],
						'fba_warehouse_id' => $fba_warehouse_data['fba_warehouse_id']
					);
				}
				
				$outdata = array(
					'success'        => true,
					'fba_warehouses' => $fba_warehouses
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


