<?php

require_once 'FPDF/fpdf.php';

class Pdf
{	
	public function __construct()
    {
		$this->ci =& get_instance();
    }
	
	public function convert_image($image_path, $dest_path, $attrs) 
	{
		$pdf = new FPDF();
		
		$pdf->AddPage();
		$pdf->Image($image_path, $attrs['position_x'], $attrs['position_y'], $attrs['width']);
		
		$result = $pdf->Output('F', $dest_path);
		
		if(empty($result))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}

?>