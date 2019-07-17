<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_inventory'] 	  	           = '库存';
$lang['text_warehouse'] 	  	           = '仓库';
$lang['text_product'] 	  	               = '产品';
$lang['text_location'] 	  	         	   = '库位';
$lang['text_inventory_list'] 	  	       = '库存列表';
$lang['text_inventory_import'] 	  	       = '导入库存';
$lang['text_add'] 	  	         	   	   = '添加';
$lang['text_edit'] 	  	         	   	   = '编辑';
$lang['text_delete'] 	  	         	   = '删除';
$lang['text_save'] 	  	         	   	   = '保存';
$lang['text_bulk_delete'] 	  	           = '批量删除';
$lang['text_cancel'] 	  	         	   = '取消';
$lang['text_export'] 	  	         	   = '导出库存';
$lang['text_batch'] 	  	               = '批次';
$lang['text_quantity'] 	  	               = '数量';
$lang['text_search'] 	  	               = '搜索';
$lang['text_download_sample'] 	  	       = '下载模板';
$lang['text_inventory_add'] 	  	       = '库存添加';
$lang['text_inventory_edit'] 	  	       = '库存编辑';
$lang['text_import_inventory'] 	  	       = '导入库存';
$lang['text_confirm_delete'] 	  	       = '您确定要删除这个库存?';
$lang['text_inventory_list_description']   = '显示所有库存';
$lang['text_import_inventory_description'] = '从excel文件导入库存';
$lang['text_loading_locations']            = '加载库位 ..';
$lang['text_only_excel_will_accepted'] 	   = '( 只有Excel文件才能被接受 )';
$lang['text_drop_file_and_upload'] 	       = '拖入文件或者点击上传';
$lang['text_confirm_delete'] 	           = '您确定要删除这个库存?';
$lang['text_inventory_add_success'] 	   = '<i class="fa fa-check-circle-o"></i>&nbsp;库存添加成功';
$lang['text_inventory_edit_success'] 	   = '<i class="fa fa-check-circle-o"></i>&nbsp;库存编辑成功';
$lang['text_inventory_delete_success'] 	   = '<i class="fa fa-check-circle-o"></i>&nbsp;库存删除成功';
$lang['text_rows_imported'] 	           = '<strong>共%s行被导入</strong>';
$lang['text_no_rows_imported'] 	           = '<strong>没有数据被导入</strong>';

// Column
$lang['column_name'] 	  	               = '名称';
$lang['column_upc'] 	  	               = 'UPC';
$lang['column_sku'] 	  	               = 'SKU';
$lang['column_product'] 	  	           = '名称';
$lang['column_location'] 	  	           = '库位';
$lang['column_client'] 	  	           	   = '客户';
$lang['column_batch'] 	  	           	   = '批次';
$lang['column_quantity'] 	  	           = '数量';
$lang['column_date_added'] 	  	           = '添加时间';
$lang['column_date_modified'] 	  	       = '修改时间';

// Button
$lang['button_batch'] 	  	               = '批次';
$lang['button_non_batch'] 	  	           = '无批次';

// Entry
$lang['entry_client'] 	  	               = '客户';
$lang['entry_product'] 	  	               = '产品';
$lang['entry_quantity'] 	  	           = '数量';
$lang['entry_location'] 	  	           = '库位';
$lang['entry_warehouse'] 	  	           = '仓库';
$lang['entry_batch'] 	  	           	   = '批次';
$lang['entry_client'] 	  	           	   = '客户';
$lang['entry_sku'] 	  	                   = 'SKU';
$lang['entry_upc'] 	  	                   = 'UPC';

// 错误
$lang['error_row_sku_empty'] 	  	       = '行%s:sku是空的';
$lang['error_row_location_empty'] 	  	   = '行%s:库位是空的';
$lang['error_row_quantity_empty'] 	  	   = '行%s:数量是空的';
$lang['error_row_sku_not_found'] 	  	   = '行%s:sku<strong>%s</strong>没有找到';
$lang['error_update_quantity_error'] 	   = '更新数量失败';
$lang['error_row_location_not_found'] 	   = '行%s:库位<strong>%s</strong>没有找到';
$lang['error_row_duplicated_data'] 	  	   = '行%s:库存所有客户重复: 现在有多与一行的数据有相同的产品和库位';
$lang['error_inventory_add_unique'] 	   = '<i class="fa fa-exclamation-triangle"></i>&nbsp;库存有相同的产品, 库位和批次已被使用';





