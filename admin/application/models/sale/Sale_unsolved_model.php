<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_unsolved_model extends CI_Model
{	
	public function get_unsolved_sales($data)
	{
		$this->db->select('sale.*', false);
		$this->db->from('sale');
		$this->db->join('sale_to_checkout', 'sale_to_checkout.sale_id = sale.id', 'left');
		$this->db->join('checkout', 'checkout.id = sale_to_checkout.checkout_id', 'left');		
		$this->db->where("checkout.status != 2 OR sale.id NOT IN (SELECT sale_id FROM sale_to_checkout)");
		$this->db->group_by('sale.id');
		
		$sort_data = array(
			'sale.id',
			'sale.store_sale_id',
			'sale.tracking',
			'sale.date_added'
		);
		
		if(isset($data['start']) || isset($data['limit'])) 
		{
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
	
	public function get_unsolved_sale_total($data)
	{
		$this->db->select("COUNT(sale.id) AS total", false);
		$this->db->from('sale');
		$this->db->join('sale_to_checkout', 'sale_to_checkout.sale_id = sale.id', 'left');
		$this->db->join('checkout', 'checkout.id = sale_to_checkout.checkout_id', 'left');
		$this->db->where("checkout.status != 2 OR sale.id NOT IN (SELECT sale_id FROM sale_to_checkout)");

		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
