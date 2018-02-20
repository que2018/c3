<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Information_model extends CI_Model
{		
	public function get_information($information_id) 
	{
		$this->db->select('information.*, information_content.title, information_content.content', false);
		$this->db->from('information');
		$this->db->join('information_content', 'information_content.information_id = information.information_id', 'left');
		$this->db->where('information.information_id', $information_id);
		$this->db->where('information_content.language_id', $this->config->item('config_language_id'));
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
		
	public function get_informations($data = array()) 
	{	
		$this->db->select('information.*, information_content.title, information_content.content', false);
		$this->db->from('information');
		$this->db->join('information_content', 'information_content.information_id = information.information_id', 'left');
		$this->db->where('information_content.language_id', $this->config->item('config_language_id'));
		$this->db->group_by('information.information_id');
			
		$sort_data = array(
			'information.status',
			'information_content.title'
		);
			
		if(isset($data['sort']) && in_array($data['sort'], $sort_data)) 
		{			
			if(isset($data['order']))	
			{
				$this->db->order_by($data['sort'], $data['order']);
			}
			else
			{
				$this->db->order_by($data['sort'], 'DESC');
			}
		}
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		else 
		{
			return false;
		}
	}
}
