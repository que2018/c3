<?php

class Url 
{
	public function link($route, $args = '', $secure = false) 
	{
		$url = base_url() . $route;
			
		$args = explode('&', $args);
		
		$args = array_slice($args, 1, sizeof($args) - 1);
		
		$params = '';
		
		if(sizeof($args) > 1)
		{	
			foreach($args as $i => $arg)
			{
				if($i == 0)
					$params .= ('?' . $arg);
				else 
					$params .= ('&' . $arg);
			}
		} 
		else 
		{
			$params .= ('?' . $arg[0]);
		}
	
		$url .= $params;
		
		return $url; 
	} 
}