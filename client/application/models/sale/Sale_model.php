<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sale_model extends CI_Model
{	
	public function add_sale($data)
	{
		$this->db->trans_begin();
		
		//sale data
		if(isset($data['date_added']))
		{
			$date_added = $data['date_added'];
		}
		else 
		{
			$date_added = date('Y-m-d H:i:s');
		}
		
		$sale_data = array(		
			'name'	             => $data['name'],
			'street'	         => $data['street'],
			'street2'	         => $data['street2'],
			'city'	     	     => $data['city'],
			'state'   		     => $data['state'],
			'country'	         => $data['country'],
			'zipcode'	         => $data['zipcode'],
			'email'	             => $data['email'],
			'phone'	             => $data['phone'],
			'length'	         => $data['length'],
			'width'	             => $data['width'],
			'height'	         => $data['height'],
			'weight'	         => $data['weight'],
			'length_class_id'	 => $data['length_class_id'],
			'weight_class_id'	 => $data['weight_class_id'],
			'shipping_provider'	 => $data['shipping_provider'],
			'shipping_service'	 => $data['shipping_service'],
			'tracking'	         => $data['tracking'],
			'status_id'	         => 1,
			'note'	             => $data['note'],
			'date_added'         => $date_added
		);
		
		$this->db->insert('sale', $sale_data);
			
		$sale_id = $this->db->insert_id();
		
		//sale store data
		if($data['store_id']) 
		{
			$this->db->where('id', $sale_id);
			$this->db->update('sale', array('store_id' => $data['store_id'])); 
		}
			
		if($data['store_sale_id']) 
		{
			$this->db->where('id', $sale_id);
			$this->db->update('sale', array('store_sale_id' => $data['store_sale_id'])); 
		}	
			
		//customer data
		$this->load->model('store/store_model');
		$this->load->model('sale/customer_model');
		
		if($data['store_id'])
		{
			$store = $this->store_model->get_store($data['store_id']);
			
			$client_id = $store['client_id'];
		}
		else
		{
			$client_id = null;
		}
		
		$customer_data = array(		
			'client_id'	         => $client_id,
			'name'	             => $data['name'],
			'street'	         => $data['street'],
			'street2'	         => $data['street2'],
			'city'	     	     => $data['city'],
			'state'   		     => $data['state'],
			'country'	         => $data['country'],
			'zipcode'	         => $data['zipcode'],
			'company'	         => '',
			'email'	             => $data['email'],
			'phone'	             => $data['phone']
		);
		
		if(!$this->customer_model->has_customer($customer_data))
		{
			$this->customer_model->add_customer($customer_data);
		}
		
		//sale products	
		$this->db->delete('sale_product', array('sale_id' => $sale_id));
		
		$sale_products_data = array();
					
		foreach($data['sale_products'] as $sale_product)
		{
			$sale_products_data[] = array(
				'sale_id'     => $sale_id,
				'product_id'  => $sale_product['product_id'],
				'quantity'    => $sale_product['quantity']
			);
		}
						
		$this->db->insert_batch('sale_product', $sale_products_data); 
		
		if($this->db->trans_status() === false) 
		{
			$this->db->trans_rollback();
			
			return false;
		}
		else
		{
			$this->db->trans_commit();
			
			return $sale_id;
		}
	}
	
	public function edit_sale($sale_id, $data)
	{
		$this->db->trans_begin();
				
		//sale data
		$sale_data = array(		
			'name'	             => $data['name'],
			'street'	         => $data['street'],
			'street2'	         => $data['street2'],
			'city'	     	     => $data['city'],
			'state'   		     => $data['state'],
			'country'	         => $data['country'],
			'zipcode'	         => $data['zipcode'],
			'email'	             => $data['email'],
			'phone'	             => $data['phone'],
			'length'	         => $data['length'],
			'width'	             => $data['width'],
			'height'	         => $data['height'],
			'weight'	         => $data['weight'],
			'length_class_id'	 => $data['length_class_id'],
			'weight_class_id'	 => $data['weight_class_id'],
			'shipping_provider'	 => $data['shipping_provider'],
			'shipping_service'	 => $data['shipping_service'],
			'tracking'	         => $data['tracking'],
			'note'	             => $data['note'],
			'date_modified'      => date('Y-m-d H:i:s')
		);
				
		$this->db->where('id', $sale_id);
		$this->db->update('sale', $sale_data); 
		
		//sale store data
		if(isset($data['store_id'])) 
		{
			$this->db->where('id', $sale_id);
			$this->db->update('sale', array('store_id' => $data['store_id'])); 
		}
		
		if(isset($data['store_sale_id'])) 
		{
			$this->db->where('id', $sale_id);
			$this->db->update('sale', array('store_sale_id' => $data['store_sale_id'])); 
		}
		
		//customer data
		$this->load->model('store/store_model');
		$this->load->model('sale/customer_model');
		
		if($data['store_id'])
		{
			$store = $this->store_model->get_store($data['store_id']);
			
			$client_id = $store['client_id'];
		}
		else
		{
			$client_id = null;
		}
		
		$customer_data = array(		
			'client_id'	         => $client_id,
			'name'	             => $data['name'],
			'street'	         => $data['street'],
			'street2'	         => $data['street2'],
			'city'	     	     => $data['city'],
			'state'   		     => $data['state'],
			'country'	         => $data['country'],
			'zipcode'	         => $data['zipcode'],
			'company'	         => '',
			'email'	             => $data['email'],
			'phone'	             => $data['phone']
		);
		
		if(!$this->customer_model->has_customer($customer_data))
		{
			$this->customer_model->add_customer($customer_data);
		}
		
		//sale products
		$this->db->delete('sale_product', array('sale_id' => $sale_id)); 
				
		$sale_products_data = array();
					
		foreach($data['sale_products'] as $sale_product)
		{
			$sale_products_data[] = array(
				'sale_id'     => $sale_id,
				'product_id'  => $sale_product['product_id'],
				'quantity'    => $sale_product['quantity']
			);
		}
				
		$this->db->insert_batch('sale_product', $sale_products_data); 
		
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
	
	public function get_sale($sale_id) 
	{
		$q = $this->db->get_where('sale', array('id' => $sale_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_sale_by_tracking($tracking) 
	{
		$q = $this->db->get_where('sale', array('tracking' => $tracking), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_sale_by_store_sale_id($store_sale_id) 
	{
		$q = $this->db->get_where('sale', array('store_sale_id' => $store_sale_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_sale_product($sale_id, $product_id) 
	{
		$this->db->select('sale_product.quantity, product.*', false);
		$this->db->from('sale_product');
		$this->db->join('product', 'product.id = sale_product.product_id', 'left');
		$this->db->where('sale_product.sale_id', $sale_id);		
		$this->db->where('sale_product.product_id', $product_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}	
	
	public function get_sale_products($sale_id) 
	{
		$this->db->select('sale_product.id, sale_product.quantity, product.*, product.id AS product_id', false);
		$this->db->from('sale_product');
		$this->db->join('product', 'product.id = sale_product.product_id', 'left');
		$this->db->where('sale_product.sale_id', $sale_id);
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}		
	
	public function get_sale_volume($sale_id) 
	{
		$this->load->model('setting/length_class_model');
		
		$sale_products = $this->get_sale_products($sale_id);
		
		$length_max    = 0;
		$width_max     = 0;
		$height_max    = 0;
		
		$length_total  = 0;
		$width_total   = 0;
		$height_total  = 0;
		
		if($sale_products)
		{	
			foreach($sale_products as $sale_product)
			{			
				$length = $this->length_class_model->to_config($sale_product['length_class_id'], $sale_product['length']);
				$width  = $this->length_class_model->to_config($sale_product['length_class_id'], $sale_product['width']);
				$height = $this->length_class_model->to_config($sale_product['length_class_id'], $sale_product['height']);
			
				if($length > $length_max) 
					$length_max = $length;
		
				if($width > $width_max) 
					$width_max = $width;
				
				if($height > $height_max) 
					$height_max = $height;
				
				$length_total += $length * $sale_product['quantity'];
				$width_total  += $width  * $sale_product['quantity'];
				$height_total += $height * $sale_product['quantity'];
			}
					
			if(($length_total <= $width_total) && ($length_total <= $height_total)) 
			{
				$result = array(
					'length'  => number_format($length_total, 2),
					'width'   => number_format($width_max, 2),
					'height'  => number_format($height_max, 2)
				);
			}
			else if(($width_total <= $height_total) && ($width_total <= $length_total))
			{
				$result = array(
					'length'  =>  number_format($length_max, 2),
					'width'   =>  number_format($width_total, 2),
					'height'  =>  number_format($height_max, 2)
				);
			}
			else if(($height_total <= $width_total) && ($height_total <= $length_total))
			{
				$result = array(
					'length'  =>  number_format($length_max, 2),
					'width'   =>  number_format($width_max, 2),
					'height'  =>  number_format($height_total, 2)
				);
			}
		}
		else
		{
			$result = array(
				'length'  => 0,
				'width'   => 0,
				'height'  => 0
			);
		}
		
		return $result;
	}
	
	public function get_sale_products_volume($sale_products)
	{
		$this->load->model('catalog/product_model');
		$this->load->model('setting/length_class_model');
			
		$length_max    = 0;
		$width_max     = 0;
		$height_max    = 0;
	
		$length_total  = 0;
		$width_total   = 0;
		$height_total  = 0;			
					
		foreach($sale_products as $product_id => $quantity)
		{			
			$product = $this->product_model->get_product($product_id);

			$length = $this->length_class_model->to_config($product['length_class_id'], $product['length']);
			$width  = $this->length_class_model->to_config($product['length_class_id'], $product['width']);
			$height = $this->length_class_model->to_config($product['length_class_id'], $product['height']);
						
			if($length > $length_max) 
				$length_max = $length;
	
			if($width > $width_max) 
				$width_max = $width;
			
			if($height > $height_max) 
				$height_max = $height;
			
			$length_total += $length * $quantity;
			$width_total  += $width  * $quantity;
			$height_total += $height * $quantity;
		}
	
		if(($length_total <= $width_total) && ($length_total <= $height_total)) 
		{
			$volume = array(
				'length'           => number_format($length_total, 2),
				'width'            => number_format($width_max, 2),
				'height'  		   => number_format($height_max, 2),
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		else if(($width_total <= $height_total) && ($width_total <= $length_total))
		{
			$volume = array(
				'length'           => number_format($length_max, 2),
				'width'            => number_format($width_total, 2),
				'height'  		   => number_format($height_max, 2),
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		else if(($height_total <= $width_total) && ($height_total <= $length_total))
		{
			$volume = array(
				'length'           => number_format($length_max, 2),
				'width'            => number_format($width_max, 2),
				'height'  		   => number_format($height_total, 2),
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		
		return $volume;
	}
	
	public function get_sale_weight($sale_id) 
	{
		$this->load->model('setting/weight_class_model');
		
		$sale_products = $this->get_sale_products($sale_id);
		
		$weight_total  = 0;
		
		if($sale_products)
		{
			foreach($sale_products as $sale_product)
			{			
				$weight = $this->weight_class_model->to_config($sale_product['weight_class_id'], $sale_product['weight']);
			
				$weight_total += $weight * $sale_product['quantity'];
			}
						
			$result = array(
				'weight'  => number_format($weight_total, 2)
			);
		}
		else 
		{
			$result = array(
				'weight'  => 0
			);
		}
		
		return $result;
	}
	
	public function get_sale_products_weight($sale_products)
	{
		$this->load->model('catalog/product_model');
		$this->load->model('setting/weight_class_model');
		
		$weight_total = 0;
					
		foreach($sale_products as $product_id => $quantity)
		{	
			$product = $this->product_model->get_product($product_id);
			
			$weight = $this->weight_class_model->to_config($product['weight_class_id'], $product['weight']);
								
			$weight_total += $weight * $quantity;
		}	
					
		$weight = array(
			'weight'           => number_format($weight_total, 2),
			'weight_class_id'  => $this->config->item('config_weight_class_id')
		);
			
		return $weight;
	}
	
	public function get_sale_labels($sale_id) 
	{	
		$this->db->select('*', false);
		$this->db->from('sale_label');
		$this->db->where('sale_id', $sale_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_sales($data)
	{
		$this->db->select('sale.*', false);
		$this->db->from('sale');
		$this->db->join('store', 'store.store_id = sale.store_id', 'left');
		$this->db->join('client', 'client.id = store.client_id', 'left');
		$this->db->where('client.id', $this->auth->get_client_id());
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
				
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('sale.name', $data['filter_name'], 'after');
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('sale.status_id', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('sale.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$sort_data = array(
			'sale.id',
			'sale.store_sale_id',
			'sale.tracking',
			'sale.name',
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
	
	public function get_sale_total($data)
	{
		$this->db->select('COUNT(sale.id) AS total', false);
		$this->db->from('sale');
		$this->db->join('store', 'store.store_id = sale.store_id', 'left');
		$this->db->join('client', 'client.id = store.client_id', 'left');
		$this->db->where('client.id', $this->auth->get_client_id());
		
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
			
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('sale.name', $data['filter_name'], 'left');
		}
		
		if(!empty($data['filter_status'])) 
		{			
			$this->db->where('sale.status_id', $data['filter_status']);
		}
		
		if(!empty($data['filter_date_added'])) 
		{			
			$this->db->where('sale.date_added >=', $data['filter_date_added'] . " 00:00:00");
			$this->db->where('sale.date_added <=', $data['filter_date_added'] . " 23:59:59");
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function search_sale($key) 
	{
		$this->db->select('*', false);
		$this->db->from('sale'); 
		$this->db->or_where('id', $key);  
		$this->db->or_like('store_sale_id', $key, 'left');  
		$this->db->or_like('tracking', $key, 'left');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_period_sale_total($data)
	{
		$this->db->select("COUNT(id) AS total", false);
		$this->db->from('sale');
		
		if(!empty($data['filter_date_added_since'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_since']);
		}
		
		if(!empty($data['filter_date_added_from']) && !empty($data['filter_date_added_to'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_from']);
			$this->db->where('date_added <=', $data['filter_date_added_to']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function get_period_sale_income($data)
	{
		$this->db->select('SUM(total) AS total', false);
		$this->db->from('sale');
		
		if(!empty($data['filter_date_added_since'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_since']);
		}
		
		if(!empty($data['filter_date_added_from']) && !empty($data['filter_date_added_to'])) 
		{			
			$this->db->where('date_added >=', $data['filter_date_added_from']);
			$this->db->where('date_added <=', $data['filter_date_added_to']);
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	public function delete_sale($sale_id) 
	{
		$this->db->trans_begin();
		
		$q = $this->db->get_where('sale_to_checkout', array('sale_id' => $sale_id)); 

		if($q->num_rows() > 0)
		{
			$this->load->model('check/checkout_model');
			
			$row = $q->row_array();
		
			$checkout_id = $row['checkout_id'];
			
			$this->checkout_model->delete_checkout($checkout_id);
		} 
		
		$this->db->delete('sale', array('id' => $sale_id));
		$this->db->delete('sale_product', array('sale_id' => $sale_id));
		$this->db->delete('sale_to_checkout', array('sale_id' => $sale_id));
		
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

	public function add_label($sale_id, $data) 
	{
		$this->db->trans_begin();
		
		$label_data = array(	
			'sale_id'	=> $sale_id,
			'tracking'	=> $data['tracking'],
			'path'	    => $data['path']
		);
		
		$this->db->insert('sale_label', $label_data);
		
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
	
	public function update_tracking($sale_id, $tracking) 
	{
		$this->db->trans_begin();
		
		$this->db->where('id', $sale_id);
		$this->db->update('sale', array('tracking' => $tracking)); 
		
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
	
	public function update_label($sale_id, $label) 
	{
		$this->db->trans_begin();
		
		$this->db->where('id', $sale_id);
		$this->db->update('sale', array('label' => $label)); 
		
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
	
	public function update_shipping($sale_id, $shipping_data) 
	{
		$this->db->trans_begin();
				
		$this->db->where('id', $sale_id);
		$this->db->update('sale', $shipping_data);
		
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
	
	public function update_status($sale_id, $status_id) 
	{
		$this->db->trans_begin();
			
		$this->db->where('id', $sale_id);
		$this->db->set('status_id', $status_id, false);
		$this->db->update('sale');
		
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
}
