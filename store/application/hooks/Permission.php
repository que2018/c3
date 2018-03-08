<?php

class Permission
{
    function run()	
	{
		$CI = & get_instance();
				
		$part = explode('/', uri_string());
		
		if (isset($part[0])) 
			$route = $part[0];
		
		$ignore = array(
			'',
			'common',
			'search',
			'refund'
		);
				
		$request_method = $CI->input->server('REQUEST_METHOD');
			
		if(($request_method == 'GET') && !in_array($route, $ignore) && !$CI->auth->has_permission('access', $route)) 
		{
			redirect(base_url() . 'error/permission?type=access', 'refresh'); 
		}
		
		if(($request_method == 'POST') && !in_array($route, $ignore) && !$CI->auth->has_permission('modify', $route)) 
		{
			redirect(base_url() . 'error/permission?type=modify', 'refresh'); 
		}
    }
}

?>