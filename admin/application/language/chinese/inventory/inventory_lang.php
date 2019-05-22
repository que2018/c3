<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_inventory'] 	  	           = 'Inventory';
$lang['text_warehouse'] 	  	           = 'Warehouse';
$lang['text_product'] 	  	               = '产品';
$lang['text_location'] 	  	         	   = 'location';
$lang['text_inventory_list'] 	  	       = 'Inventory 列表';
$lang['text_inventory_import'] 	  	       = '导入 Inventory';
$lang['text_add'] 	  	         	   	   = '添加';
$lang['text_edit'] 	  	         	   	   = '编辑';
$lang['text_delete'] 	  	         	   = 'Delete';
$lang['text_save'] 	  	         	   	   = 'Save';
$lang['text_bulk_delete'] 	  	           = 'Bulk Delete';
$lang['text_cancel'] 	  	         	   = '取消';
$lang['text_export'] 	  	         	   = '导出库存';
$lang['text_batch'] 	  	               = 'batch';
$lang['text_quantity'] 	  	               = '数量';
$lang['text_search'] 	  	               = 'Search';
$lang['text_download_sample'] 	  	       = '下载 模板';
$lang['text_inventory_add'] 	  	       = 'Inventory 添加';
$lang['text_inventory_edit'] 	  	       = 'Inventory 编辑';
$lang['text_import_inventory'] 	  	       = '导入 Inventory';
$lang['text_confirm_delete'] 	  	       = '您确定要 删除 这个 inventory?';
$lang['text_inventory_list_description']   = '显示 所有 Inventories';
$lang['text_import_inventory_description'] = '导入 inventory 从 excel file';
$lang['text_loading_locations']            = 'loading locations ..';
$lang['text_only_excel_will_accepted'] 	   = '( 只有Excel文件才能被接受 )';
$lang['text_drop_file_and_upload'] 	       = '拖入文件或者点击上传';
$lang['text_confirm_delete'] 	           = '您确定要 删除 这个 inventory?';
$lang['text_inventory_add_success'] 	   = '<i class="fa fa-check-circle-o"></i>&nbsp;Inventory 添加 成功';
$lang['text_inventory_edit_success'] 	   = '<i class="fa fa-check-circle-o"></i>&nbsp;Inventory 编辑 成功';
$lang['text_inventory_delete_success'] 	   = '<i class="fa fa-check-circle-o"></i>&nbsp;Inventory 删除 成功';
$lang['text_rows_imported'] 	           = '<strong>共%s行 被导入</strong>';
$lang['text_no_rows_imported'] 	           = '<strong>No row is imported</strong>';

// Column
$lang['column_name'] 	  	               = '名称';
$lang['column_upc'] 	  	               = 'UPC';
$lang['column_sku'] 	  	               = 'SKU';
$lang['column_product'] 	  	           = '名称';
$lang['column_location'] 	  	           = 'Location';
$lang['column_client'] 	  	           	   = '客户';
$lang['column_batch'] 	  	           	   = 'Batch';
$lang['column_quantity'] 	  	           = '数量';
$lang['column_date_added'] 	  	           = 'Date Added';
$lang['column_date_modified'] 	  	       = 'Date Modified';

// Button
$lang['button_batch'] 	  	               = 'batch';
$lang['button_non_batch'] 	  	           = 'non batch';

// Entry
$lang['entry_client'] 	  	               = '客户';
$lang['entry_product'] 	  	               = '产品';
$lang['entry_quantity'] 	  	           = '数量';
$lang['entry_location'] 	  	           = 'Location';
$lang['entry_warehouse'] 	  	           = 'Warehouse';
$lang['entry_batch'] 	  	           	   = 'Batch';
$lang['entry_client'] 	  	           	   = '客户';
$lang['entry_sku'] 	  	                   = 'SKU';
$lang['entry_upc'] 	  	                   = 'UPC';

// Error
$lang['error_row_sku_empty'] 	  	       = 'row%s: sku 是空的';
$lang['error_row_location_empty'] 	  	   = 'row%s: location 是空的';
$lang['error_row_quantity_empty'] 	  	   = 'row%s: 数量 是空的';
$lang['error_row_sku_not_found'] 	  	   = 'row%s: sku <strong>%s</strong> is not found';
$lang['error_update_quantity_error'] 	   = 'Update 数量 fail';
$lang['error_row_location_not_found'] 	   = 'row%s: location <strong>%s</strong> is not found';
$lang['error_row_duplicated_data'] 	  	   = 'row%s: inventory data duplicated: thare are more than one row of same 产品 and location';
$lang['error_inventory_add_unique'] 	   = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Inventory with same 产品, location and batch has been used';





