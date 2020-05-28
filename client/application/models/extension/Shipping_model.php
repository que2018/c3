<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Shipping_model extends CI_Model
{
	public function get_shipping_providers() 
	{
		$query = $this->db->get_where('extension', array('type' => 'shipping'));
	
		$shipping_providers = array();
	
		foreach ($query->result_array() as $result) 
		{
			$code = $result['code'];
			
			$this->lang->load('shipping/' . $code);

			$shipping_providers[] = array(
				'code'     => $code,
				'name'     => $this->lang->line('text_title')
			);
		}
		
		return $shipping_providers;
	}
	
	public function get_shipping_services($shipping_provider) 
	{
		$q = $this->db->get_where('setting', array('key' => $shipping_provider . '_service'));
	
		if($q->num_rows() > 0)
		{
			$result = $q->row_array();
			
			$shipping_methods = array();
			
			$shipping_methods_data = unserialize($result['value']);
			
			foreach($shipping_methods_data as $shipping_method_data) 
			{
				$shipping_methods[] = array(
					'code'   => $shipping_method_data['code'],
					'name'   => $shipping_method_data['name']
				);
			}
			
			return $shipping_methods;
		} 
		
		return false;
	}
}
