<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Payment_model extends CI_Model
{
	public function get_payment_method($code) 
	{	
		$this->lang->load('payment/' . $code);
		
		$payment_method = array(
			'code'     => $code,
			'name'     => $this->lang->line('text_' . $code)
		);
		
		return $payment_method;
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
				'name'     => $this->lang->line('text_' . $code)
			);
		}
		
		return $payment_methods;
	}
}
