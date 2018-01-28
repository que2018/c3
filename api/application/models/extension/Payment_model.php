<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Payment_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}
	
	public function get_payment_methods() 
	{
		$query = $this->db->get_where('extension', array('type' => 'payment'));
	
		$payment_methods = array();
	
		foreach ($query->result_array() as $result) 
		{
			$code = $result['code'];
			
			$this->lang->load('payment/' . $code);

			$payment_methods[] = array(
				'code'     => $code,
				'name'     => $this->lang->line('text_title')
			);
		}
		
		return $payment_methods;
	}
}
