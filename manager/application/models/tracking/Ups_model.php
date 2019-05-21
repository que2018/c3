<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ups_model extends CI_Model
{		
	public function get_tracking_detail($tracking)
	{	
		require_once APPPATH . 'libraries/RocketShipIt/autoload.php';
	
		$config = new \RocketShipIt\Config;
		
		$config->setDefault('ups', 'username', $this->config->item('ups_username'));
		$config->setDefault('ups', 'password', $this->config->item('ups_password'));
		$config->setDefault('ups', 'license', $this->config->item('ups_access_key'));
		$config->setDefault('ups', 'accountNumber', $this->config->item('ups_account_number'));

		$track = new \RocketShipIt\Track('UPS', array('config' => $config));
		
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
