<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Client extends MX_Controller 
{
	public function get_client_address()
	{	
		if($this->input->get('client_address_id'))
		{
			$client_address_id = $this->input->get('client_address_id');
			
			$this->load->model('client/client_model');

			$client_address = $this->client_model->get_client_address($client_address_id);

			if($client_address) 
			{
				$outdata = array(
					'success'  => true,
					'name'     => $client_address['name'],
					'company'  => $client_address['company'],
					'street'   => $client_address['street'],
					'street2'  => $client_address['street2'],
					'city'     => $client_address['city'],
					'state'    => $client_address['state'],
					'country'  => $client_address['country'],
					'zipcode'  => $client_address['zipcode'],
					'phone'    => $client_address['phone']
				);
			}
			else 
			{
				$outdata = array(
					'success'  => false
				);
			}
			
			$this->output->set_content_type('application/json');
			$this->output->set_output(json_encode($outdata));
		}
	}
}


