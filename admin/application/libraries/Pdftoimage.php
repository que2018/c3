<?php

require(dirname(__FILE__) . '/pdf_to_image/vendor/autoload.php');

class Pdftoimage
{	
	public function __construct()
    {
		$this->ci =& get_instance();
    }
	
	public function convert($pdf_path, $image_path) 
	{
		$pdf = new Spatie\PdfToImage\Pdf($pdf_path);
		$pdf->saveImage($image_path);
	}
}

?>