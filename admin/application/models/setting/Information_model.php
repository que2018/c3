<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Information_model extends CI_Model
{		
	public function add_information($data)
	{
		$this->db->trans_begin();
		
		$information_data = array(		
			'front'    => $data['front'],
			'redirect' => $data['redirect'],	
			'status'   => $data['status']
		);
		
		$this->db->insert('information', $information_data);
		
		$information_id = $this->db->insert_id();
		
		foreach($data['content'] as $language_id => $content)
		{
			$information_content_data = array(		
				'information_id' => $information_id,
				'language_id'    => $language_id,
				'title'          => $content['title'],
				'content'        => $content['content']
			);
			
			$this->db->insert('information_content', $information_content_data);
		}
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $information_id;
		}
	}
	
	public function edit_information($information_id, $data)
	{
		$this->db->trans_begin();
		
		$information_data = array(	
			'front'    => $data['front'],
			'redirect' => $data['redirect'],				
			'status'   => $data['status']
		);
		
		$this->db->where('information_id', $information_id);
		
		$this->db->update('information', $information_data);
		
		$this->db->delete('information_content', array('information_id' => $information_id));
		
		foreach($data['content'] as $language_id => $content)
		{
			$information_content_data = array(		
				'information_id' => $information_id,
				'language_id'    => $language_id,
				'title'          => $content['title'],
				'content'        => $content['content']
			);
			
			$this->db->insert('information_content', $information_content_data);
		}

		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return true;
		}
	}
	
	public function get_information($information_id) 
	{
		$q = $this->db->get_where('information', array('information_id' => $information_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_information_contents($information_id) 
	{
		$q = $this->db->get_where('information_content', array('information_id' => $information_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_information($information_id) 
	{
		$this->db->trans_begin();
		
		$this->db->delete('information', array('information_id' => $information_id));
		
		$this->db->delete('information_content', array('information_id' => $information_id));
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return true;
		}
	}		
		
	public function get_informations($data = array()) 
	{	
		$this->db->select('information.*, information_content.title, information_content.content', false);
		$this->db->from('information');
		$this->db->join('information_content', 'information_content.information_id = information.information_id', 'left');
		$this->db->where('information_content.language_id', $this->config->item('config_language_id'));
		//$this->db->group_by('information.information_id');
		
		if(!empty($data['filier_title'])) 
		{			
			$this->db->like('information_content.title', $data['filier_title'], 'left');
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('information.status', $data['filter_status']);
		}
		
		$sort_data = array(
			'information.status',
			'information_content.title'
		);
		
		if(isset($data['start']) || isset($data['limit'])) 
		{
			if($data['start'] < 0) 
			{
				$data['start'] = 0;
			}

			if($data['limit'] < 1) 
			{
				$data['limit'] = $this->config->item('config_page_limit');
			}
				
			$this->db->limit($data['limit'], $data['start']);
		}
		
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
	
	function get_information_total($data = array())
	{		
		$this->db->select('COUNT(information.information_id) AS total', false);
		$this->db->from('information');
		$this->db->join('information_content', 'information_content.information_id = information.information_id', 'left');
		//$this->db->group_by('information.information_id');

		if(!empty($data['filier_title'])) 
		{			
			$this->db->like('information_content.title', $data['filier_title'], 'left');
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('information.status', $data['filter_status']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
