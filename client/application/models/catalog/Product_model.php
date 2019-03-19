<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_model extends CI_Model
{		
	public function add_product($data = array())
	{
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
			'client_id'	         => $this->auth->get_client_id(),
			'date_added'   	     => date('Y-m-d H:i:s'),
			'date_modified'      => date('Y-m-d H:i:s')
		);
		
		$this->db->insert('product', $product_data);
	}
	
	public function edit_product($id, $data)
	{
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
			'client_id'	         => $this->auth->get_client_id(),
			'date_modified'      => date('Y-m-d H:i:s')
		);
		
		$this->db->where('id', $id);
		
		if($this->db->update('product', $product_data)) 
		{
			return true;
		} 
		
		return false;
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
		$q = $this->db->get_where('product', array('upc' => $upc, 'client_id' => $this->auth->get_client_id()), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_product_by_sku($sku) 
	{
		$q = $this->db->get_where('product', array('sku' => $sku, 'client_id' => $this->auth->get_client_id()), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_product_by_asin($asin) 
	{
		$q = $this->db->get_where('product', array('asin' => $asin, 'client_id' => $this->auth->get_client_id()), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function get_product_by_name($name) 
	{
		$q = $this->db->get_where('product', array('name' => $name, 'client_id' => $this->auth->get_client_id()), 1); 
		
		if($q->num_rows() > 0)
		{
			return $q->row_array();
		} 
		
		return false;
	}
	
	public function find_product_by_upc($upc) 
	{
		$this->db->select("*", false);
		$this->db->from('product'); 
		$this->db->like('upc', $upc, 'after');
		$this->db->where('client_id', $this->auth->get_client_id());
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
		$this->db->like('sku', $sku, 'after');
		$this->db->where('client_id', $this->auth->get_client_id());
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
		$this->db->like('asin', $asin, 'after');
		$this->db->where('client_id', $this->auth->get_client_id());
		$this->db->limit($this->config->item('config_autocomplete_limit'));
		
		$q = $this->db->get();
		
		if($q->num_rows() > 0)
		{
			return $q->result_array();
		} 
		
		return false;
	}
	
	public function find_product_by_name($name) 
	{
		$this->db->select("*", false);
		$this->db->from('product'); 
		$this->dafterike('name', $name, 'after');
		$this->db->where('client_id', $this->auth->get_client_id());
		$this->db->limit($this->config->item('config_autocomplete_limit'));
		
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
		
	public function get_products($data) 
	{			
		$this->db->select("*", false);
		$this->db->from('product');
		$this->db->where('client_id', $this->auth->get_client_id());
			
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}	
			
		if(!empty($data['filter_upc'])) 
		{			
			$this->db->where('upc', $data['filter_upc']);
		}
		
		if(!empty($data['filter_asin'])) 
		{			
			$this->db->where('asin', $data['filter_asin']);
		}
		
		if(!empty($data['filter_sku'])) 
		{			
			$this->db->where('sku', $data['filter_sku']);
		}
		
		$sort_data = array(
			'upc',
			'sku',
			'asin',
			'name',
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
		$this->db->select('COUNT(id) AS total', false);
		$this->db->from('product');
		$this->db->where('client_id', $this->auth->get_client_id());
		
		if(!empty($data['filter_name'])) 
		{			
			$this->db->like('name', $data['filter_name'], 'both');
		}
		
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
	
		$q = $this->db->get();
		
		$result = $q->row_array();
		
		return $result['total'];
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
