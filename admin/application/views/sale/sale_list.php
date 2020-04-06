<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_order'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('text_order'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_order_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_export'); ?>" onclick="export_sale(this)" class="btn btn-success btn-download"><i class="fa fa-download"></i></button>
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_bulk_print'); ?>" class="btn btn-info btn-bulk-print"><i class="fa fa-print"></i></button>
    <a href="<?php echo $add; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div id="alerts">
	    <div id="alert-error" class="alert alert-danger" style="display:none;"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><span></span></div>
	  </div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_order_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12"><input name="sale_id" class="form-control" autocomplete="new-password" value="<?php echo $filter_sale_id; ?>" placeholder="<?php echo $this->lang->line('entry_order_id'); ?>" ></div>
				</div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12"><input name="store_sale_id" class="form-control" autocomplete="new-password" value="<?php echo $filter_store_sale_id; ?>" placeholder="<?php echo $this->lang->line('entry_store_order_id'); ?>" ></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <select name="status" class="form-control" autocomplete="new-password">
					  <?php if($filter_status == 1) { ?>
					  <option value=""></option>
					  <option value="unsolved" selected><?php echo $this->lang->line('text_unsolved'); ?></option>
					  <option value="checking_out"><?php echo $this->lang->line('text_checking_out'); ?></option>
					  <option value="completed"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 2) { ?>
					  <option value=""></option>
					  <option value="unsolved"><?php echo $this->lang->line('text_unsolved'); ?></option>
					  <option value="checking_out" selected><?php echo $this->lang->line('text_checking_out'); ?></option>
					  <option value="completed"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 3) { ?>
					  <option value=""></option>
					  <option value="unsolved"><?php echo $this->lang->line('text_unsolved'); ?></option>
					  <option value="checking_out"><?php echo $this->lang->line('text_checking_out'); ?></option>
					  <option value="completed" selected><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else { ?>
					  <option value=""></option>
					  <option value="unsolved"><?php echo $this->lang->line('text_unsolved'); ?></option>
					  <option value="checking_out"><?php echo $this->lang->line('text_checking_out'); ?></option>
					  <option value="completed"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } ?>
					</select>
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12"><input name="tracking" class="form-control" autocomplete="new-password" value="<?php echo $filter_tracking; ?>" placeholder="<?php echo $this->lang->line('entry_tracking'); ?>" ></div>
			    </div>
			  </div>
		    </div>
		  </div>
		  <div id="table-content">
		    <div class="table-responsive">
		      <table class="table table-striped table-bordered table-hover table-sale">
			    <thead>
			      <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
			      <?php if($sort == 'sale.id') { ?>
				  <th style="width: 8%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 8%;" class="sorting">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'sale.store_sale_id') { ?>
				  <th style="width: 20.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_store_sale_id; ?>"><?php echo $this->lang->line('column_store_order_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20.6%;" class="sorting">
					<a href="<?php echo $sort_store_sale_id; ?>"><?php echo $this->lang->line('column_store_order_id'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'sale.tracking') { ?>
				  <th style="width: 20.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20.6%;" class="sorting">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'sale.status_id') { ?>
				  <th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'sale.date_added') { ?>
				  <th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				  </th>
				  <?php } ?>
				  <th></th>
			    </thead>
			    <tbody>
				<?php if($sales) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($sales as $sale) { ?>
					<tr>
                      <td class="text-center">
					    <input type="checkbox" name="selected[]" value="<?php echo $sale['sale_id']; ?>" />
					  </td>
					  <td>
						<span>#<?php echo $sale['sale_id']; ?></span>
						<div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
						  <table class="table table-product">
						    <thead>
							  <th style="width: 35%;"><?php echo $this->lang->line('column_name'); ?></th>
							  <th style="width: 35%;"><?php echo $this->lang->line('column_sku'); ?></th>
							  <th style="width: 30%;"><?php echo $this->lang->line('column_qty'); ?></th>
							</thead>
							<tbody>
							  <?php foreach($sale['sale_products'] as $sale_product) { ?>
							  <tr>
							    <td><?php echo $sale_product['name']; ?></td>
							    <td><?php echo $sale_product['sku']; ?></td>
							    <td><?php echo $sale_product['quantity']; ?></td>
							  </tr>
							  <?php } ?>
							</tbody>
						  </table>
						  <table class="table table-shipping">
						    <tbody>
							  <tr>
							    <td colspan=4 class="text-right">
								  <?php if($sale['name']) { ?>
							      <span class="name"><?php echo $sale['name']; ?></span>
								  <?php } ?>
							      <?php if($sale['shipping']) { ?>
							      <span class="shipping"><?php echo $sale['shipping']; ?></span>
								  <?php } ?>
							      <?php if($sale['store_name']) { ?>
							      <span class="store"><?php echo $sale['store_name']; ?></span>
								  <?php } ?>
							    </td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><?php echo $sale['store_sale_id']; ?></td>
					  <td class="tracking-td" ondblclick="active_tracking(this)" data-offset="<?php echo $offset; ?>" >
					    <?php if($sale['tracking']) { ?>
					      <span class="tracking"><?php echo $sale['tracking']; ?></span>
					    <?php } ?>
					  </td>
					  <td class="status">
						<?php if(!$sale['checkout']) { ?>
						  <div class="input-group">
						    <span class="checkout-status unsolved"><?php echo $this->lang->line('text_unsolved'); ?></span>				        
						    <span class="btn-reverse" onclick="change_sale_status(this, <?php echo $sale['sale_id']; ?>)"><i class="fa fa-refresh"></i></span>
						  </div>
						<?php } else if($sale['checkout']['status'] == 1) { ?>  
						  <div class="input-group">
						    <span class="checkout-status checking-out"><?php echo $this->lang->line('text_checking_out'); ?></span>				        
						    <span class="btn-reverse" onclick="change_sale_status(this, <?php echo $sale['sale_id']; ?>)"><i class="fa fa-refresh"></i></span>
						  </div>
					    <?php } else { ?>
						  <div class="input-group">
						    <span class="checkout-status completed"><?php echo $this->lang->line('text_completed'); ?></span>				        
						    <span class="btn-reverse" onclick="change_sale_status(this, <?php echo $sale['sale_id']; ?>)"><i class="fa fa-refresh"></i></span>
						  </div>
					    <?php } ?>
					  </td>
					  <td><?php echo $sale['date_added']; ?></td>
					  <td class="text-center">
					    <button onclick="print_label_d(this, <?php echo $sale['sale_id']; ?>)" class="btn btn-success btn-print-d"><i class="fa fa-file-image-o"></i></button>
						<button onclick="print_label_c(this, <?php echo $sale['sale_id']; ?>)" class="btn btn-print-c"><i class="fa fa-print"></i></button>
						<a href="<?php echo $sale['edit']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_sale(this, <?php echo $sale['sale_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>
				      <input type="hidden" name="sale_id" value="<?php echo $sale['sale_id']; ?>" >
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
				<?php } ?>
			    </tbody>			  
		      </table>
		    </div>
		    <div class="pagination-block">
			  <div class="pull-left"><?php echo $results; ?></div>
		      <div class="pull-right"><?php echo $pagination; ?></div>
		    </div>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
function filter_sale() {	
	sale_id     	= $('input[name=\'sale_id\']').val();
	store_sale_id   = $('input[name=\'store_sale_id\']').val();
	status          = $('select[name=\'status\']').val();
	tracking        = $('input[name=\'tracking\']').val();

	url = '<?php echo $filter_url; ?>';

	if(sale_id)
		url += '&filter_sale_id=' + sale_id;
	
	if(store_sale_id)
		url += '&filter_store_sale_id=' + store_sale_id;
	
	if(status)
		url += '&filter_status=' + status;
	
	if(tracking)
		url += '&filter_tracking=' + tracking;
		
	$.ajax({
		url: url,
		dataType: 'html',
		success: function(html) {					
			$('#table-content').html(html);
		}
	});
}
</script>
<script>
function active_tracking(handle) {	
	if(!$(handle).find('input').length) 
	{		
		sale_id = $(handle).closest('tr').find('input[name=\'sale_id\']').val();
		
		if($(handle).find('span').length) {
			value = $(handle).find('span').html();
			html = '<input value=' + value + ' onblur="update_tracking(' + sale_id + ', this)" class="form-control" />';
		} else {
			html = '<input onblur="update_tracking(' + sale_id + ', this)" class="form-control" />';
		}
		
		$(handle).html(html);	
		$(handle).find('input').focus();
	}
}
</script>
<script>
function update_tracking(sale_id, handle) {	
	tracking = $(handle).val();
	
	if(tracking) {
		html = '<span class="tracking">' + tracking + '</span>';
		$(handle).closest('td').html(html);
	} else {
		$(handle).closest('td').html('');
	}
		
	$.ajax({
		url: '<?php echo base_url(); ?>sale/sale_ajax/update_tracking',
		data: 'sale_id=' + sale_id + '&tracking=' + tracking,
		type: 'POST',
		dataType: 'json',
		success: function (json) {
			if(!json.success)
				alert('<?php echo $this->lang->line('error_update_tracking_error'); ?>');
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function change_sale_status(handle, sale_id) {
	$.ajax({
		url: '<?php echo base_url(); ?>sale/sale_ajax/change_status?sale_id=' + sale_id,
		cache: false,
		contentType: false,
		processData: false,
		dataType: 'json',
		beforeSend: function() {
			$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		success: function(json) {
			$(handle).html('<i class="fa fa fa-refresh"></i>');
			
			if(json.success) {
				label = $(handle).closest('.input-group').find('span').eq(0);
				
				label.removeClass();
				
				if(json.status == 1) {
					label.addClass('checkout-status unsolved');
					label.text('<?php echo $this->lang->line("text_unsolved"); ?>');
				}else if(json.status == 2){
					label.addClass('checkout-status checking-out');
					label.text('<?php echo $this->lang->line("text_checking_out"); ?>');
				}else if(json.status == 3){
					label.addClass('checkout-status completed');
					label.text('<?php echo $this->lang->line("text_completed"); ?>');
				}
				
				$(handle).html('<i class="fa fa fa-refresh"></i>');
			} else {
				$('#alert-error span').html(json.message);
				$('#alert-error').show();
			} 
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function delete_sale(handle, sale_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>sale/sale/delete?sale_id=' + sale_id,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			success: function(json) {					
				if(json.success) {
					$.ajax({
						url: '<?php echo $reload_url; ?>',
						dataType: 'html',
						success: function(html) {					
							$('.ibox-content').html(html);
						},
					});
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>
<script>
function print_label(handle) 
{
	h = $(handle);
	
	sale_id = h.closest('tr').find("input[name='sale_id']").val();
	
	url = '<?php echo base_url();?>sale/label?sale_id=' + sale_id;
			
	window.open(url, 'print_label', 'width=580, height=750, left=50, top=50');
}
</script>
<script>
function print_label_c(handle, sale_id) 
{	
	data = new FormData();
	data.append('sale_id', sale_id);
				
	$.ajax({
		url: '<?php echo base_url(); ?>sale/label/execute_c',
		type: 'post',
		data: data,
		dataType: 'json',
		cache: false,
		contentType: false,
		processData: false,
		beforeSend: function() {
			$(handle).html('<i class="fa fa-spinner fa-spin"></i>');
		},
		complete: function() {
			$(handle).html('<i class="fa fa-print"></i>');
		},
		success: function(json) {
			if(!json.success) {
				html = '<div class="alert alert-danger">';
				html += '<span><strong>#' + sale_id + ":</strong> " + json.message + '</span>';
				html += '<button type="button" class="close" onclick="$(this).closest(\'.alert-danger\').remove()">';
				html += '&times;</button></div>';
				
				$('#alerts').append(html);
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {						
			$('#alert-error span').html(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			$('#alert-error').show();
		}
	});
}
</script>
<script>
function print_label_d(handle, sale_id) 
{	
	data = new FormData();
	data.append('sale_id', sale_id);
	
	$.ajax({
		url: '<?php echo base_url(); ?>sale/label/check',
		type: 'post',
		data: data,
		dataType: 'json',
		cache: false,
		contentType: false,
		processData: false,
		beforeSend: function() {
			$(handle).html('<i class="fa fa-spinner fa-spin"></i>');
		},
		success: function(json) {			
			if(json.success) 
			{				
				data = new FormData();
				data.append('sale_id', sale_id);
							
				$.ajax({
					url: '<?php echo base_url(); ?>sale/label/execute_d',
					type: 'post',
					data: data,
					dataType: 'json',
					cache: false,
					contentType: false,
					processData: false,
					complete: function() {
						$(handle).html('<i class="fa fa-file-image-o"></i>');
					},
					success: function(json) {
						if(json.success && json.pending) {
							html = '<div class="alert-wrapper">';
							html += '<div class="alert alert-success" style="width: 270px;">';
							html += '<span>' + json.message + '</span>';
							html += '<button type="button" class="close" onclick="$(this).closest(\'.alert-success\').remove()">';
							html += '&times;</button></div>';
							html += '</div>';

							$('#wrapper').append(html);
							
						} else if(json.success && !json.pending) {
							html = '<span class="tracking">' + json.tracking + '</span>';
							$(handle).closest('tr').find('.tracking-td').html(html);
						} else {
							html = '<div class="alert alert-danger">';
							html += '<span><strong>#' + sale_id + ":</strong> " + json.message + '</span>';
							html += '<button type="button" class="close" onclick="$(this).closest(\'.alert-danger\').remove()">';
							html += '&times;</button></div>';
							
							$('#alerts').append(html);
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {						
						$('#alert-error span').html(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						$('#alert-error').show();
					}
				});
			} 
			else 
			{
				$(handle).html('<i class="fa fa-print"></i>');
				
				$('#alert-error span').html(json.message);		
				$('#alert-error').show();
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			$("#msg").html(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function export_sale(handle) {
	sale_id     	= $('input[name=\'sale_id\']').val();
	store_sale_id   = $('input[name=\'store_sale_id\']').val();
	status          = $('select[name=\'status\']').val();
	tracking        = $('input[name=\'tracking\']').val();
	
	data = new FormData();
	data.append('filter_sale_id', sale_id);
	data.append('filter_store_sale_id', store_sale_id);
	data.append('filter_status', status);
	data.append('filter_tracking', tracking);
	
	$.ajax({
		url: '<?php echo base_url(); ?>sale/sale_ajax/export_sale',
		type: 'post',
		data: data,
		dataType: 'json',
		cache: false,
		contentType: false,
		processData: false,
		beforeSend: function() {
			$(handle).html('<i class="fa fa-spinner fa-spin"></i>');
		},
		complete: function() {
			$(handle).html('<i class="fa fa-download"></i>');
		},
		success: function(json) {	
			if(json.success) {
				window.location.href = json.link;
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			$("#msg").html(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
	
}
</script>
<script>
$(document).ready(function() {
	$(document).on('input', 'input[name=\'sale_id\']', function () {
		filter_sale();
	});
	
	$(document).on('input', 'input[name=\'store_sale_id\']', function () {
		filter_sale();
	});
	
	$(document).on('change', 'select[name=\'status\']', function () {
		filter_sale();
	});
	
	$(document).on('input', 'input[name=\'tracking\']', function () {		
		filter_sale();
	});
});
</script>
<script>
$(document).ready(function() {
	$('.btn-bulk-print').click(function() {
		$('input[name*=\'selected\']').each(function(index) {
			if($(this).is(':checked')) {
				sale_id = $(this).val();
				handle = $(this).closest('tr').find('.btn-print-d').get(0); ;
				
				print_label_d(handle, sale_id);
			}			
		});
	});
});
</script>
<script>
$(document).ready(function() {
	$(document).on('mouseenter', 'td:nth-child(2)', function() {
		$(this).find('.detail').show();
	});
	
	$(document).on('mouseleave', 'td:nth-child(2)', function() {
		$(this).find('.rating').remove();
		$(this).find('.detail').hide();
	});
});
</script>
<?php echo $footer; ?>
