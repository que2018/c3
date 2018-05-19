<?php

class Url 
{
	public function link($route, $args = '', $secure = false) 
	{
		$url = base_url() . $route;
		
		if ($args) 
		{
			$url .= str_replace('&', '&amp;', '&' . ltrim($args, '&'));
		}
		
		return $url; 
	} 
}