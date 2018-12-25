<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fedex_model extends CI_Model
{		
	public function get_tracking_detail($tracking)
	{	
		require_once APPPATH . 'libraries/RocketShipIt/autoload.php';
	
		$config = new \RocketShipIt\Config;
		
		$config->setDefault('fedex', 'accountNumber', $this->config->item('fedex_account_number'));
		$config->setDefault('fedex', 'meterNumber', $this->config->item('fedex_meter_number'));
		$config->setDefault('fedex', 'key', $this->config->item('fedex_key'));
		$config->setDefault('fedex', 'password', $this->config->item('fedex_password'));

		$track = new \RocketShipIt\Track('FedEx', array('config' => $config));
		
		$response = $track->track($tracking);
		
		$result = array();
		
		if(isset($response['Data']['Packages'][0]['Activity'])) 
		{
			$activities	= $response['Data']['Packages'][0]['Activity'];
			
			if($activities)
			{
				foreach($activities as $i => $activity)
				{
					if($activity['Description'])
					{
						$result[] = array(
							'description' => $activity['Description'],
							'time'        => $activity['Time']
						);
					}
				}
				
				$result = array_slice($result, 0, 4);
			}
		}
				
		return $result;
	}
}
