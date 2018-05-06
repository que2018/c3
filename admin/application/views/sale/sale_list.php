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
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_bulk_print'); ?>" class="btn btn-info btn-bulk-print"><i class="fa fa-print"></i></button>
    <a href="<?php echo $add; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div id="alerts">
	    <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
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
			      <label class="col-sm-5 control-label"><?php echo $this->lang->line('entry_order_id'); ?></label>
			      <div class="col-sm-7"><input name="sale_id" class="form-control" value="<?php echo $filter_sale_id; ?>"></div>
				</div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-6 control-label"><?php echo $this->lang->line('entry_store_order_id'); ?></label>
			      <div class="col-sm-6"><input name="store_sale_id" class="form-control" value="<?php echo $filter_store_sale_id; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-5 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			      <div class="col-sm-7">
				    <select name="status" class="form-control">
					  <option value=""></option>
					  <?php if($filter_status == 1) { ?>
					  <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 2) { ?>
					  <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="2" selected><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else { ?>
					  <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } ?>
					</select>
				  </div>
			    </div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
			      <div class="col-sm-9"><input name="tracking" class="form-control" value="<?php echo $filter_tracking; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
                <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
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
						  <table class="table table-vw">
						    <thead>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_length_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_width_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_height_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_weight_short'); ?></th>
							</thead>
							<tbody>
							  <tr>
							    <td><?php echo $sale['length']; ?>&nbsp;<?php echo $sale['length_class']; ?></td>
							    <td><?php echo $sale['width']; ?>&nbsp;<?php echo $sale['length_class']; ?></td>
								<td><?php echo $sale['height']; ?>&nbsp;<?php echo $sale['length_class']; ?></td>
								<td><?php echo $sale['weight']; ?>&nbsp;<?php echo $sale['weight_class']; ?></td>
							  </tr>
							</tbody>
						  </table>
						  <table class="table table-shipping">
						    <tbody>
							  <tr>
							    <td colspan=4 class="text-right">
							      <?php if($sale['shipping']) { ?>
							      <span class="shipping"><?php echo $sale['shipping']; ?></span>
								  <?php } ?>
							      <?php if($sale['store_name']) { ?>
							      <span class="store"><?php echo $sale['store_name']; ?></span>
								  <?php } ?>
								  <?php if($sale['checkout']) { ?>
								  <?php if($sale['checkout']['status'] == 1) { ?>
								  <span class="checkout-pending"><?php echo $this->lang->line('text_checkout_pending'); ?></span>
								  <?php } else { ?>
								  <span class="checkout-complete"><?php echo $this->lang->line('text_checkout_complete'); ?></span>
								  <?php } ?>
								  <?php } ?>
								  <?php if($sale['status_id'] == 1) { ?>
								  <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>
								  <?php } else { ?>
							      <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>
								  <?php } ?>
							    </td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><?php echo $sale['store_sale_id']; ?></td>
					  <td class="tracking-td">
					    <?php if($sale['tracking']) { ?>
					      <span class="tracking"><?php echo $sale['tracking']; ?></span>
					    <?php } ?>
					  </td>
					  <td class="status">
					    <?php if($sale['status_id'] == 1) { ?>
					    <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>
					    <?php } else { ?>
					    <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>
					    <?php } ?>
						&nbsp;
						<?php if($sale['checkout']) { ?>      
						<?php if($sale['checkout']['status'] == 1) { ?>
						<span class="checkout-pending"><?php echo $this->lang->line('text_checkout_pending'); ?></span>
						<?php } else { ?>
						<span class="checkout-complete"><?php echo $this->lang->line('text_checkout_complete'); ?></span>
						<?php } ?>
						<?php } ?>
					  </td>
					  <td><?php echo $sale['date_added']; ?></td>
					  <td class="text-center">
					    <button onclick="print_label_d(this, <?php echo $sale['sale_id']; ?>)" class="btn btn-success btn-print-d"><i class="fa fa-print"></i></button>
						<?php if(!$sale['checkout']) { ?>
						<button onclick="checkout(this, <?php echo $sale['sale_id']; ?>)" class="btn btn-info btn-checkout"><i class="fa fa-refresh"></i></button>
						<?php } else { ?>
						<button class="btn btn-info btn-checkout-disable"><i class="fa fa-refresh"></i></button>
						<?php } ?>
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
<script>
function checkout(handle, sale_id) {
	$.ajax({
		url: '<?php echo base_url(); ?>check/checkout_sale/add_checkout_ajax?sale_id=' + sale_id,
		cache: false,
		contentType: false,
		processData: false,
		dataType: 'json',
		beforeSend: function() {
			$(handle).html('<i class="fa fa-refresh fa-spin"></i>');
		},
		complete: function() {
			$(handle).html('<i class="fa fa-refresh"></i>');
		},
		success: function(json) {					
			if(json.success) {
				html  = '<span class="checkout-pending">';
				html += '<?php echo $this->lang->line('text_checkout_pending'); ?>';
				html += '</span>';
				
				$(handle).closest('tr').find('.status').append(html);
			} else {
				window.open('<?php echo base_url(); ?>check/checkout_sale?sale_id=' + sale_id, '_blank');
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
						$(handle).html('<i class="fa fa-print"></i>');
					},
					success: function(json) {
						if(json.success) {
							html = '<span class="tracking">' + json.tracking + '</span>';
							$(handle).closest('tr').find('.tracking-td').html(html);
						}
						else {
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
$(document).ready(function() {
	//filter
	$(document).on('click', '#btn-search', function() {
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
						
		window.location.href = url;
	});
	
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('#btn-search').trigger('click');
		}
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
		$(this).find('.detail').hide();
	});
});
</script>
<?php echo $footer; ?>
