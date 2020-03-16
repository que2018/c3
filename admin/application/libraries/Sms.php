<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require_once("Twilio/autoload.php");
use Twilio\Rest\Client;
class Sms
{
	public function send_sms($config, $phone, $content) 		
	{
		$client = new Client($config['sid'], $config['token']);
		$client->messages->create(
			$phone,
			array(
				'from' => $config['default_from'],
				'body' => $content
			)
		);
		return true;
	}
}
