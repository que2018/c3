<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Distance
{
	public function __construct()
	{
		$this->ci =& get_instance();
	}

	public function get_distance($origins, $destinations) 
	{		
		$ch = curl_init();	

		$url  = 'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial';
		$url .= '&origins='.str_replace(' ', '+', $origins);
		$url .= '&destinations='.str_replace(' ', '+', $destinations);
		$url .= '&key='.$this->ci->config->item('config_google_map_key');

		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		
		$output = curl_exec($ch);
						
		curl_close($ch);
						
		$response = json_decode($output);
		
		if($response->status != 'INVALID_REQUEST')
		{
			$rows = $response->rows;
			$elements = $rows[0]->elements;
			$distance = $elements[0]->distance;
			
			return $distance->value;
		}
		else
		{
			return false;
		}
	}
}
