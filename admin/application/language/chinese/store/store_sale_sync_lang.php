<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_platform'] 	  	                           = '平台';
$lang['text_store'] 	  	               			   = '店铺';
$lang['text_store_order_sync'] 	  	           		   = '店铺 订单 同步';
$lang['text_store_sale_id_info']                       = '店铺 名称: %s; 店铺 订单 ID: %s';
$lang['text_store_sale_sync_list_description']  	   = '显示 all 这个 店铺 订单 同步';
$lang['text_no_upload_order'] 	  	           		   = '<i class="fa fa-check-circle-o"></i>&nbsp;No 追踪号 needs to be uploaded';
$lang['text_syncing'] 	  	               			   = '<i class="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;syncing ...';
$lang['text_import_total']                 			   = '<strong>总计: %s; 成功: %s; 警告: %s; Fail: %s</strong>';

// Column
$lang['column_client'] 	  	               			   = '客户';
$lang['column_name'] 	  	               			   = '名称';
$lang['column_platform'] 	  	           			   = '平台';
$lang['column_action'] 	  	               			   = '操作';
 
// 错误
$lang['error_not_import_alert']                        = '<strong>Not importing anything 因为 同步 errors</strong>';
$lang['error_store_sale_id_exist']          		   = '<一个 target="_blank" href="%s"><strong>订单 #%s</strong> 是 存在</一个>';
$lang['error_store_sale_product_sku_not_set']          = '<一个 target="_blank" href="%s"><strong>订单 #%s</strong> has 产品 <strong>#%s</strong> that 这个 sku 是 未设置</一个>';
$lang['error_store_sale_product_sku_not_found']        = '<一个 target="_blank" href="%s"><strong>订单 #%s</strong> has sku <strong>%s</strong> that 是 没有找到 in 系统</一个>';
