<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_unsolved_model extends CI_Model
{	
	public function get_unsolved_sales($data)
	{
		$this->db->select('sale.*', false);
		$this->db->from('sale');
		$this->db->join('sale_to_checkout', 'sale_to_checkout.sale_id = sale.id', 'left');
		$this->db->join('checkout', 'checkout.id = sale_to_checkout.checkout_id', 'left');		
		$this->db->group_by('sale.id');
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->like('sale.id', $data['filter_sale_id'], 'both');
		}
		
		if(!empty($data['filter_store_id'])) 
		{			
			$this->db->where('sale.store_id', $data['filter_store_id']);
		}
		
		if(!empty($data['filter_store_sale_id'])) 
		{			
			$this->db->like('sale.store_sale_id', $data['filter_store_sale_id'], 'both');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('sale.tracking', $data['filter_tracking'], 'both');
		}
		
		if(isset($data['filter_tracking_filled']) && $data['filter_tracking_filled']) 
		{			
			$this->db->where('sale.tracking !=', '');
		}
				
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('sale.name', $data['filter_name'], 'after');
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('sale.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}

		$this->db->where("checkout.status != 2 OR sale.id NOT IN (SELECT sale_id FROM sale_to_checkout)");
		
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
		
		if(!empty($data['filter_sale_id'])) 
		{			
			$this->db->like('sale.id', $data['filter_sale_id'], 'both');
		}
		
		if(!empty($data['filter_store_id'])) 
		{			
			$this->db->where('sale.store_id', $data['filter_store_id']);
		}
		
		if(!empty($data['filter_store_sale_id'])) 
		{			
			$this->db->like('sale.store_sale_id', $data['filter_store_sale_id'], 'both');
		}
		
		if(!empty($data['filter_tracking'])) 
		{			
			$this->db->like('sale.tracking', $data['filter_tracking'], 'both');
		}
		
		if(isset($data['filter_tracking_filled']) && $data['filter_tracking_filled']) 
		{			
			$this->db->where('sale.tracking !=', '');
		}
			
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('sale.name', $data['filter_name'], 'after');
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('sale.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$this->db->where("checkout.status != 2 OR sale.id NOT IN (SELECT sale_id FROM sale_to_checkout)");

		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
