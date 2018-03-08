<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Order_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}
	
	function get_sales($search_client, $search_date_from, $search_date_to, $sort_data, $order, $filter_data, $start, $limit)
	{
		$query = 'SELECT sale.* FROM sale ';
		
		if(!empty($search_client)) 
		{
			$query .= 'WHERE store_id IN (SELECT store.id FROM store LEFT JOIN client ON store.client_id = client.id WHERE client.id = '.$search_client.')';
		}
		
		if(!empty($search_date_from)) 
		{
			$query .= ' AND sale.date_added >= "'. $search_date_from .'"';
		}
		
		if(!empty($search_date_to)) 
		{			
			$query .= ' AND sale.date_added <= "'. $search_date_to .'"';
		}		
		
		if(!empty($filter_data)) 
		{
			
			foreach($filter_data as $key => $value)
			{
				
				if(!empty($value))
				{
					$query .= ' AND '. $key .' like "%'. $value .'%"';
				}
			}
		}
		
		if(isset($sort_data)) 
		{
			if(isset($order))	
			{
				$query .= ' ORDER BY ' . $sort_data . ' '. $order;
			}
			else
			{
				$query .= 'ORDER BY ' . $sort_data . ' DESC';
			}
		}
		
		if(isset($limit))
		{
			$query .= ' LIMIT ' . $limit . ' OFFSET '.$start;
		}
		
		//file_put_contents('neil.txt', $query);
		$q = $this->db->query($query);
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		else 
		{
			return false;
		}
	}
	
	function get_sale_total($search_client, $search_date_from, $search_date_to, $filter_data)
	{
		$query = 'SELECT COUNT(sale.id) AS total FROM sale ';
		
		if(!empty($search_client)) 
		{
			$query .= 'WHERE store_id IN (SELECT store.id FROM store LEFT JOIN client ON store.client_id = client.id WHERE client.id = '.$search_client.')';
		}
		
		if(!empty($search_date_from)) 
		{
			$query .= ' AND sale.date_added >= "'. $search_date_from .'"';
		}
		
		if(!empty($search_date_to)) 
		{			
			$query .= ' AND sale.date_added <= "'. $search_date_to .'"';
		}
		
		if(!empty($filter_data)) 
		{
			
			foreach($filter_data as $key => $value)
			{
				
				if(!empty($value))
				{
					$query .= ' AND '. $key .' like "%'. $value .'%"';
				}
			}
		}
		
		$q = $this->db->query($query);
		
		$result = $q->row_array();
		
		return $result['total'];
	}
			
	public function get_id_from_name($name) 
	{			
		$this->db->select("CONCAT(firstname, ' ', lastname) AS client_name, id", false);
		$this->db->from('client');
		$this->db->like("CONCAT(firstname, ' ', lastname)", $name, 'both');

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
