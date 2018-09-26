<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Store_sale_sync extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->lang->load('store/store_sale_sync');
		
		$this->load->model('store/store_sale_sync_model');
	}
	
	function index()
	{
		$data['success'] = $this->session->flashdata('success');
		                   	
		if($this->input->get('filter_name'))
		{
			$filter_name = $this->input->get('filter_name');
		} 
		else 
		{
			$filter_name = '';
		}
		
		if($this->input->get('filter_platform'))
		{
			$filter_platform = $this->input->get('filter_platform');
		} 
		else 
		{
			$filter_platform = '';
		}
		
		if($this->input->get('sort')) 
		{
			$sort = $this->input->get('sort');
		} 
		else 
		{
			$sort = 'stores.date_added';
		}

		if($this->input->get('order')) 
		{
			$order = $this->input->get('order');
		} 
		else 
		{
			$order = 'DESC';
		}
		
		if($this->input->get('limit'))
		{
			$limit = $this->input->get('limit');
		} 
		else 
		{
			$limit = $this->config->item('config_page_limit');
		}
		
		if($this->input->get('page')) 
		{
			$page = $this->input->get('page');
		} 
		else 
		{
			$page = 1;
		}
		
		$filter_data = array(
			'filter_name'       => $filter_name,
			'filter_platform'   => $filter_platform,
			'sort'              => $sort,
			'order'             => $order,
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);
		
		$stores = $this->store_sale_sync_model->get_stores($filter_data);	
		$store_total = $this->store_sale_sync_model->get_store_total($filter_data);
		
		$data['stores'] = array();
		
		if($stores) 
		{
			foreach($stores as $store)
			{	
				$this->lang->load('platform/' . $store['platform']);
			
				$data['stores'][] = array(
					'id'         => $store['store_id'],
					'name'       => $store['name'],
					'platform'   => $this->lang->line('text_title')
				);
			}
		}
		
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if ($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
	
		$this->pagination->total  = $store_total;
		$this->pagination->page   = $page;
		$this->pagination->limit  = $limit;
		$this->pagination->url    = base_url().'store/store_sale_sync?page={page}'.$url;
		$data['pagination']       = $this->pagination->render();
		$data['results']          = sprintf($this->lang->line('text_pagination'), ($store_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($store_total - $limit)) ? $store_total : ((($page - 1) * $limit) + $limit), $store_total, ceil($store_total / $limit));

		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		if($this->input->get('order')) 
		{
			$url .= '&order=' . $this->input->get('order');
		}
		
		$data['limit_10']  = base_url().'store/store_sale_sync?limit=10' . $url;
		$data['limit_15']  = base_url().'store/store_sale_sync?limit=15' . $url;
		$data['limit_50']  = base_url().'store/store_sale_sync?limit=50' . $url;
		$data['limit_100'] = base_url().'store/store_sale_sync?limit=100' . $url;
	
		$url = '';
		
		if($this->input->get('filter_name')) 
		{
			$url .= '&filter_name=' . $this->input->get('filter_name');
		}
		
		if($this->input->get('filter_platform')) 
		{
			$url .= '&filter_platform=' . $this->input->get('filter_platform');
		}
		
		if($this->input->get('limit')) 
		{
			$url .= '&limit=' . $this->input->get('limit');
		}
		
		if($order == 'ASC') 
		{
			$url .= '&order=DESC';
		} 
		else 
		{
			$url .= '&order=ASC';
		}
		
		$data['sort_name']      = base_url().'store/store_sale_sync?sort=store.name' . $url;
		$data['sort_platform']  = base_url().'store/store_sale_sync?sort=store.platform' . $url;
		
		$url = '';
		
		if ($this->input->get('limit')) 
		{
			$url .= '?limit=' . $this->input->get('limit');
		}
		else
		{
			$url .= '?limit=10';
		}
		
		if($this->input->get('sort')) 
		{
			$url .= '&sort=' . $this->input->get('sort');
		}
		
		$data['filter_url'] = base_url().'store/store_sale_sync' . $url;
	
		$data['sort']  = $sort;
		$data['order'] = $order;
		$data['limit'] = $limit;
		
		$data['filter_name']       = $filter_name;
		$data['filter_platform']   = $filter_platform;
		
		$this->load->view('common/header');
		$this->load->view('store/store_sale_sync_list', $data);
		$this->load->view('common/footer');
	}
	
	function download($store_id)
	{
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		$this->load->model('check/checkout_model');
		$this->load->model('inventory/inventory_model');
		$this->load->model('store/store_sync_history_model');
		
		$store = $this->store_model->get_store($store_id);	
		
		$store_name             = $store['name'];
		$code                   = $store['platform'];
		$sync_inventory         = $store['sync_inventory'];
		$sync_single_warehouse  = $store['sync_single_warehouse'];
		$sync_warehouse_id 		= $store['sync_warehouse_id'];
				
		$this->load->model('platform/'. $code .'_model');

		$result = $this->{$code . '_model'}->download($store_id);
		
		if($result['success']) 
		{	
			$sales = $result['sales'];
			
			$total   = count($sales);
			$success = 0;
			$warning = 0;
			$fail    = 0;
			$msgs    = array();
			
			if($sync_inventory && $sync_single_warehouse)
			{
				foreach($sales as $sale)
				{					
					$store_sale_id = $sale['store_sale_id'];
					
					$sale_info = $this->sale_model->get_sale_by_store_sale_id($store_sale_id);
					
					if(!$sale_info)
					{	
						if($sync_inventory && $sync_single_warehouse)
						{
							$product_validated = true;
								
							foreach($sale['sale_products'] as $sale_product)
							{
								$sku = $sale_product['sku'];
								
								$product_info = $this->product_model->get_product_by_sku($sku);
								
								if(!$product_info)
								{
									$link = base_url(). 'store/store_sale_sync/sale_detail?store_sale_id=' . $store_sale_id;
									
									$msgs[] = array(
										'level'   => 2,
										'content' => sprintf($this->lang->line('error_store_sale_product_sku_not_found'), $link, $store_sale_id, $sku)
									);
									
									if($product_validated) 
										$product_validated = false;
									
									continue;
								}
								
								$product_id   = $product_info['id'];
								$product_name = $product_info['name'];
								
								$inventory = $this->inventory_model->get_inventory_by_warehouse_product($sync_warehouse_id, $product_id);

								//no inventory
								if(!$inventory)
								{
									$link = base_url(). 'store/store_sale_sync/sale_detail?store_sale_id=' . $store_sale_id;
									
									$msgs[] = array(
										'level'   => 2,
										'content' => sprintf($this->lang->line('error_store_sale_product_inventory_not_exist'), $link, $store_sale_id, $product_name)
									);
								
									if($product_validated) 
										$product_validated = false;
									
									continue;
								}
							}
							
							if($product_validated)
							{
								//sale data
								$sale_products = array();
								
								foreach($sale['sale_products'] as $sale_product)
								{
									$sku = $sale_product['sku'];
								
									$product_info = $this->product_model->get_product_by_sku($sku);
									
									$sale_products[] = array(
										'product_id' => $product_info['id'],
										'quantity'   => $sale_product['quantity']
									);
								}
								
								$sale['sale_products'] = $sale_products;
									
								$sale_id = $this->sale_model->add_sale($sale);
								
								//checkout data
								foreach($sale_products as $sale_product)
								{
									$checkout_products = array();
									
									$checkout_products[] = array(
										'product_id' => $sale_product['product_id'],
										'quantity'   => $sale_product['quantity']
									);
									
									$checkout_data = array(
										'location_id'       => $inventory['location_id'],
										'tracking' 		    => '',
										'note' 		        => sprintf($this->lang->line('text_store_sale_id_info'), $store_name, $store_sale_id),
										'checkout_products' => $checkout_products,
										'checkout_fees'     => array(),
										'checkout_files'    => array()
									);
									
									$checkout_id = $this->checkout_model->add_checkout($checkout_data);
									
									$sale_checkout_data = array(
										'sale_id'       => $sale_id,
										'checkout_id' 	=> $checkout_id
									);
									
									$this->checkout_model->add_sale_checkout($sale_checkout_data);
								}
								
								$success++;
							}
							else 
							{
								$fail++;
							}
						}
					}
					else
					{
						$sale_id = $sale_info['id'];
						
						$link = base_url(). 'sale/sale/edit?id=' . $sale_id;
						
						$msgs[] = array(
							'level'   => 1,
							'content' => sprintf($this->lang->line('error_store_sale_id_exist'), $link, $store_sale_id)
						);	

						$warning++;
					}
				}
			}
			else
			{
				foreach($sales as $sale)
				{					
					$store_sale_id = $sale['store_sale_id'];
					
					$sale_info = $this->sale_model->get_sale_by_store_sale_id($store_sale_id);
					
					if(!$sale_info)
					{	
						$product_validated = true;
							
						foreach($sale['sale_products'] as $sale_product)
						{
							$sku = $sale_product['sku'];
							
							$product_info = $this->product_model->get_product_by_sku($sku);
							
							if(!$product_info)
							{
								$link = base_url(). 'store/store_sale_sync/sale_detail?store_sale_id=' . $store_sale_id;
								
								$msgs[] = array(
									'level'   => 2,
									'content' => sprintf($this->lang->line('error_store_sale_product_sku_not_found'), $link, $store_sale_id, $sku)
								);	
									
								if($product_validated) 
									$product_validated = false;
								
								continue;
							}
							
							$product_id   = $product_info['id'];
							$product_name = $product_info['name'];
						}
						
						if($product_validated)
						{
							$sale_products = array();
							
							foreach($sale['sale_products'] as $sale_product)
							{
								$sku = $sale_product['sku'];
							
								$product_info = $this->product_model->get_product_by_sku($sku);
								
								$sale_products[] = array(
									'product_id' => $product_info['id'],
									'quantity'   => $sale_product['quantity']
								);
							}
							
							$sale['sale_products'] = $sale_products;
							
							$this->sale_model->add_sale($sale);
							
							$success++;
						}
						else 
						{
							$fail++;
						}
					}
					else
					{
						$sale_id = $sale_info['id'];
						
						$link = base_url(). 'sale/sale/edit?id=' . $sale_id;
						
						$msgs[] = array(
							'level'   => 1,
							'content' => sprintf($this->lang->line('error_store_sale_id_exist'), $link, $store_sale_id)
						);	
						
						$warning++;
					}
				}
			}
		
			$msgs[] = array(
				'level'   => 0,
				'content' => sprintf($this->lang->line('text_import_total'), $total, $success, $fail)
			);	
		
			$msgs = array_merge($result['msgs'], $msgs);
			
			if($success == $total) 
				$status = 1;
			else if($fail > 0)
				$status = 2;
			else 
				$status = 3;
			
			$sync_history_data = array(
				'store_id'   => $store_id,
				'type'       => 0,
				'status'     => $status,
				'messages'   => $msgs
			);
			
			$this->store_sync_history_model->add_store_sync_history($sync_history_data);
			
			$outdata = array(
				'success'  => true,
				'msgs'     => $msgs
			);
		}
		else
		{
			$msgs[] = $this->lang->line('text_not_import_alert');
			$msgs   = array_merge($result['msgs'], $msgs);
			
			$sync_history_data = array(
				'store_id'   => $store_id,
				'type'       => 0,
				'status'     => 2,
				'messages'   => $msgs
			);
			
			$this->store_sync_history_model->add_store_sync_history($sync_history_data);
			
			$outdata = array(
				'success'  => false,
				'msgs'     => $msgs
			);
		}
		
		return $outdata;
	}
	
	function download_ajax()
	{
		$store_id = $this->input->get('id');
		
		$outdata = $this->download($store_id);
		
		echo json_encode($outdata);
	}
	
	function download_auto()
	{
		$store = $this->store_sale_sync_model->get_active_download_store();
		
		$store_id = $store['store_id'];
		
		$this->download($store_id);
				
		//get all store ids
		$stores = $this->store_sale_sync_model->get_all_download_stores();	
		
		$store_ids = array();

		foreach($stores as $store)
			$store_ids[] = $store['store_id'];
					
		//find next store
		$max_index = sizeof($store_ids) - 1;
		
		$index = array_search($store_id, $store_ids);
		
		if($index == $max_index)
		{
			$next_store_id = $store_ids[0];
		}
		else 
		{
			$next_store_id = $store_ids[$index + 1];
		}
		
		$this->store_sale_sync_model->activate_next_download_store($next_store_id);	
	}
}


