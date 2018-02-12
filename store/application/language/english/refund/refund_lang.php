<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_title'] 	  	        			 = 'Return List';
$lang['text_return'] 	  	        			 = 'Return';
$lang['text_location'] 	  	    				 = 'location';
$lang['text_status'] 	  	    				 = 'status';
$lang['text_tracking'] 	  	    				 = 'tracking';
$lang['text_add'] 	  	        	 	  	     = 'add';
$lang['text_edit'] 	  	        	 	  		 = 'edit';
$lang['text_delete'] 	  	        	 	  	 = 'delete';
$lang['text_save'] 	  	        	 	  	 	 = 'save';
$lang['text_cancel'] 	  	        	 	  	 = 'cancel';
$lang['text_return_fee'] 	  	        		 = 'return fee';
$lang['text_return_product'] 	  	    		 = 'return product';
$lang['text_return_add'] 	  	    			 = 'Add Return';
$lang['text_return_edit'] 	  	    			 = 'Edit Return';
$lang['text_return_scan'] 	  	    			 = 'Scan Return';
$lang['text_return_rapid'] 	  	    		     = 'Rapid Return';
$lang['text_return_list'] 	  	    			 = 'Return List';
$lang['text_pending'] 	  	        			 = 'Pending';
$lang['text_completed'] 	  	    			 = 'Completed';
$lang['text_canceled'] 	  	        			 = 'Canceled';
$lang['text_pending'] 	  	        			 = 'Pending';
$lang['text_completed_damage'] 	  	             = 'Completed In Damage';
$lang['text_completed_inventory'] 	  	         = 'Completed In Inventory';
$lang['text_canceled'] 	  	        			 = 'Canceled';
$lang['text_loading'] 	  	        		     = 'loading ...';
$lang['text_change'] 	  	        			 = 'Change';
$lang['text_loading_locations'] 	  		     = 'loading locations ...';
$lang['text_loading_product'] 	  	    		 = 'loading product ...';
$lang['text_loading_return'] 	  	    		 = 'loading return ...';
$lang['text_print_title']            		     = 'Return ID(#%s)';
$lang['text_return_rapid_hint'] 	  	         = 'Return ID / Tracking Number';
$lang['text_return_edit_title'] 	  	         = 'Edit Return(#%s)';
$lang['text_code_hint'] 	  	    			 = 'UPC / SKU / ASIN / Proudct Name';
$lang['text_return_description']				 = 'Display all the return records';
$lang['text_return_add_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;return add success';
$lang['text_return_edit_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;return edit success';
$lang['text_rapid_return_add_success'] 		 	 = '<i class="fa fa-check-circle-o"></i>&nbsp;rapid return add success';
$lang['text_return_delete_success']    		     = '<i class="fa fa-check-circle-o"></i>&nbsp;return delete success';
$lang['text_confirm_delete']            		 = 'Are you sure to delete this record?';
$lang['text_return_is_completed']                = '<i class="fa fa-check-circle-o"></i>&nbsp;return is completed';

// Tab
$lang['tab_general'] 	        	    		 = 'General';
$lang['tab_fee'] 	        	        		 = 'Fee';
$lang['tab_file'] 	        	        		 = 'File';
$lang['tab_note'] 	        	        		 = 'Note';

// Button
$lang['button_select_file'] 	        		 = 'Select file';

// Column
$lang['column_return_id'] 	        	         = 'Return ID(#)';
$lang['column_name'] 	        	    		 = 'Name';
$lang['column_product_name'] 	        	     = 'Product Name';
$lang['column_upc'] 	        	     		 = 'UPC';
$lang['column_sku'] 	        	             = 'SKU';
$lang['column_loc'] 	        	             = 'Loc';
$lang['column_qty'] 	        	             = 'Qty';
$lang['column_quantity'] 	        	         = 'Quantity';
$lang['column_amount'] 	        	    		 = 'Amount';
$lang['column_location'] 	        			 = 'Location';
$lang['column_tracking']        				 = 'Tacking';
$lang['column_description']         			 = 'Description';
$lang['column_status'] 	  	        			 = 'Status';
$lang['column_date_added'] 	        			 = 'Date Added';
$lang['column_action'] 	  	        			 = 'Action';
$lang['column_product_name'] 	    			 = 'Product Name';
$lang['column_upc'] 	    					 = 'UPC';
$lang['column_sku'] 	    					 = 'SKU';
$lang['column_quantity'] 	    				 = 'Quantity';
$lang['column_file'] 	    		    		 = 'File';

// Entry
$lang['entry_return_id'] 	  	    	 		 = 'Return ID(#)';
$lang['entry_location'] 	  	    	 		 = 'Location';
$lang['entry_tracking'] 	  	    	 		 = 'Tracking';
$lang['entry_status'] 	  	        	 		 = 'Status';
$lang['entry_note'] 	  	        	 		 = 'Note';

// Error 
$lang['error_code_empty'] 	  	                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Code is empty';
$lang['error_return_status_invalid'] 	  	     = '<i class="fa fa-exclamation-triangle"></i>&nbsp;This return is either canceled or completed';
$lang['error_product_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Product is not found';
$lang['error_select_return_first']              = '<i class="fa fa-exclamation-triangle"></i>&nbsp;please select return record first';
$lang['error_return_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Return record is not found';
$lang['error_tracking_is_used']                  = '<i class="fa fa-exclamation-triangle"></i>&nbsp;The tracking number has been used';
$lang['error_return_product_required']          = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Return product is required';
$lang['error_return_product_quantity_required'] = '<i class="fa fa-exclamation-triangle"></i>&nbsp;The product <strong>%s</strong> has quantity unfilled';
$lang['error_return_product_location_required'] = '<i class="fa fa-exclamation-triangle"></i>&nbsp;The product <strong>%s</strong> has location unfilled';
$lang['error_return_already_acompleted']        = '<i class="fa fa-exclamation-triangle"></i>&nbsp;This return is already completed';








