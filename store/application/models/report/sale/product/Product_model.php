<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Product_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
			
	public function get_product_sales($product_id, $data) 
	{			
		$this->db->select('product.*, sale.date_added, sale_product.quantity, product.price * sale_product.quantity AS total', false);
		$this->db->from('sale_product');
		$this->db->join('sale', 'sale.id = sale_product.sale_id', 'left');
		$this->db->join('product', 'product.id = sale_product.product_id', 'left');
		$this->db->where('sale_product.product_id', $product_id);
					
		$sort_data = array(
			'total',
			'sale.date_added',
			'sale_product.quantity'
		);
		
		if(isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
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
	
	function get_product_sale_total($product_id)
	{
		$this->db->select('COUNT(product_id) AS total', false);
		$this->db->from('sale_product');
		$this->db->where('product_id', $product_id);
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	function get_product_sale_total_by_date($product_id, $data)
	{
		$this->db->select('COUNT(sale_product.product_id) AS total, DATE(sale.date_added) AS date_added', false);
		$this->db->from('sale_product');
		$this->db->join('sale', 'sale.id = sale_product.sale_id', 'left');
		$this->db->where('sale_product.product_id', $product_id);
		$this->db->group_by('DATE(date_added)');
		
		if(!empty($data['filter_date_added_from']) && !empty($data['filter_date_added_to'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added_from']);
			$this->db->where('sale.date_added <=', $data['filter_date_added_to']);
		}
		
		$sort_data = array(
			'store_sale_id',
			'tracking',
			'name',
			'date_added'
		);
		
		if(isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}
				
			$this->db->limit($data['limit'], $data['start']);
		}
		
		if(isset($data['sort']) && in_array($data['sort'], $sort_data)) 
		{
			if(isset($data['sale']))	
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
	
	function get_product_sale_income_by_date($product_id, $data)
	{
		$this->db->select('SUM(product.price * sale_product.quantity) AS sum, DATE(sale.date_added) AS date_added', false);
		$this->db->from('sale_product');
		$this->db->join('sale', 'sale.id = sale_product.sale_id', 'left');
		$this->db->join('product', 'product.id = sale_product.product_id', 'left');
		$this->db->where('sale_product.product_id', $product_id);
		$this->db->group_by('DATE(date_added)');
		
		if(!empty($data['filter_date_added_from']) && !empty($data['filter_date_added_to'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added_from']);
			$this->db->where('sale.date_added <=', $data['filter_date_added_to']);
		}
		
		$sort_data = array(
			'store_sale_id',
			'tracking',
			'name',
			'date_added'
		);
		
		if(isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}
				
			$this->db->limit($data['limit'], $data['start']);
		}
		
		if(isset($data['sort']) && in_array($data['sort'], $sort_data)) 
		{
			if(isset($data['sale']))	
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
