<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_add'] 	  	        	 	  	    = '添加 client';
$lang['text_edit'] 	  	        	 	  	    = '编辑 client';
$lang['text_delete'] 	  	        	 	  	= '删除 client';
$lang['text_save'] 	  	        	 	  	 	= '保存 client';
$lang['text_cancel'] 	  	        	 	  	= '取消';
$lang['text_order'] 	  	        	 	  	= 'order';
$lang['text_checkin'] 	  	        	 	  	= '入库';
$lang['text_firstname'] 	  	         		= 'firstname';
$lang['text_lastname'] 	  	             		= 'lastname';
$lang['text_company'] 	  	             		= 'company';
$lang['text_email'] 	  	             		= 'email';
$lang['text_location'] 	  	             		= '库位';
$lang['text_password'] 	  	             		= 'password';
$lang['text_phone'] 	  	             		= 'phone';
$lang['text_location'] 	  	             		= '库位';
$lang['text_client'] 	  	             		= '客户';
$lang['text_client_list'] 	  	         		= '客户 列表';
$lang['text_add_client'] 	  	         		= '添加 客户';
$lang['text_edit_client'] 	  	         		= '编辑 客户';
$lang['text_client_add_success'] 	  	 		= '<i class="fa fa-check-circle-o"></i>&nbsp;client 添加 成功';
$lang['text_client_edit_success'] 	  	 		= '<i class="fa fa-check-circle-o"></i>&nbsp;client 编辑 成功';
$lang['text_client_list_description'] 	 		= '显示 all clients';
$lang['text_volume_total'] 	 	  	       		= '%s %s^3';
$lang['text_confirm_delete'] 	 	  	        = '您确定要 删除 这个 client?';

// Column
$lang['column_name'] 	  	             		= '名称';
$lang['column_company'] 	  	         		= 'Company';
$lang['column_email'] 	  	             		= 'Email';
$lang['column_phone'] 	  	             		= 'Phone';
$lang['column_location'] 	  	                = '库位';
$lang['column_action'] 	  	             		= '操作';

// Tab
$lang['tab_general'] 	  	             		= '通用';
$lang['tab_data'] 	  	             		    = 'Data';
$lang['tab_location'] 	  	         		    = '库位';

// Entry
$lang['entry_email'] 	  	             		= 'Email';
$lang['entry_password'] 	  	         		= 'Password';
$lang['entry_firstname'] 	  	         		= 'Firstame';
$lang['entry_lastname'] 	  	         		= 'Lastname';
$lang['entry_company'] 	  	                  	= 'Company';
$lang['entry_phone'] 	  	             		= 'Phone';
$lang['entry_balance'] 	  	             		= 'Balance';
$lang['entry_volume_total'] 	  	            = 'Total Volume';

// Error 
$lang['error_email_is_used']                    = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Email <strong>%s</strong> 是 used';
$lang['error_can_not_delete_order_exist']       = '<i class="fa fa-exclamation-triangle"></i>&nbsp;这个 client 不能被删除 because the order exists';
$lang['error_can_not_delete_product_exist']     = '<i class="fa fa-exclamation-triangle"></i>&nbsp;这个 client 不能被删除 because the 产品 exists';
$lang['error_can_not_delete_recharge_exist']    = '<i class="fa fa-exclamation-triangle"></i>&nbsp;这个 client 不能被删除 because the recharge exists';
$lang['error_can_not_delete_transaction_exist'] = '<i class="fa fa-exclamation-triangle"></i>&nbsp;这个 client 不能被删除 because the transaction exists';
$lang['error_client_location_required']        	= '<i class="fa fa-exclamation-triangle"></i>&nbsp;You may have some 库位 names not assigned';
$lang['error_client_location_duplicated']       = '<i class="fa fa-exclamation-triangle"></i>&nbsp;The 库位 you assigned are duplicated';