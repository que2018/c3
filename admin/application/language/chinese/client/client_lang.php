<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_add'] 	  	        	 	  	    = '添加 客户';
$lang['text_edit'] 	  	        	 	  	    = '编辑 客户';
$lang['text_delete'] 	  	        	 	  	= '删除 客户';
$lang['text_save'] 	  	        	 	  	 	= '保存 客户';
$lang['text_cancel'] 	  	        	 	  	= '取消';
$lang['text_order'] 	  	        	 	  	= '订单';
$lang['text_checkin'] 	  	        	 	  	= '入库';
$lang['text_firstname'] 	  	         		= '名';
$lang['text_lastname'] 	  	             		= '姓';
$lang['text_company'] 	  	             		= '公司';
$lang['text_email'] 	  	             		= '邮件';
$lang['text_location'] 	  	             		= '库位';
$lang['text_password'] 	  	             		= 'password';
$lang['text_phone'] 	  	             		= '电话';
$lang['text_location'] 	  	             		= '库位';
$lang['text_client'] 	  	             		= '客户';
$lang['text_client_list'] 	  	         		= '客户 列表';
$lang['text_add_client'] 	  	         		= '添加 客户';
$lang['text_edit_client'] 	  	         		= '编辑 客户';
$lang['text_client_add_success'] 	  	 		= '<i 单位="fa fa-check-circle-o"></i>&nbsp;客户 添加 成功';
$lang['text_client_edit_success'] 	  	 		= '<i 单位="fa fa-check-circle-o"></i>&nbsp;客户 编辑 成功';
$lang['text_client_list_description'] 	 		= '显示 all clients';
$lang['text_volume_total'] 	 	  	       		= '%s %s^3';
$lang['text_confirm_delete'] 	 	  	        = '您确定要 删除 这个 客户?';

// Column
$lang['column_name'] 	  	             		= '名称';
$lang['column_company'] 	  	         		= '公司';
$lang['column_email'] 	  	             		= '邮箱';
$lang['column_phone'] 	  	             		= '电话';
$lang['column_location'] 	  	                = '库位';
$lang['column_action'] 	  	             		= '操作';

// Tab
$lang['tab_general'] 	  	             		= '通用';
$lang['tab_data'] 	  	             		    = 'Data';
$lang['tab_location'] 	  	         		    = '库位';

// Entry
$lang['entry_email'] 	  	             		= '邮箱';
$lang['entry_password'] 	  	         		= 'Password';
$lang['entry_firstname'] 	  	         		= 'Firstame';
$lang['entry_lastname'] 	  	         		= '姓';
$lang['entry_company'] 	  	                  	= '公司';
$lang['entry_phone'] 	  	             		= '电话';
$lang['entry_balance'] 	  	             		= 'Balance';
$lang['entry_volume_total'] 	  	            = '总计 Volume';

// Error 
$lang['error_email_is_used']                    = '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;邮箱 <strong>%s</strong> 是 used';
$lang['error_can_not_delete_order_exist']       = '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;这个 客户 不能被删除 because 这个 订单 exists';
$lang['error_can_not_delete_product_exist']     = '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;这个 客户 不能被删除 because 这个 产品 exists';
$lang['error_can_not_delete_recharge_exist']    = '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;这个 客户 不能被删除 because 这个 recharge exists';
$lang['error_can_not_delete_transaction_exist'] = '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;这个 客户 不能被删除 because 这个 transaction exists';
$lang['error_client_location_required']        	= '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;You may have some 库位 names not assigned';
$lang['error_client_location_duplicated']       = '<i 单位="fa fa-exclamation-triangle"></i>&nbsp;这个 库位 you assigned are duplicated';