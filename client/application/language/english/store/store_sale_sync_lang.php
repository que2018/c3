<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_platform'] 	  	                           = 'platform';
$lang['text_store'] 	  	               			   = 'Store';
$lang['text_store_order_sync'] 	  	           		   = 'Store Order Sync';
$lang['text_syncing'] 	  	               			   = '<i class="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;syncing ...';
$lang['text_store_sale_sync_list_description']  	   = 'Display all the store order sync';
$lang['text_import_total']                 			   = '<strong>Total: %s; Success: %s; Fail: %s</strong>';
$lang['text_store_sale_id_info']                       = 'Store Name: %s; Store Order ID: %s';
$lang['text_not_import_alert']                         = '<strong>Not importing anything due to sync errors</strong>';

// Column
$lang['column_client'] 	  	               			   = 'Client';
$lang['column_name'] 	  	               			   = 'Name';
$lang['column_platform'] 	  	           			   = 'Platform';
$lang['column_action'] 	  	               			   = 'Action';
 
// Error
$lang['error_store_sale_id_exist']          		   = '<a target="_blank" href="%s"><strong>order #%s</strong> is existed</a>';
$lang['error_store_sale_product_sku_not_found']        = '<a target="_blank" href="%s"><strong>order #%s</strong> has sku <strong>%s</strong> that is not found</a>';
$lang['error_store_sale_product_inventory_not_exist']  = '<a target="_blank" href="%s"><strong>order #%s</strong> has product <strong>%s</strong> that inventory is not found</a>';
