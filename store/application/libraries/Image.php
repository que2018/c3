<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Image
{
	public function __construct()
    {
		$this->ci =& get_instance();
    }
	
	public function rotate($file, $degrees) 
	{
		$imagick = new Imagick(); 
		$imagick->readImage($file);
		
		$imagick->rotateImage(new ImagickPixel(), $degrees);
		
		$imagick->writeImage($file);

		$imagick->clear(); 
		$imagick->destroy();
	}
}