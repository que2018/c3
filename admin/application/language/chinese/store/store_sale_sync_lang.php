<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_platform'] 	  	                           = 'platform';
$lang['text_store'] 	  	               			   = '店铺';
$lang['text_store_order_sync'] 	  	           		   = '店铺 订单 Sync';
$lang['text_store_sale_id_info']                       = '店铺 名称: %s; 店铺 订单 ID: %s';
$lang['text_store_sale_sync_list_description']  	   = '显示 all 这个 店铺 订单 sync';
$lang['text_no_upload_order'] 	  	           		   = '<i 单位="fa fa-check-circle-o"></i>&nbsp;No 追踪号 needs to be uploaded';
$lang['text_syncing'] 	  	               			   = '<i 单位="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;syncing ...';
$lang['text_import_total']                 			   = '<strong>总计: %s; 成功: %s; 警告: %s; Fail: %s</strong>';

// Column
$lang['column_client'] 	  	               			   = '客户';
$lang['column_name'] 	  	               			   = '名称';
$lang['column_platform'] 	  	           			   = 'Platform';
$lang['column_action'] 	  	               			   = '操作';
 
// Error
$lang['error_not_import_alert']                        = '<strong>Not importing anything 因为 sync errors</strong>';
$lang['error_store_sale_id_exist']          		   = '<a target="_blank" href="%s"><strong>订单 #%s</strong> 是 存在</a>';
$lang['error_store_sale_product_sku_not_set']          = '<a target="_blank" href="%s"><strong>订单 #%s</strong> has 产品 <strong>#%s</strong> that 这个 sku 是 未设置</a>';
$lang['error_store_sale_product_sku_not_found']        = '<a target="_blank" href="%s"><strong>订单 #%s</strong> has sku <strong>%s</strong> that 是 没有找到 in 系统</a>';
