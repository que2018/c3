<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Text
$lang['text_title'] 	  	        			 = 'Checkin List';
$lang['text_checkin'] 	  	        			 = 'Checkin';
$lang['text_location'] 	  	    				 = 'location';
$lang['text_status'] 	  	    				 = 'status';
$lang['text_tracking'] 	  	    				 = 'tracking';
$lang['text_checkin_fee'] 	  	        		 = 'checkin fee';
$lang['text_checkin_product'] 	  	    		 = 'checkin product';
$lang['text_checkin_add'] 	  	    			 = 'Add Checkin';
$lang['text_checkin_edit'] 	  	    			 = 'Edit Checkin';
$lang['text_checkin_view'] 	  	    			 = 'View Checkin';
$lang['text_checkin_rapid'] 	  	    		 = 'Rapid Checkin';
$lang['text_checkin_list'] 	  	    			 = 'Checkin List';
$lang['text_import_checkin'] 	  	    	     = 'Checkin Import';
$lang['text_pending'] 	  	        			 = 'Pending';
$lang['text_completed'] 	  	    			 = 'Completed';
$lang['text_canceled'] 	  	        			 = 'Canceled';
$lang['text_pending'] 	  	        			 = 'Pending';
$lang['text_completed'] 	  	    			 = 'Completed';
$lang['text_canceled'] 	  	        			 = 'Canceled';
$lang['text_loading'] 	  	        		     = 'loading ...';
$lang['text_change'] 	  	        			 = 'Change';
$lang['text_loading_locations'] 	  		     = 'loading locations ...';
$lang['text_loading_product'] 	  	    		 = 'loading product ...';
$lang['text_loading_checkin'] 	  	    		 = 'loading checkin ...';
$lang['text_print_title']            		     = 'Checkin ID(#%s)';
$lang['text_checkin_rapid_hint'] 	  	         = 'Checkin ID / Tracking Number';
$lang['text_checkin_edit_title'] 	  	         = 'Checkin Edit(#%s)';
$lang['text_code_hint'] 	  	    			 = 'UPC / SKU / ASIN / Proudct Name';
$lang['text_checkin_description']				 = 'Display all the checkin records';
$lang['text_import_checkin_description'] 	 	 = 'Import checkin data from Excel file';
$lang['text_drop_file_and_upload'] 	     		 = 'Drop files here or click to upload';
$lang['text_download_sample_file'] 	  	         = 'download sample file';
$lang['text_only_excel_will_accepted'] 	 		 = '( only Excel file will be accepted )';
$lang['text_checkin_add_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;checkin add success';
$lang['text_checkin_edit_success']				 = '<i class="fa fa-check-circle-o"></i>&nbsp;checkin edit success';
$lang['text_rapid_checkin_add_success'] 		 = '<i class="fa fa-check-circle-o"></i>&nbsp;rapid checkin add success';
$lang['text_checkin_delete_success']    		 = '<i class="fa fa-check-circle-o"></i>&nbsp;checkin delete success';
$lang['text_confirm_delete']            		 = 'Are you sure to delete this record?';
$lang['text_checkin_is_completed']               = '<i class="fa fa-check-circle-o"></i>&nbsp;checkin is completed';

// Tab
$lang['tab_general'] 	        	    		 = 'General';
$lang['tab_fee'] 	        	        		 = 'Fee';
$lang['tab_file'] 	        	        		 = 'File';
$lang['tab_note'] 	        	        		 = 'Note';

// Button
$lang['button_select_file'] 	        		 = 'Select file';

// Column
$lang['column_checkin_id'] 	        	         = 'Check ID(#)';
$lang['column_name'] 	        	    		 = 'Name';
$lang['column_product_name'] 	        	     = 'Product Name';
$lang['column_upc'] 	        	     		 = 'UPC';
$lang['column_sku'] 	        	             = 'SKU';
$lang['column_quantity'] 	        	         = 'Quantity';
$lang['column_quantity_draft'] 	        	     = 'Draft Quantity';
$lang['column_amount'] 	        	    		 = 'Amount';
$lang['column_location'] 	        			 = 'Location';
$lang['column_tracking']        				 = 'Tacking / Reference';
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
$lang['entry_checkin_id'] 	  	    	 		 = 'Checkin ID(#)';
$lang['entry_location'] 	  	    	 		 = 'Location';
$lang['entry_tracking'] 	  	    	 		 = 'Tracking / Refer';
$lang['entry_status'] 	  	        	 		 = 'Status';
$lang['entry_note'] 	  	        	 		 = 'Note';

// Error 
$lang['error_code_empty'] 	  	                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Code is empty';
$lang['error_checkin_status_invalid'] 	  	     = '<i class="fa fa-exclamation-triangle"></i>&nbsp;This checkin is either canceled or completed';
$lang['error_product_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Product is not found';
$lang['error_select_checkin_first']              = '<i class="fa fa-exclamation-triangle"></i>&nbsp;please select checkin record first';
$lang['error_checkin_not_found']                 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;Checkin record is not found';
$lang['error_checkin_already_acompleted']        = '<i class="fa fa-exclamation-triangle"></i>&nbsp;checkin is already completed';
$lang['error_file_type_not_excel'] 	  	 		 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;file type is not excel';
$lang['error_row_data'] 	  	         		 = '<i class="fa fa-exclamation-triangle"></i>&nbsp;the <strong>%sth</strong> row has invalid data';
$lang['error_checkin_internal'] 	  	         = '<i class="fa fa-exclamation-triangle"></i>&nbsp;internal system error';






