<?php

class Config 
{
    function run()		
	{
		$CI =& get_instance();
		
		$q = $CI->db->query('SELECT * FROM setting');	
		
		if($q->num_rows() > 0)
		{
			foreach($q->result_array() as $result) 
			{	
				if(!$result['serialized']) 
				{
					$CI->config->set_item($result['key'], $result['value']);
				}
				else 
				{
					$values = unserialize($result['value']);
					$CI->config->set_item($result['key'], $values);
				}
			}
		}
    }
}

?>