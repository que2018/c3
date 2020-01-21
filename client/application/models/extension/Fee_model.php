<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fee_model extends CI_Model
{	
	public function get_fees($type = '') 
	{
		$fees = array();
		
		$query = $this->db->get_where('extension', array('type' => 'fee'));
	
		if($type)
		{
			foreach($query->result_array() as $result) 
			{
				$code = $result['code'];
			
				if(($this->config->item($code . '_type') == $type) && ($this->config->item($code . '_status')))
				{
					$this->lang->load('fee/' . $code);			
					
					$fees[] = array(
						'code'     => $code,
						'name'     => $this->lang->line('text_title')
					);
				}					
			}
		}
		else
		{
			foreach($query->result_array() as $result) 
			{
				$code = $result['code'];
				
				if($this->config->item($code . '_status'))
				{
					$this->lang->load('fee/' . $code);			
					
					$fees[] = array(
						'code'     => $code,
						'name'     => $this->lang->line('text_title')
					);
				}
			}
		}					
	
		return $fees;
	}
}
























