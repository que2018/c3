<?php

require_once 'PrintNode/autoload.php';
//include 'credentials.php';

class Printnode
{	
	private $api_key;
	private $printer_id;

	public function __construct()
    {
		$CI =& get_instance();
		
		$this->api_key = $CI->config->item('config_printnode_api_key');
		$this->printer_id = $CI->config->item('config_printnode_printer_id');
    }
		
	public function get_printers()
	{
		$credentials = new PrintNode\Credentials();
		$credentials->setApiKey($this->api_key);

		$request = new PrintNode\Request($credentials);	
		
		$printers_data = $request->getPrinters();
		
		$printers = array();
		
		if($printers_data)
		{
			foreach($printers_data as $printer_data) 
			{
				$printers[] = array(
					'id'           => $printer_data->id,
					'name'         => $printer_data->name,
					'description'  => $printer_data->description
				);
			}
		}
		
		return $printers;
	}
	
	public function submit_print_job($pdf_path) 
	{				
		$printer = $this->get_active_printer();
				
		if($printer)
		{
			$credentials = new PrintNode\Credentials();
			$credentials->setApiKey($this->api_key);

			$printJob = new PrintNode\PrintJob();
		
			$printJob->printer = $printer;
			$printJob->contentType = 'pdf_base64';
			$printJob->content = base64_encode(file_get_contents($pdf_path));
			$printJob->source = 'My App/1.0';
			//$printJob->title = 'PrintJob from My App/1.0';
			
			$request = new PrintNode\Request($credentials);	
			
			$response = $request->post($printJob);
			
			if($response)
			{
				return $response->getStatusCode();
			}
			else
			{
				return false;
			}
		}
		else
		{
			return false;
		}
	}
	
	protected function get_active_printer()
	{
		$credentials = new PrintNode\Credentials();
		$credentials->setApiKey($this->api_key);

		$request = new PrintNode\Request($credentials);	
		
		$printers = $request->getPrinters();
			
		$active_printer = false;
			
		if($printers)
		{
			foreach($printers as $printer) 
			{
				if($printer->id == $this->printer_id)
				{
					$active_printer = $printer;
					
					break;
				}
			}
		}
		
		return $active_printer;
	}
}
