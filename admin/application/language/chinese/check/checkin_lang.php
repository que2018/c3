<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_title'] 	  	        			 = '入库列表';
$lang['text_search'] 	  	        			 = '搜索';
$lang['text_checkin'] 	  	        			 = '入库';
$lang['text_location'] 	  	    				 = '库位';
$lang['text_status'] 	  	    				 = '状态';
$lang['text_tracking'] 	  	    				 = '追踪号';
$lang['text_add'] 	  	        	 	  	     = '增加入库';
$lang['text_edit'] 	  	        	 	  		 = '编辑入库';
$lang['text_delete'] 	  	        	 	  	 = '删除';
$lang['text_save'] 	  	        	 	  	 	 = '保存入库';
$lang['text_cancel'] 	  	        	 	  	 = '取消';
$lang['text_print'] 	  	        	 	  	 = '打印入库单';
$lang['text_check_in'] 	  	        	 	  	 = '入库';
$lang['text_checkin_fee'] 	  	        		 = '入库费用';
$lang['text_checkin_product'] 	  	    		 = '入库产品';
$lang['text_checkin_add'] 	  	    			 = '增加入库';
$lang['text_checkin_edit'] 	  	    			 = '编辑入库';
$lang['text_checkin_scan'] 	  	    			 = '扫描入库';
$lang['text_checkin_rapid'] 	  	    		 = '快速入库';
$lang['text_checkin_list'] 	  	    			 = '入库列表';
$lang['text_pending'] 	  	        			 = '未完成';
$lang['text_completed'] 	  	    			 = '完成';
$lang['text_canceled'] 	  	        			 = '取消';
$lang['text_pending'] 	  	        			 = '未完成';
$lang['text_completed'] 	  	    			 = '完成';
$lang['text_canceled'] 	  	        			 = '取消';
$lang['text_加载'] 	  	        		         = '加载中 ...';
$lang['text_change'] 	  	        			 = '改变';
$lang['text_加载_locations'] 	  		         = '加载库位 ...';
$lang['text_加载_product'] 	  	    		     = '加载产品 ...';
$lang['text_加载_checkin'] 	  	    		     = '加载入库 ...';
$lang['text_print_title']            		     = '入库ID(#%s)';
$lang['text_checkin_rapid_hint'] 	  	         = '入库ID / 追踪号';
$lang['text_checkin_edit_title'] 	  	         = '入库编辑(#%s)';
$lang['text_code_hint'] 	  	    			 = 'UPC / SKU / ASIN / 产品名称';
$lang['text_checkin_scan_hint'] 	  	         = 'UPC / SKU / ASIN / 产品名称';
$lang['text_checkin_description']				 = '显示所有入库列表';
$lang['text_checkin_add_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;入库添加成功';
$lang['text_checkin_edit_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;入库编辑成功';
$lang['text_rapid_checkin_add_success'] 		 = '<i class="fa fa-check-circle-o"></i>&nbsp;快速入库编辑成功';
$lang['text_checkin_delete_success']    		 = '<i class="fa fa-check-circle-o"></i>&nbsp;入库删除成功';
$lang['text_confirm_delete']            		 = '你确认要删除这条入库记录?';
$lang['text_checkin_is_completed']               = '<i class="fa fa-check-circle-o"></i>&nbsp;入库已完成';

// Tab
$lang['tab_general'] 	        	    		 = '一般';
$lang['tab_fee'] 	        	        		 = '费用';
$lang['tab_file'] 	        	        		 = '文件';
$lang['tab_note'] 	        	        		 = '笔记';

// Button
$lang['button_select_file'] 	        		 = '选择文件';

// Column
$lang['column_checkin_id'] 	        	         = '入库ID(#)';
$lang['column_name'] 	        	    		 = '名字';
$lang['column_product_name'] 	        	     = '产品名称';
$lang['column_upc'] 	        	     		 = 'UPC';
$lang['column_sku'] 	        	             = 'SKU';
$lang['column_loc'] 	        	             = 'Loc';
$lang['column_qty'] 	        	             = 'Qty';
$lang['column_quantity'] 	        	         = '数量';
$lang['column_amount'] 	        	    		 = '总量';
$lang['column_location'] 	        			 = '库位';
$lang['column_tracking']        				 = '追踪号';
$lang['column_description']         			 = '描述';
$lang['column_status'] 	  	        			 = '状态';
$lang['column_date_added'] 	        			 = '添加日期';
$lang['column_action'] 	  	        			 = '操作';
$lang['column_product_name'] 	    			 = '产品名称';
$lang['column_upc'] 	    					 = 'UPC';
$lang['column_sku'] 	    					 = 'SKU';
$lang['column_batch'] 	    				 	 = '批次';
$lang['column_quantity'] 	    				 = '数量';
$lang['column_file'] 	    		    		 = '文件';

// Entry
$lang['entry_checkin_id'] 	  	    	 		 = '入库ID(#)';
$lang['entry_location'] 	  	    	 		 = '库位';
$lang['entry_tracking'] 	  	    	 		 = '追踪号';
$lang['entry_status'] 	  	        	 		 = '状态';
$lang['entry_note'] 	  	        	 		 = '笔记';
$lang['entry_date_added'] 	  	        	     = '添加日期';

// Error 
$lang['error_code_empty'] 	  	                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;代码为空';
$lang['error_checkin_status_invalid'] 	  	     = '<i class="fa fa-exclamation-triangle"></i>&nbsp;这条入库记录被删除或者已经完成';
$lang['error_product_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;没有找到产品';
$lang['error_select_checkin_first']              = '<i class="fa fa-exclamation-triangle"></i>&nbsp;请先选择入库记录';
$lang['error_checkin_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;入库记录没有找到';
$lang['error_tracking_is_used']                  = '<i class="fa fa-exclamation-triangle"></i>&nbsp;追踪号<strong>%s</strong>已经被使用';
$lang['error_checkin_product_required']          = '<i class="fa fa-exclamation-triangle"></i>&nbsp;入库产品是必须的';
$lang['error_checkin_product_quantity_format']   = '<i class="fa fa-exclamation-triangle"></i>&nbsp;产品<strong>%s</strong>数量不是一个正整数';
$lang['error_checkin_product_location_required'] = '<i class="fa fa-exclamation-triangle"></i>&nbsp;产品<strong>%s</strong>库位没有填写';
$lang['error_checkin_already_acompleted']        = '<i class="fa fa-exclamation-triangle"></i>&nbsp;入库已经完成';
$lang['error_checkin_fee_row_required']          = '<i class="fa fa-exclamation-triangle"></i>&nbsp;入库费用在<strong>%s</strong>行是必须的';








