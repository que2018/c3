<?php

class Login 
{
    function run()	
	{
		$CI = & get_instance();
		
		if(!$CI->auth->is_logged())
		{
			if(uri_string() != 'common/login')
			{
				if($_SERVER['QUERY_STRING'])
				{
					$redirect_url = uri_string() . '?' . $_SERVER['QUERY_STRING'];
				}
				else
				{
					$redirect_url = uri_string();
				}
								
				$CI->session->set_userdata('redirect_url', $redirect_url);
				
				redirect(base_url() . 'common/login', 'refresh'); 
			}
		}
    }
}

?>