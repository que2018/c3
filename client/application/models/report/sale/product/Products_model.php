<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Products_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
			
	public function get_products($data) 
	{			
		$this->db->select('product.*, SUM(sale_product.quantity) AS total_quantity, SUM(product.price * sale_product.quantity) AS total_income', false);
		$this->db->from('sale_product');
		$this->db->join('product', 'product.id = sale_product.product_id', 'left');
		$this->db->group_by('sale_product.product_id');
			
		if(!empty($data['filter_upc'])) 
		{			
			$this->db->where('product.upc', $data['filter_upc']);
		}
		
		if(!empty($data['filter_asin'])) 
		{			
			$this->db->where('product.asin', $data['filter_asin']);
		}
		
		if(!empty($data['filter_sku'])) 
		{			
			$this->db->where('product.sku', $data['filter_sku']);
		}
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('product.name', $data['filter_name'], 'both');
		}
		
		$sort_data = array(
			'product.upc',
			'product.sku',
			'product.asin',
			'product.name',
			'total_quantity',
			'total_income'
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
	
	function get_product_total($data)
	{
		$this->db->select('COUNT(sale_product.product_id) AS total', false);
		$this->db->from('sale_product');
		$this->db->join('product', 'product.id = sale_product.product_id', 'left');
		
		if(!empty($data['filter_upc'])) 
		{			
			$this->db->where('upc', $data['filter_upc']);
		}
		
		if(!empty($data['filter_sku'])) 
		{			
			$this->db->where('sku', $data['filter_sku']);
		}
		
		if(!empty($data['filter_asin'])) 
		{			
			$this->db->where('asin', $data['filter_asin']);
		}
	
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
