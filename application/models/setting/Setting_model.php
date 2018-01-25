<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Setting_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}

	public function get_setting($code) 
	{
		$setting_data = array();
		
		$this->db->select('*');
		$this->db->from('setting');
		$this->db->where('code', $code);
		$q = $this->db->get();

		if($q->num_rows() > 0) 
		{
			foreach ($q->result() as $row) 
			{
				if (!$row->serialized) 
				{
					$setting_data[$row->key] = $row->value;
				} 
				else 
				{
					$setting_data[$row->key] = unserialize($row->value);
				}
			}
		}
		
		return $setting_data;
	}

	public function edit_setting($code, $data) 
	{
		$this->db->delete('setting', array('code' => $code));
		
		foreach($data as $key => $value) 
		{
			if(substr($key, 0, strlen($code)) == $code) 
			{
				if(!is_array($value))
				{
					$setting_data = array(
						'code'  => $code,
						'key'   => $key, 
						'value' => $value 						
					);
					
					$this->db->insert('setting', $setting_data);
				} 
				else 
				{
					$setting_data = array(
						'code'       => $code,
						'key'        => $key, 
						'value'      => serialize($value),
						'serialized' => 1
					);
					
					$this->db->insert('setting', $setting_data);
				}
			}
		}
	}

	public function delete_setting($code) 
	{
		$this->db->delete('setting', array('code' => $code));
	}	
}
