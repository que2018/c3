<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class File
{
	public function get_dirname($file_path) 
	{
		$path_parts = pathinfo($file_path);
		
		return  $path_parts['dirname'];
	}
	
	public function get_basename($file_path) 
	{
		$path_parts = pathinfo($file_path);
		
		return  $path_parts['basename'];
	}
	
	public function get_extension($file_path) 
	{
		$path_parts = pathinfo($file_path);
		
		return  $path_parts['extension'];
	}
	
	public function get_filename($file_path) 
	{
		$path_parts = pathinfo($file_path);
		
		return  $path_parts['filename'];
	}
}