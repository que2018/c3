<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_platform'] 	  	                           = '平台';
$lang['text_store'] 	  	               			   = '店铺';
$lang['text_store_order_sync'] 	  	           		   = '店铺订单同步';
$lang['text_syncing'] 	  	               			   = '<i class="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;同步中 ...';
$lang['text_store_sale_sync_list_description']  	   = '展示所有店铺订单同步';
$lang['text_import_total']                 			   = '<strong>总计:%s;成功: %s;失败: %s</strong>';
$lang['text_store_sale_id_info']                       = '店铺名称: %s; 店铺订单ID: %s';
$lang['text_not_import_alert']                         = '<strong>没有导入任何信息因为同步失败</strong>';

// Column
$lang['column_client'] 	  	               			   = '客户';
$lang['column_name'] 	  	               			   = '名称';
$lang['column_platform'] 	  	           			   = '平台';
$lang['column_action'] 	  	               			   = '操作';
 
// 错误
$lang['error_store_sale_id_exist']          		   = '<a target="_blank" href="%s"><strong>订单#%s</strong>已存在</a>';
$lang['error_store_sale_product_sku_not_found']        = '<a target="_blank" href="%s"><strong>订单#%s</strong>有sku<strong>%s</strong>在产品中没有找到</a>';
$lang['error_store_sale_product_inventory_not_exist']  = '<a target="_blank" href="%s"><strong>订单#%s</strong>有产品<strong>%s</strong>在库存中没有找到</a>';
