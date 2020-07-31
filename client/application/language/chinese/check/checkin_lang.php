<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_title'] 	  	        			 = '入库列表';
$lang['text_checkin'] 	  	        			 = '入库';
$lang['text_import_checkin'] 	  	             = '入库导入';
$lang['text_location'] 	  	    				 = '库位';
$lang['text_status'] 	  	    				 = '状态';
$lang['text_tracking'] 	  	    				 = '追踪号';
$lang['text_checkin_fee'] 	  	        		 = '入库费用';
$lang['text_checkin_product'] 	  	    		 = '入库产品';
$lang['text_checkin_add'] 	  	    			 = '添加入库';
$lang['text_checkin_edit'] 	  	    			 = '编辑入库';
$lang['text_checkin_view'] 	  	    			 = '查看入库';
$lang['text_checkin_rapid'] 	  	    		 = '快速入库';
$lang['text_checkin_list'] 	  	    			 = '入库列表';
$lang['text_import_chcekin'] 	  	    	     = '入库导入';
$lang['text_pending'] 	  	        			 = '待处理';
$lang['text_completed'] 	  	    			 = '完成';
$lang['text_canceled'] 	  	        			 = '已取消';
$lang['text_pending'] 	  	        			 = '待处理';
$lang['text_completed'] 	  	    			 = '完成';
$lang['text_canceled'] 	  	        			 = '已取消';
$lang['text_loading'] 	  	        		     = '加载 ...';
$lang['text_change'] 	  	        			 = '修改';
$lang['text_loading_locations'] 	  		     = '加载库位 ...';
$lang['text_loading_product'] 	  	    		 = '加载产品 ...';
$lang['text_loading_checkin'] 	  	    		 = '加载入库 ...';
$lang['text_print_title']            		     = '入库ID(#%s)';
$lang['text_checkin_rapid_hint'] 	  	         = '入库ID / 追踪号';
$lang['text_checkin_edit_title'] 	  	         = '入库编辑(#%s)';
$lang['text_code_hint'] 	  	    			 = 'UPC / SKU / ASIN / 产品名称';
$lang['text_checkin_description']				 = '展示所有入库记录';
$lang['text_import_checkin_description'] 	     = '从excel导入入库表单';
$lang['text_drop_file_and_upload'] 	     		 = '拖动或者点击上传';
$lang['text_download_sample_file'] 	  	         = '下载式样文件';
$lang['text_only_excel_will_accepted'] 	 		 = '( 只有excel允许上传 )';
$lang['text_checkin_add_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;入库添加成功';
$lang['text_checkin_edit_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;入库编辑成功';
$lang['text_rapid_checkin_add_success'] 		 = '<i class="fa fa-check-circle-o"></i>&nbsp;快速入库添加成功';
$lang['text_checkin_delete_success']    		 = '<i class="fa fa-check-circle-o"></i>&nbsp;入库删除成功';
$lang['text_confirm_delete']            		 = '你确认要删除这个记录?';
$lang['text_checkin_is_completed']               = '<i class="fa fa-check-circle-o"></i>&nbsp;入库已经完成';

// Tab
$lang['tab_general'] 	        	    		 = '通用';
$lang['tab_fee'] 	        	        		 = '费用';
$lang['tab_file'] 	        	        		 = '文件';
$lang['tab_note'] 	        	        		 = '备注';

// Button
$lang['button_select_file'] 	        		 = '选择文件';

// Column
$lang['column_checkin_id'] 	        	         = '入库ID(#)';
$lang['column_name'] 	        	    		 = '名称';
$lang['column_product_name'] 	        	     = '产品名称';
$lang['column_upc'] 	        	     		 = 'UPC';
$lang['column_sku'] 	        	             = 'SKU';
$lang['column_quantity'] 	        	         = '数量';
$lang['column_quantity_draft'] 	        	     = '起草数量';
$lang['column_amount'] 	        	    		 = '量';
$lang['column_location'] 	        			 = '库位';
$lang['column_tracking']        				 = '追踪号';
$lang['column_description']         			 = '描述';
$lang['column_status'] 	  	        			 = '状态';
$lang['column_date_added'] 	        			 = '添加时间';
$lang['column_action'] 	  	        			 = '操作';
$lang['column_product_name'] 	    			 = '产品名称';
$lang['column_upc'] 	    					 = 'UPC';
$lang['column_sku'] 	    					 = 'SKU';
$lang['column_quantity'] 	    				 = '数量';
$lang['column_file'] 	    		    		 = '文件';

// Entry
$lang['entry_checkin_id'] 	  	    	 		 = '入库ID(#)';
$lang['entry_location'] 	  	    	 		 = '库位';
$lang['entry_tracking'] 	  	    	 		 = '追踪号';
$lang['entry_status'] 	  	        	 		 = '状态';
$lang['entry_note'] 	  	        	 		 = '备注';

// Error 
$lang['error_code_empty'] 	  	                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;代码是空的';
$lang['error_checkin_status_invalid'] 	  	     = '<i class="fa fa-exclamation-triangle"></i>&nbsp;这个入库记录已经已取消或者完成';
$lang['error_product_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;产品没有找到';
$lang['error_select_checkin_first']              = '<i class="fa fa-exclamation-triangle"></i>&nbsp;请先选择入库记录';
$lang['error_checkin_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;入库记录没有找到';
$lang['error_checkin_already_acompleted']        = '<i class="fa fa-exclamation-triangle"></i>&nbsp;入库已经完成';
$lang['error_file_type_not_excel'] 	  	 		 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;文件不是excel';
$lang['error_row_data'] 	  	         		 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;第<strong>%s</strong>行有无效数据';
$lang['error_sku_not_found'] 	  	     		 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;第%s行有sku<strong>%s</strong>不存在';
$lang['error_checkin_internal'] 	  	     	 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;系统内部错误';










