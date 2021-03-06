<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Store_ajax extends CI_Controller 
{
	public function get_store()
	{		
		$this->load->model('store/store_model');
		$this->load->model('client/client_model');

		if($this->input->get('store_id'))
		{
			$store_id = $this->input->get('store_id');
			
			$store_data = $this->store_model->get_store($store_id);
			
			$client = $this->client_model->get_client($store_data['client_id']);

			$outdata = array(
				'name'       => $store_data['name'],
				'platform'   => $store_data['platform'],
				'firstname'  => $client['firstname'],
				'lastname'   => $client['lastname'],
				'company'    => $client['company'],
				'street'     => $client['street'],
				'city'       => $client['city'],
				'state'      => $client['state'],
				'country'    => $client['country'],
				'zipcode'    => $client['zipcode'],
				'email'      => $client['email'],
				'phone'      => $client['phone']

			);
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
	
	public function autocomplete()
	{
		$this->lang->load('store/store');
		
		$this->load->model('store/store_model');
				
		if($this->input->post('store_name'))
		{
			$store_name = $this->input->post('store_name');
			
			$stores_data = $this->store_model->find_stores_by_name($store_name);

			if($stores_data) 
			{
				$stores = array();
				
				foreach($stores_data as $store_data)
				{
					$stores[] = array(
						'store_id'  => $store_data['store_id'],
						'name'      => $store_data['name'],
						'label'     => $store_data['name']
					);
				}
				
				$outdata = array(
					'success'  => true,
					'stores'  => $stores
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


