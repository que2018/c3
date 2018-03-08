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
				redirect(base_url() . 'common/login'); 
			}
		}
    }
}

?>