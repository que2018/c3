<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Barcoder
{
	public function __construct()
	{
		include(dirname(__FILE__) . '/barcode/php-barcode.php');
	}

	public function generate($code, $params = null) 
	{		
		$fontSize = 10;   		// GD1 in px ; GD2 in point
		$marge    = 10;   		// between barcode and hri in pixel
		$x        = 100;  		// barcode center
		$y        = 50;   		// barcode center
		$height   = 50;   		// barcode height in 1D ; module size in 2D
		$width    = 2;    		// barcode height in 1D ; not use in 2D
		$angle    = 0;          // rotation in degrees : nb : non horizontable barcode might not be usable because of pixelisation

		$type     = 'upc';

		$im     = imagecreatetruecolor(250, 100);
		$black  = ImageColorAllocate($im, 0x00, 0x00, 0x00);
		$white  = ImageColorAllocate($im, 0xff, 0xff, 0xff);
		
		imagefilledrectangle($im, 0, 0, 300, 120, $white);

		$data = Barcode::gd($im, $black, $x, $y, $angle, $type, array('code'=> $code), $width, $height);
		
		$CI = & get_instance();
		
		if(isset($params['path']) && !empty($params['path']))
		{
			$path = $params['path'];
		}
		else
		{
			$path = $CI->config->item('config_barcode_path');
		}
		
		imagegif($im, FCPATH . $path);
		
		imagedestroy($im);
		
		return base_url() . $path; 
	}
}
