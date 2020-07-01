<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkout_group_model extends CI_Model
{	
	public function add_checkout_group($data)
	{
		if($data['sale_ids'])
		{
			$sale_ids = $data['sale_ids'];
			
			foreach($sale_ids as $sale_id)
			{
				$this->add_checkout($sale_id);
			}
		}
	}
	
	private function add_checkout($sale_id)
	{
		$this->lang->load('check/checkout');
		
		$this->db->trans_begin();
		
		$sale = $this->get_sale($sale_id);
		
		//checkout data
		$checkout_data = array(
			'length'	        => $sale['length'],
			'width'	            => $sale['width'],
			'height'	        => $sale['height'],
			'weight'	        => $sale['weight'],
			'length_class_id'	=> $sale['length_class_id'],
			'weight_class_id'	=> $sale['weight_class_id'],
			'shipping_provider'	=> $sale['shipping_provider'],
			'shipping_service'	=> $sale['shipping_service'],
			'note' 		        => $data['note'],
			'date_added'   		=> date('Y-m-d H:i:s'),
			'date_modified'   	=> date('Y-m-d H:i:s')			
		);

		$this->db->insert('checkout', $checkout_data);
					
		$checkout_id = $this->db->insert_id();
		
		//generate code
		$code = '10000000000000' . $checkout_id;
		
		$this->db->where('id', $checkout_id);
		$this->db->update('checkout', array('code' => $code)); 
		
		//checkout sale
		$sale_checkout_data = array(
			'sale_id' 		=> $sale_id,
			'checkout_id'   => $checkout_id	
		);

		$this->db->insert('sale_to_checkout', $sale_checkout_data);
		
		//checkout product
		$sale_products = $this->get_sale_products($sale_id);

		$checkout_products = array();
				
		if($sale_products)
		{	
			foreach($sale_products as $sale_product)
			{					
				$checkout_products[] = array(
					'checkout_id'	=> $checkout_id,
					'inventory_id'  => $checkout_product['inventory_id'],
					'quantity' 		=> $checkout_product['quantity']
				);
			}
		}
		
		$this->db->insert_batch('checkout_product', $checkout_products);							
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $checkout_id;
		}
	}
	
	public function get_sale($sale_id) 
	{
		$q = $this->db->get_where('sale', array('id' => $sale_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_checkout_groups($data) 
	{	
		$this->db->select('checkout_group.*', false);
		$this->db->from('checkout_group');
		
		if(!empty($data['filter_checkout_group_id'])) 
		{			
			$this->db->where('checkout_group.checkout_group_id', $data['filter_checkout_group_id']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('checkout_group.status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('checkout_group.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('checkout_group.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$sort_data = array(
			'checkout_group_id',
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

	public function get_checkout_group_total($data)
	{		
		$this->db->select('COUNT(checkout_group_id) AS total', false);
		$this->db->from('checkout_group');
		
		if(!empty($data['filter_checkout_group_id'])) 
		{			
			$this->db->where('checkout_group.checkout_group_id', $data['filter_checkout_group_id']);
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('checkout_group.status', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{
			$this->db->where('checkout_group.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('checkout_group.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
}
