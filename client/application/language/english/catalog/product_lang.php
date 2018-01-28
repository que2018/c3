<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_upc'] 	  	                 	  	= 'upc';
$lang['text_sku'] 	  	                 	  	= 'sku';
$lang['text_asin'] 	  	                 	  	= 'asin';
$lang['text_name'] 	  	                 	  	= 'name';
$lang['text_price'] 	  	             	  	= 'price';
$lang['text_quantity'] 	  	             	  	= 'quantity';
$lang['text_length'] 	  	             	  	= 'length';
$lang['text_weight'] 	  	             	  	= 'weight';
$lang['text_height'] 	  	             	  	= 'height';
$lang['text_catalog'] 	  	             	  	= 'Catalog';
$lang['text_product'] 	  	             	  	= 'Product';
$lang['text_refresh'] 	  	            		= 'refresh';
$lang['text_update'] 	  	            		= 'update';
$lang['text_checkin'] 	  	            		= 'checkin';
$lang['text_checkout'] 	  	            		= 'checkout';
$lang['text_add'] 	  	             			= 'add';
$lang['text_edit'] 	  	             			= 'edit';
$lang['text_delete'] 	  	             		= 'delete';
$lang['text_save'] 	  	             			= 'save';
$lang['text_cancel'] 	  	             		= 'cancel';
$lang['text_export'] 	  	             		= 'export';
$lang['text_import_product'] 	  	            = 'Import Product';
$lang['text_product_list'] 	  	         	  	= 'Product List';
$lang['text_product_add'] 	  	         	  	= 'Add Product';
$lang['text_product_edit'] 	  	         	  	= 'Edit Product';
$lang['text_product_view'] 	  	         	  	= 'View Product';
$lang['text_length_class'] 	  	         	  	= 'length class';
$lang['text_weight_class'] 	  	         	  	= 'weight　class';
$lang['text_shipping_provider'] 	  	 	  	= 'shipping provider';
$lang['text_shipping_method'] 	  	     	  	= 'shipping method';
$lang['text_add_new_product'] 	  	     	  	= 'Add a new product';
$lang['text_import_product_description'] 	  	= 'Import product from excel';
$lang['text_confirm_delete'] 	  	     	  	= 'Are you sure to delete this product?';
$lang['text_product_list_description'] 		  	= 'Display All Products';
$lang['text_product_add_success'] 	     	  	= '<i class="fa fa-check-circle-o"></i>&nbsp;product add success';
$lang['text_product_edit_success'] 	     	  	= '<i class="fa fa-check-circle-o"></i>&nbsp;product edit success';
$lang['text_product_delete_success'] 	 	  	= '<i class="fa fa-check-circle-o"></i>&nbsp;product delete success';
$lang['text_loading_shipping_method'] 	 	  	= 'Loading shipping methods ...';
$lang['text_confirm_delete'] 	 	  	        = 'Are you sure to delete this product?';
$lang['text_drop_file_and_upload'] 	            = 'Drop files here or click to upload';
$lang['text_only_excel_will_accepted'] 	        = '( only Excel file will be accepted )';
$lang['text_rows_imported'] 	 	  	        = '<strong>Total %s rows are imported</strong>';

// Tab
$lang['tab_fee'] 	  	             	  	    = 'Fee';

// Column
$lang['column_name'] 	  	             	  	= 'Name';
$lang['column_client'] 	  	             	  	= 'Client';
$lang['column_upc'] 	  	             	  	= 'UPC';
$lang['column_asin'] 	  	             	  	= 'ASIN';
$lang['column_sku'] 	  	             	  	= 'SKU';
$lang['column_quantity'] 	  	         	  	= 'Quantity';
$lang['column_type'] 	  	         	  	    = 'Type';
$lang['column_amount'] 	  	         	  	    = 'Amount';
$lang['column_action'] 	  	             	  	= 'Action';
$lang['column_length_short'] 	  	            = 'L';
$lang['column_width_short'] 	  	            = 'W';
$lang['column_height_short'] 	  	            = 'H';
$lang['column_weight_short'] 	  	            = 'W';

// Entry
$lang['entry_upc'] 	  	                 	  	= 'UPC';
$lang['entry_sku'] 	  	                 	  	= 'SKU';
$lang['entry_asin'] 	  	             	  	= 'ASIN';
$lang['entry_name'] 	  	             	  	= 'Name';
$lang['entry_price'] 	  	             	  	= 'Price';
$lang['entry_quantity'] 	  	         	  	= 'Quantity';
$lang['entry_client'] 	  	         	  		= 'Client';
$lang['entry_length'] 	  	             	  	= 'Length';
$lang['entry_width'] 	  	             	  	= 'Width';
$lang['entry_height'] 	  	             	  	= 'Height';
$lang['entry_weight'] 	  	             	  	= 'Weight';
$lang['entry_mode'] 	  	             	  	= 'Mode';
$lang['entry_alert_quantity'] 	  	            = 'Alert Quantity';
$lang['entry_length_class'] 	  	     	 	= 'Length Class';
$lang['entry_weight_class'] 	  	     	  	= 'Weight Class';
$lang['entry_shipping_provider'] 	  	      	= 'Shipping Provider';
$lang['entry_shipping_service'] 	  	        = 'Shipping Service';

// Error 
$lang['error_row_name']                         = 'row %s: name is empty';
$lang['error_row_upc']                          = 'row %s: upc is empty';
$lang['error_row_sku']                          = 'row %s: sku is empty';
$lang['error_row_price']                        = 'row %s: price is empty';
$lang['error_row_length']                       = 'row %s: length is empty';
$lang['error_row_width']                        = 'row %s: width is empty';
$lang['error_row_height']                       = 'row %s: height is empty';
$lang['error_row_weight']                       = 'row %s: weight is empty';
$lang['error_row_sku_exist']                    = 'row %s: sku is exist';
$lang['error_sku_is_used']                      = '<i class="fa fa-exclamation-triangle"></i>&nbsp;sku has been used in another product';
$lang['error_can_not_delete_inventory_exist']   = '<i class="fa fa-exclamation-triangle"></i>&nbsp;This product can not be deleted because the inventory exists';
$lang['error_can_not_delete_transfer_exist']    = '<i class="fa fa-exclamation-triangle"></i>&nbsp;This product can not be deleted because the transfer exists';




