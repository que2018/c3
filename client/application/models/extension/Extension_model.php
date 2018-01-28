<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Extension_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}
	
	public function get_installed($type) 
	{
		$extension_data = array();

		$query = $this->db->get_where('extension', array('type' => $type));
		
		foreach ($query->result_array() as $result) 
		{
			$extension_data[] = $result['code'];
		}
		
		return $extension_data;
	}
	
	public function install($type, $code) 
	{
		$extensions = $this->get_installed($type);

		if(!in_array($code, $extensions))
		{
			$extension_data = array(
				'type' => $type,
				'code' => $code
			);
			
			$this->db->insert('extension', $extension_data);
		}
	}
	
	public function uninstall($type, $code) 
	{
		$this->db->delete('extension', array('type' => $type, 'code' => $code));
	}
}
