<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Filemanager extends MX_Controller 
{
	public function index() 
	{
		$this->lang->load('common/filemanager');

		$server = $this->config->item('media_url');

		if($this->input->get('filter_name')) 
		{
			$filter_name = rtrim(str_replace('*', '', $this->input->get('filter_name')), '/');
		} 
		else 
		{
			$filter_name = null;
		}

		// Make sure we have the correct directory
		if($this->input->get('directory')) 
		{
			$directory = rtrim(IMAGEPATH . 'catalog/' . str_replace('*', '', $this->input->get('directory')), '/');
		} 
		else 
		{
			$directory = IMAGEPATH . 'catalog';
		}

		if($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		} 
		else 
		{
			$page = 1;
		}

		$directories = array();
		
		$files = array();

		$data['images'] = array();

		$this->load->model('tool/image_model');

		//if (substr(str_replace('\\', '/', realpath($directory . '/' . $filter_name)), 0, strlen(IMAGEPATH . 'catalog')) == IMAGEPATH . 'catalog') {
			// Get directories
			$directories = glob($directory . '/' . $filter_name . '*', GLOB_ONLYDIR);

			if (!$directories) {
				$directories = array();
			}

			// Get files
			$files = glob($directory . '/' . $filter_name . '*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}', GLOB_BRACE);

			if (!$files) {
				$files = array();
			}
		//}

		// Merge directories and files
		$images = array_merge($directories, $files);

		// Get total number of files and directories
		$image_total = count($images);

		// Split the array based on current page number and max number of items per page of 10
		$images = array_splice($images, ($page - 1) * 16, 16);

		foreach($images as $image) 
		{
			$name = str_split(basename($image), 14);

			if(is_dir($image)) 
			{
				$url = '';

				if($this->input->get('target')) 
				{
					$url .= '&target=' . $this->input->get('target');
				}

				if($this->input->get('thumb')) 
				{
					$url .= '&thumb=' . $this->input->get('thumb');
				}

				$data['images'][] = array(
					'thumb' => '',
					'name'  => implode(' ', $name),
					'type'  => 'directory',
					'path'  => $this->utf8_substr($image, mb_strlen(IMAGEPATH)),
					'href'  => $this->url->link('common/filemanager', 'token=' . $this->session->data['token'] . '&directory=' . urlencode($this->utf8_substr($image, mb_strlen(IMAGEPATH . 'catalog/'))) . $url, true)
				);
			} 
			elseif(is_file($image)) 
			{
				$data['images'][] = array(
					'thumb' => $this->image_model->resize($this->utf8_substr($image, mb_strlen(IMAGEPATH)), 100, 100),
					'name'  => implode(' ', $name),
					'type'  => 'image',
					'path'  => $this->utf8_substr($image, mb_strlen(IMAGEPATH)),
					'href'  => $server . 'image/' . $this->utf8_substr($image, mb_strlen(IMAGEPATH))
				);
			}
		}

		$data['heading_title'] = $this->lang->line('heading_title');

		$data['text_no_results'] = $this->lang->line('text_no_results');
		$data['text_confirm'] = $this->lang->line('text_confirm');

		$data['entry_search'] = $this->lang->line('entry_search');
		$data['entry_folder'] = $this->lang->line('entry_folder');

		$data['button_parent'] = $this->lang->line('button_parent');
		$data['button_refresh'] = $this->lang->line('button_refresh');
		$data['button_upload'] = $this->lang->line('button_upload');
		$data['button_folder'] = $this->lang->line('button_folder');
		$data['button_delete'] = $this->lang->line('button_delete');
		$data['button_search'] = $this->lang->line('button_search');

		$data['token'] = $this->session->data['token'];

		if($this->input->get('directory')) 
		{
			$data['directory'] = urlencode($this->input->get('directory'));
		} 
		else 
		{
			$data['directory'] = '';
		}

		if($this->input->get('filter_name')) 
		{
			$data['filter_name'] = $this->input->get('filter_name');
		} 
		else 
		{
			$data['filter_name'] = '';
		}

		// Return the target ID for the file manager to set the value
		if($this->input->get('target')) 
		{
			$data['target'] = $this->input->get('target');
		}
		else 
		{
			$data['target'] = '';
		}

		// Return the thumbnail for the file manager to show a thumbnail
		if($this->input->get('thumb')) 
		{
			$data['thumb'] = $this->input->get('thumb');
		} 
		else 
		{
			$data['thumb'] = '';
		}

		// Parent
		$url = '';

		if ($this->input->get('directory')) 
		{
			$pos = strrpos($this->input->get('directory'), '/');

			if($pos) 
			{
				$url .= '&directory=' . urlencode(substr($this->input->get('directory'), 0, $pos));
			}
		}

		if($this->input->get('target')) 
		{
			$url .= '&target=' . $this->input->get('target');
		}

		if($this->input->get('thumb')) 
		{
			$url .= '&thumb=' . $this->input->get('thumb');
		}

		$data['parent'] = $this->url->link('common/filemanager', $url, true);

		// Refresh
		$url = '';

		if($this->input->get('directory')) 
		{
			$url .= '&directory=' . urlencode($this->input->get('directory'));
		}

		if($this->input->get('target')) 
		{
			$url .= '&target=' . $this->input->get('target');
		}

		if($this->input->get('thumb')) 
		{
			$url .= '&thumb=' . $this->input->get('thumb');
		}
		
		$data['refresh'] = $this->url->link('common/filemanager', $url, true);

		$url = '';

		if($this->input->get('directory')) 
		{
			$url .= '&directory=' . urlencode(html_entity_decode($this->input->get('directory'), ENT_QUOTES, 'UTF-8'));
		}

		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->input->get('filter_name'), ENT_QUOTES, 'UTF-8'));
		}

		if($this->input->get('target')) 
		{
			$url .= '&target=' . $this->input->get('target');
		}

		if($this->input->get('thumb')) 
		{
			$url .= '&thumb=' . $this->input->get('thumb');
		}

		//$pagination = new Pagination();
		$this->pagination->total = $image_total;
		$this->pagination->page = $page;
		$this->pagination->limit = 16;
		$this->pagination->url = $this->url->link('common/filemanager', $url . '&page={page}', true);

		$data['pagination'] = $this->pagination->render();

		$this->load->view('common/filemanager', $data);
	}

	public function upload() 
	{
		$this->lang->load('common/filemanager');

		$json = array();

		// Make sure we have the correct directory
		if($this->input->get('directory')) 
		{
			$directory = rtrim(IMAGEPATH . 'catalog/' . $this->input->get('directory'), '/');
		} 
		else 
		{
			$directory = IMAGEPATH . 'catalog';
		}

		// Check its a directory
		// comment out by Sam, may be dangerous
		/* if (!is_dir($directory) || substr(str_replace('\\', '/', realpath($directory)), 0, strlen(IMAGEPATH . 'catalog')) != IMAGEPATH . 'catalog') {
			$json['error'] = $this->lang->line('error_directory');
		} */

		if (!$json) 
		{
			// Check if multiple files are uploaded or just one
			$files = array();

			if (!empty($_FILES['file']['name']) && is_array($_FILES['file']['name'])) {
				foreach (array_keys($_FILES['file']['name']) as $key) {
					$files[] = array(
						'name'     => $_FILES['file']['name'][$key],
						'type'     => $_FILES['file']['type'][$key],
						'tmp_name' => $_FILES['file']['tmp_name'][$key],
						'error'    => $_FILES['file']['error'][$key],
						'size'     => $_FILES['file']['size'][$key]
					);
				}
			}

			foreach($files as $file) 
			{
				if(is_file($file['tmp_name'])) 
				{
					// Sanitize the filename
					$filename = basename(html_entity_decode($file['name'], ENT_QUOTES, 'UTF-8'));

					// Validate the filename length
					if((mb_strlen($filename) < 3) || (mb_strlen($filename) > 255)) 
					{
						file_put_contents("la.txt", "b0");
						
						$json['error'] = $this->lang->line('error_filename');
					}
					
					// Allowed file extension types
					$allowed = array(
						'jpg',
						'jpeg',
						'gif',
						'png'
					);
	
					if(!in_array(strtolower($this->utf8_substr(strrchr($filename, '.'), 1)), $allowed)) 						
					{
						$json['error'] = $this->lang->line('error_filetype');
					}
					
					// Allowed file mime types
					$allowed = array(
						'image/jpeg',
						'image/pjpeg',
						'image/png',
						'image/x-png',
						'image/gif'
					);
	
					if(!in_array($file['type'], $allowed)) 
					{
						$json['error'] = $this->lang->line('error_filetype');
					}

					// Return any upload error
					if($file['error'] != UPLOAD_ERR_OK) 
					{
						$json['error'] = $this->lang->line('error_upload_' . $file['error']);
					}
				} 
				else 
				{
					$json['error'] = $this->lang->line('error_upload');
				}

				if(!$json) 
				{
					move_uploaded_file($file['tmp_name'], $directory . '/' . $filename);
				}
			}
		}

		if(!$json) 
		{
			$json['success'] = $this->lang->line('text_uploaded');
		}

        $this->output->set_content_type('application/json');
        $this->output->set_output(json_encode($json));
	}

	public function folder() 
	{
		$this->lang->load('common/filemanager');

		$json = array();

		// Make sure we have the correct directory
		if($this->input->get('directory')) 
		{
			$directory = rtrim(IMAGEPATH . 'catalog/' . $this->input->get('directory'), '/');
		}
		else 
		{
			$directory = IMAGEPATH . 'catalog';
		}

		// Check its a directory
		// comment out by Sam, may be dangerous
		/* if (!is_dir($directory) || substr(str_replace('\\', '/', realpath($directory)), 0, strlen(IMAGEPATH . 'catalog')) != IMAGEPATH . 'catalog') {
			$json['error'] = $this->lang->line('error_directory');
		} */

		if($this->input->server('REQUEST_METHOD') == 'POST') 
		{
			// Sanitize the folder name
			$folder = basename(html_entity_decode($this->input->post('folder'), ENT_QUOTES, 'UTF-8'));
			
			// Validate the filename length
			if((mb_strlen($folder) < 3) || (mb_strlen($folder) > 128)) 
			{
				$json['error'] = $this->lang->line('error_folder');
			}

			// Check if directory already exists or not
			if(is_dir($directory . '/' . $folder)) 
			{
				$json['error'] = $this->lang->line('error_exists');
			}
		}

		if(!isset($json['error'])) 
		{
			mkdir($directory . '/' . $folder, 0777);
			chmod($directory . '/' . $folder, 0777);

			@touch($directory . '/' . $folder . '/' . 'index.html');

			$json['success'] = $this->lang->line('text_success');
		}

		$this->output->set_content_type('application/json');
        $this->output->set_output(json_encode($json));
	}

	public function delete() 
	{
		$this->lang->load('common/filemanager');

		$json = array();

		if ($this->input->post('path')) 
		{
			$paths = $this->input->post('path');
		} 
		else 
		{
			$paths = array();
		}

		// Loop through each path to run validations
		// comment out by Sam, may be dangerous
		/*foreach ($paths as $path) {
			// Check path exsists
			if ($path == IMAGEPATH . 'catalog' || substr(str_replace('\\', '/', realpath(IMAGEPATH . $path)), 0, strlen(IMAGEPATH . 'catalog')) != IMAGEPATH . 'catalog') {
				$json['error'] = $this->lang->line('error_delete');

				break;
			}
		} */

		if(!$json) 
		{
			// Loop through each path
			foreach ($paths as $path) 
			{
				$path = rtrim(IMAGEPATH . $path, '/');

				// If path is just a file delete it
				if (is_file($path)) {
					unlink($path);

				// If path is a directory beging deleting each file and sub folder
				} elseif (is_dir($path)) {
					$files = array();

					// Make path into an array
					$path = array($path . '*');

					// While the path array is still populated keep looping through
					while (count($path) != 0) {
						$next = array_shift($path);

						foreach (glob($next) as $file) {
							// If directory add to path array
							if (is_dir($file)) {
								$path[] = $file . '/*';
							}

							// Add the file to the files to be deleted array
							$files[] = $file;
						}
					}

					// Reverse sort the file array
					rsort($files);

					foreach ($files as $file) {
						// If file just delete
						if (is_file($file)) {
							unlink($file);

						// If directory use the remove directory function
						} elseif (is_dir($file)) {
							rmdir($file);
						}
					}
				}
			}

			$json['success'] = $this->lang->line('text_delete');
		}

		$this->output->set_content_type('application/json');
        $this->output->set_output(json_encode($json));
	}
	
	private function utf8_substr($string, $offset, $length = null) 
	{
		if($length === null) 
		{
			return mb_substr($string, $offset, mb_strlen($string));
		} 
		else 
		{
			return mb_substr($string, $offset, $length);
		}
	}
}
