<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Fedex_model extends CI_Model
{	
	public function __construct()
	{
		parent::__construct();
	}	
		
	public function install()
	{
		
	}
	
	public function uninstall() 
	{
		$this->db->delete('setting', array('code' => 'fedex')); 
	}
	
	public function get_service($code)
	{	
		$q = $this->db->get_where('setting', array('key' => 'fedex_service'));
	
		if($q->num_rows() > 0)
		{
			$result = $q->row_array();
			
			$services = unserialize($result['value']);
						
			return $services[$code];
		}
		else 
		{
			return false;
		}
	}
	
	public function generate_sale_label($sale_id)
	{
		$this->lang->load('shipping/fedex');
	
		$this->load->model('sale/sale_model');
						
		//get shipping info
		$sale          = $this->sale_model->get_sale($sale_id);			
		$sale_products = $this->sale_model->get_sale_products($sale_id);
		$sale_volume   = $this->sale_model->get_sale_volume($sale_id);
		$sale_weight   = $this->sale_model->get_sale_weight($sale_id);
		
		$sale_shipping_service = $this->get_service($sale['shipping_service']);
		
		require_once APPPATH . 'libraries/RocketShipIt/autoload.php';
		$config = new \RocketShipIt\Config;
		
		$config->setDefault('generic', 'debugMode', $this->config->item('fedex_debug_mode'));
		$config->setDefault('generic', 'timezone', $this->config->item('fedex_time_zone'));
		$config->setDefault('generic', 'shipper', $this->config->item('fedex_company'));
		$config->setDefault('generic', 'shipContact', $this->config->item('fedex_owner'));
		$config->setDefault('generic', 'shipAddr1', $this->config->item('fedex_street'));	
		$config->setDefault('generic', 'shipAddr2',  $this->config->item('fedex_street2'));	
		$config->setDefault('generic', 'shipCity', $this->config->item('fedex_city'));
		$config->setDefault('generic', 'shipState', $this->config->item('fedex_state'));
		$config->setDefault('generic', 'shipCode', $this->config->item('fedex_postcode'));
		$config->setDefault('generic', 'shipCountry', $this->config->item('fedex_country'));
		$config->setDefault('generic', 'shipPhone', $this->config->item('fedex_phone'));
		$config->setDefault('generic', 'toCountry', $this->config->item('fedex_country'));
		
		$config->setDefault('fedex', 'accountNumber', $this->config->item('fedex_account_number'));
		$config->setDefault('fedex', 'meterNumber', $this->config->item('fedex_meter_number'));
		$config->setDefault('fedex', 'key', $this->config->item('fedex_key'));
		$config->setDefault('fedex', 'password', $this->config->item('fedex_password'));

		$config->setDefault('fedex', 'toCountryCode', $this->config->item('fedex_country'));
		$config->setDefault('fedex', 'service', $sale_shipping_service['method']);
		$config->setDefault('fedex', 'packagingType', $sale_shipping_service['package']);
		$config->setDefault('fedex', 'imageType', $this->config->item('fedex_image_type'));
		$config->setDefault('fedex', 'lengthUnit', $this->config->item('fedex_length_unit'));
		$config->setDefault('fedex', 'weightUnit', $this->config->item('fedex_weight_unit'));

		$shipment = new \RocketShipIt\Shipment('fedex', array('config' => $config));
		
		$shipment->setParameter('length', (int)$sale_volume['length_max']);
		$shipment->setParameter('width', (int)$sale_volume['width_max']);
		$shipment->setParameter('height', (int)$sale_volume['height_max']);
		$shipment->setParameter('weight', (int)$sale_weight['weight_total']);
				
		$shipment->setParameter('toName', $sale['name']);
		$shipment->setParameter('toPhone', $sale['phone']);
		$shipment->setParameter('toAddr1', $sale['street']);
		$shipment->setParameter('toCity', $sale['city']);
		$shipment->setParameter('toState',$sale['state']);
		$shipment->setParameter('toCode', $sale['zipcode']);
					
		$response = $shipment->submitShipment();
		file_put_contents('neil.txt', serialize($response));	
		if(isset($response['error']) && $response['error'] != '') 
		{
			$result['error'] = $response['error'];	
		} 
		else 
		{
			if(isset($response['pkgs']) && is_array($response['pkgs']) && count($response['pkgs']) > 0) 
			{
				$tracking = $response['pkgs'][0]['pkg_trk_num'];
				$label_img = 'img/shipping_label/fedex_'.$tracking . '.gif';
				
				if(@file_put_contents($label_img, base64_decode($response['pkgs'][0]['label_img'])))
				{									
					$result['tracking']  = $tracking;
					$result['amount']    = $response['charges'];
					$result['img']       = base_url().$label_img;	
				}
				else
				{
					$result['error'] = $this->lang->line('error_save_image_failed');
				}
			}
			else
			{	
				$result['error'] = $this->lang->line("error_create_shipping_label_faild");
			}
		}
		
		return $result;
	}
}
