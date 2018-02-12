<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Product_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function add_product($data)
	{
		$this->db->trans_begin();
						
		$product_data = array(	
			'upc'	             => $data['upc'],
			'sku'	             => $data['sku'],
			'asin'	     	     => $data['asin'],
			'name'   		     => $data['name'],
			'price'	     	     => $data['price'],
			'length'	         => $data['length'],
			'height'	         => $data['height'],
			'width'	     	     => $data['width'],
			'weight'	         => $data['weight'],
			'length_class_id'	 => $data['length_class_id'],
			'weight_class_id'	 => $data['weight_class_id'],
			'shipping_provider'	 => $data['shipping_provider'],
			'shipping_service'	 => $data['shipping_service'],
			'alert_quantity'	 => $data['alert_quantity'],
			'client_id'	         => $data['client_id'],
			'date_added'   	     => date('Y-m-d H:i:s'),
			'date_modified'      => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('product', $product_data);
		
		$id = $this->db->insert_id();
		
		if(isset($data['product_fees']))
		{
			$product_fees = array();
						
			foreach($data['product_fees'] as $product_fee){					
				$product_fees[] = array(
					'product_id'  => $id,
					'name' 	      => $product_fee['name'],
					'type' 	      => $product_fee['type'],
					'amount'      => $product_fee['amount']
				);
			}
			
			$this->db->insert_batch('product_fee', $product_fees);
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
	
	public function edit_product($id, $data)
	{
		$this->db->trans_begin();
		
		$product_data = array(		
			'upc'	             => $data['upc'],
			'sku'	             => $data['sku'],
			'asin'	     	     => $data['asin'],
			'name'   		     => $data['name'],
			'price'	     	     => $data['price'],
			'length'	         => $data['length'],
			'height'	         => $data['height'],
			'width'	     	     => $data['width'],
			'weight'	         => $data['weight'],
			'length_class_id'	 => $data['length_class_id'],
			'weight_class_id'	 => $data['weight_class_id'],
			'shipping_provider'	 => $data['shipping_provider'],
			'shipping_service'	 => $data['shipping_service'],
			'alert_quantity'	 => $data['alert_quantity'],
			'client_id'	         => $data['client_id'],
			'date_modified'      => date('Y-m-d H:i:s')
		);
		
		$this->db->where('id', $id);
		
		$this->db->update('product', $product_data);
		
		//product fee
		$this->db->delete('product_fee', array('product_id' => $id));
		
		if(isset($data['product_fees']))
		{
			$product_fees = array();
						
			foreach($data['product_fees'] as $product_fee){					
				$product_fees[] = array(
					'product_id'  => $id,
					'name' 	      => $product_fee['name'],
					'type' 	      => $product_fee['type'],
					'amount'      => $product_fee['amount']
				);
			}
			
			$this->db->insert_batch('product_fee', $product_fees);
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
	
	public function get_product($product_id) 
	{
		$q = $this->db->get_where('product', array('id' => $product_id), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}

	public function get_product_by_upc($upc) 
	{
		$q = $this->db->get_where('product', array('upc' => $upc), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_product_by_sku($sku) 
	{
		$q = $this->db->get_where('product', array('sku' => $sku), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_product_by_asin($asin) 
	{
		$q = $this->db->get_where('product', array('asin' => $asin), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_product_by_name($name) 
	{
		$q = $this->db->get_where('product', array('name' => $name), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_products_by_client($client_id) 
	{
		$q = $this->db->get_where('product', array('client_id' => $client_id)); 
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_product_by_upc($upc) 
	{
		$this->db->select("*", false);
		$this->db->from('product'); 
		$this->db->like('upc', $upc, 'left');
		$this->db->limit($this->config->item('config_autocomplete_limit'));
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_product_by_sku($sku) 
	{
		$this->db->select("*", false);
		$this->db->from('product'); 
		$this->db->like('sku', $sku, 'left');
		$this->db->limit($this->config->item('config_autocomplete_limit'));
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_product_by_asin($asin) 
	{
		$this->db->select("*", false);
		$this->db->from('product'); 
		$this->db->like('asin', $asin, 'left');
		$this->db->limit($this->config->item('config_autocomplete_limit'));
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function get_product_fees($product_id) 
	{	
		$this->db->select('*', false);
		$this->db->from('product_fee');
		$this->db->where('product_id', $product_id);

		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_product_by_name($name) 
	{
		$this->db->select('*', false);
		$this->db->from('product'); 
		$this->db->like('name', $name, 'left');
		$this->db->limit($this->config->item('config_autocomplete_limit'));
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function search_product($key) 
	{
		$this->db->select('*', false);
		$this->db->from('product'); 
		$this->db->or_like('name', $key, 'left');  
		$this->db->or_like('upc', $key, 'left');  
		$this->db->or_like('sku', $key, 'left');  
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function delete_product($id) 
	{
		if($this->db->delete('product', array('id' => $id))) 
		{
			return true;
		}
		
		return false;
	}

	public function clear_product() 
	{
		$this->db->trans_begin();
		
		$this->db->empty_table('product');
		
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

	public function clear_client_product($client_id) 
	{
		$this->db->trans_begin();
		
		$this->db->where('client_id', $client_id);
		$this->db->delete('product');

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

	public function clear_non_client_product() 
	{
		$this->db->trans_begin();
		
		$this->db->where('client_id', '');
		$this->db->delete('product');
		
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
		
	public function get_products($data) 
	{					
		$this->db->select("product.*, CONCAT(client.firstname, ' ', client.lastname) AS client", false);
		$this->db->from('product');
		$this->db->join('client', 'client.id = product.client_id', 'left');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('product.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_client_id'])) 
		{			
			$this->db->where('client.id', $data['filter_client_id']);
		}
		
		if(!empty($data['filter_upc'])) 
		{						
			$this->db->like('product.upc', $data['filter_upc'], 'left');
		}
	
		if(!empty($data['filter_sku'])) 
		{						
			$this->db->like('product.sku', $data['filter_sku'], 'left');
		}
		
		$sort_data = array(
			'product.name',
			'product.upc',
			'product.sku',
			'client.id'
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
	
	public function get_all_products() 
	{
		$q = $this->db->get('product');
		
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
		$this->db->select("COUNT(product.id) AS total", false);
		$this->db->from('product');
		$this->db->join('client', 'client.id = product.client_id', 'left');
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('product.name', $data['filter_name'], 'both');
		}
		
		if(!empty($data['filter_client_id'])) 
		{			
			$this->db->where('client.id', $data['filter_client_id']);
		}
		
		if(!empty($data['filter_upc'])) 
		{						
			$this->db->like('product.upc', $data['filter_upc'], 'left');
		}
	
		if(!empty($data['filter_sku'])) 
		{						
			$this->db->like('product.sku', $data['filter_sku'], 'left');
		}
		
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
	}
	
	function get_products_volume($products)
	{
		$this->load->model('setting/length_class_model');
			
		$length_max    = 0;
		$width_max     = 0;
		$height_max    = 0;
	
		$length_total  = 0;
		$width_total   = 0;
		$height_total  = 0;			
										
		foreach($products as $product_id => $quantity)
		{			
			$product = $this->get_product($product_id);

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
	
		if(($length_total >= $width_total) && ($length_total >= $height_total)) 
		{
			$volume = array(
				'length'           => number_format($length_total, 2),
				'width'            => number_format($width_max, 2),
				'height'  		   => number_format($height_max, 2),
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		else if(($width_total >= $height_total) && ($width_total >= $length_total))
		{
			$volume = array(
				'length'           => number_format($length_max, 2),
				'width'            => number_format($width_total, 2),
				'height'  		   => number_format($height_max, 2),
				'length_class_id'  => $this->config->item('config_length_class_id')
			);
		}
		else if(($height >= $width_total) && ($height >= $length_total))
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
	
	function get_products_weight($products)
	{
		$this->load->model('setting/weight_class_model');
		
		$weight_total = 0;
					
		foreach($products as $product_id => $quantity)
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
	
	function update_product_value($id, $data) 
	{
		$product_data[$data['field']] = $data['value'];
		
		$this->db->where('id', $id);
		
		if($this->db->update('product', $product_data)) 
		{
			return true;
		}
	}
}
