<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Image_model extends CI_Model 
{
	public function resize($filename, $width, $height) 
	{		
		if(!is_file(IMAGEPATH . $filename)) 
		{			
			return;
		}

		$extension = pathinfo($filename, PATHINFO_EXTENSION);

		$old_image = $filename;
		//$new_image = 'cache/' . utf8_substr($filename, 0, utf8_strrpos($filename, '.')) . '-' . $width . 'x' . $height . '.' . $extension;
		$new_image = 'cache/' . substr($filename, 0, strpos($filename, '.') - 1) . '-' . $width . 'x' . $height . '.' . $extension;

		if(!is_file(IMAGEPATH . $new_image) || (filectime(IMAGEPATH . $old_image) > filectime(IMAGEPATH . $new_image))) 
		{
			$path = '';

			$directories = explode('/', dirname(str_replace('../', '', $new_image)));

			foreach($directories as $directory) 
			{
				$path = $path . '/' . $directory;

				if(!is_dir(IMAGEPATH . $path)) 
				{
					@mkdir(IMAGEPATH . $path, 0777);
				}
			}

			list($width_orig, $height_orig) = getimagesize(IMAGEPATH . $old_image);

			if($width_orig != $width || $height_orig != $height) 
			{
				$image = new Image(IMAGEPATH . $old_image);
				$image->resize($width, $height);
				$image->save(IMAGEPATH . $new_image);
			} 
			else 
			{
				copy(IMAGEPATH . $old_image, IMAGEPATH . $new_image);
			}
		}

		return $this->config->item('media_url') . 'image/' . $new_image;
	}
}
