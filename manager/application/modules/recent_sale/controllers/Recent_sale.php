<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Recent_sale extends MX_Controller 
{
	public function index()
	{
		$this->load->model('sale/sale_model');
		$this->load->model('store/store_model');
		
		$filter_data = array(
			'start' => 0,
			'limit' => $this->config->item('config_dashboard_order_limit'),
			'sort'  => 'sale.date_added',
			'order' => 'DESC'
		);
		
		$sales_data = $this->sale_model->get_sales($filter_data);
		
		$recent_sale_products = array();
		
		if($sales_data)
		{
			foreach($sales_data as $sale_data)
			{
				$sale_id = $sale_data['id'];
				$store_id = $sale_data['store_id'];
				
				$store_data = $this->store_model->get_store($store_id);
				
				$sale_products = $this->sale_model->get_sale_products($sale_id);
				
				$date_added = $this->datetimer->format_display($sale_data['date_added']);

				foreach($sale_products as $sale_product)
				{
					if($sale_product['name']) {
						$total = $this->currency->format($sale_product['price'] * $sale_product['quantity']);
						
						$recent_sale_products[] = array(
							'product_id'  => $sale_product['product_id'],
							'name'    	  => $sale_product['name'],
							'date'        => $date_added,
							'store'       => $store_data['name'],
							'total'       => $total
						);
					}
				}
			}
		}
		
		$data['recent_sale_products'] = array_slice($recent_sale_products, 0, $this->config->item('config_dashboard_order_limit'));
		
		$this->load->view('recent_sale', $data);
	}
}
