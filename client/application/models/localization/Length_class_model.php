<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Length_class_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
	
	function get_all_length_classes() 
	{
		$this->db->select('*');
		$this->db->from('length_class');
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		}
		
		return false;
	}
	
	function to_inch($id, $length)
	{
		$q1 = $this->db->get_where('length_class', array('id' => $id), 1); 
		
		$r1 = $q1->row_array();
		
		$q2 = $this->db->get_where('length_class', array('id' => 1), 1); 
		
		$r2 = $q2->row_array();
		
		return $length * $r2['value'] / $r1['value'];
	}
}
