<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once 'predis/Autoloader.php';

Predis\Autoloader::register();

class Predis
{
	public function test() 
	{
		$client = new Predis\Client('tcp://localhost:6379');
		
		
	
		//$client->set('foo', 'bar');
	}
}
