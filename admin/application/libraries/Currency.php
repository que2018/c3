<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Currency
{
	public function __construct()
    {
		$this->ci =& get_instance();
    }
	
	public function format($amount) 
	{
		if($amount >= 0)
			return '$' . number_format($amount, 2);
		else 
			return '-$' . number_format(abs($amount), 2);
	}
}