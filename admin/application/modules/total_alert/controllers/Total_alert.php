<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Total_alert extends MX_Controller 
{
	public function index()
	{
		$this->load->model('total_alert_model');
		
		$data['alert_quantity'] = 0;
		
		$products = $this->total_alert_model->get_all_products();
		
		if($products)
		{
			foreach($products as $product)
			{
				$product_id = $product['id'];
				$alert_quantity = $product['alert_quantity'];
				
				$quantity = $this->total_alert_model->get_product_quantity($product_id);

				if($quantity < $alert_quantity)
				{
					$data['alert_quantity'] ++;
				}
			}
		}
		
		$this->load->view('total_alert', $data);
	}
}
