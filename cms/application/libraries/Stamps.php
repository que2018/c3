<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Stamps 
{
	public function __construct()
	{
		$this->ci =& get_instance();
	}

	public function getAuthenicator($client, $credentials)
	{
		$requestParams = array(
			'Credentials' => array(
				'Username'      => $credentials['username'],
				'Password'      => $credentials['password'],
				'IntegrationID' => $credentials['integration_id']
			) 
		);
		
		try {
			$response = $client->AuthenticateUser($requestParams);
			
			$result = array (
				'success' => 'true',
				'response' => $response 
			);
			
		} catch(SoapFault $fault) {
			$result = array (
				'success' => 'false',
				'message' => $fault 
			);
		}
		
		return $result;
	}
	
	public function cleanseAddress($client, $authenicator, $address) 
	{
		$requestParams = array(
			'Authenticator' => $authenicator,
			'Address'       => $address 
		);
		
		try {
			$response = $client->CleanseAddress($requestParams);
			
			if ($response->AddressMatch == 1 && $response->CityStateZipOK == 1) {
				$result = array (
					'success' => 'true',
					'response' => $response 
				);
			} 
			else 
			{
				$result = array (
					'success' => 'false',
					'message' => 'Invalid Address',
					'response' => $response 
				);
			}
			
		} catch(SoapFault $fault) {
			$result = array (
				'success' => 'false',
				'message' => $fault 
			);
		}
		
		return $result;
	}
}

