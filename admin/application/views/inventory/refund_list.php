<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_refund'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/refund"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_refund'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/export/refund.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download'); ?>" class="btn btn-success btn-download" download><i class="fa fa-download"></i></a>
    <a href="<?php echo base_url(); ?>inventory/refund/add"  data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_bulk_delete'); ?>" class="btn btn-danger btn-bulk-delete" onClick="bulk_delete_refund(this)"><i class="fa fa-trash"></i></button>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_refund_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
			      <div class="col-sm-8">
				    <select name="client_id" class="form-control">
					  <?php if($clients) { ?>
					    <option value=""></option>
					    <?php foreach($clients as $client) { ?>
					    <?php if($client['client_id'] == $filter_client_id) { ?>
					    <option value="<?php echo $client['client_id']; ?>" selected><?php echo $client['name']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $client['client_id']; ?>"><?php echo $client['name']; ?></option>
					    <?php } ?>
					    <?php } ?>
					  <?php } ?>
				    </select>
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			      <div class="col-sm-8"><input name="location" class="form-control" value="<?php echo $filter_location; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_sku'); ?></label>
			      <div class="col-sm-9"><input name="sku" class="form-control" value="<?php echo $filter_sku; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_upc'); ?></label>
			      <div class="col-sm-9"><input name="upc" class="form-control" value="<?php echo $filter_upc; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_batch'); ?></label>
			      <div class="col-sm-8"><input name="batch" class="form-control" value="<?php echo $filter_batch; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
                <button id="btn-search" class="btn btn-success" onclick="filter()"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover table-refund">
			  <thead>
			    <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
				<?php if($sort == 'product.name') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
			      <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.upc') { ?>
				<th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 15%;" class="sorting">
			      <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.sku') { ?>
				<th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 15%;" class="sorting">
			      <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'location.name') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'refund.batch') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
				  <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'refund.quantity') { ?>
				<th style="width: 10%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 10%;" class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($refunds) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($refunds as $refund) { ?>
					<tr>
					  <td class="text-center">
					    <input type="checkbox" name="selected[]" value="<?php echo $refund['refund_id']; ?>" />
					  </td>
					  <td>
					    <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $refund['product_id']; ?>" target="_blank"><?php echo $refund['product']; ?></a>
						<div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_upc'); ?></th>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_sku'); ?></th>
							</thead>
							<tbody>
							  <tr>
							    <td><?php echo $refund['upc']; ?></td>
							    <td><?php echo $refund['sku']; ?></td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><?php echo $refund['upc']; ?></td>
					  <td><?php echo $refund['sku']; ?></td>
					  <td><?php echo $refund['location']; ?></td>
					  <td><?php echo $refund['batch']; ?></td>
					  <?php if($modifiable) { ?>
					  <td ondblclick="active_quantity(this)"><?php echo $refund['quantity']; ?></td>
					  <?php } else { ?>
					  <td><?php echo $refund['quantity']; ?></td>
					  <?php } ?>
					  <td class="text-center">
					    <a href="<?php echo base_url(); ?>inventory/refund/edit?refund_id=<?php echo $refund['refund_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $refund['refund_id']; ?>" onclick="delete_refund(this, <?php echo $refund['refund_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>				
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
function delete_refund(handle, refund_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>inventory/refund/delete?refund_id=' + refund_id,
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
function bulk_delete_refund(handle) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		data = new FormData();
		
		$('input[name*=\'selected\']').each(function(index) {
			if($(this).is(':checked')) {
				refund_id = $(this).val();				
				data.append('refund_ids[]', refund_id);
			}			
		});
		
		$.ajax({
			url: '<?php echo base_url(); ?>inventory/refund/bulk_delete',
			type: 'post',
			data: data,
			dataType: 'json',
			cache: false,
			contentType: false,
			processData: false,
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			success: function(json) {		
				$(handle).html('<i class="fa fa-trash"></i>');
			
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
function active_quantity(handle) {	
	if(!$(handle).find('input').length) 
	{
		quantity = $(handle).html();
		
		html = '<input type="text" value="'+ quantity +'" onblur="update_quantity(this)" class="form-control" onfocus="this.value = this.value;" />';
		
		$(handle).html(html);	
		
		$(handle).find('input').focus();
	}
}
function update_quantity(handle) {	
	refund_id = $(handle).closest('tr').find('.btn-delete').attr('data');
		
	quantity = $(handle).val();
	
	$(handle).closest('td').html(quantity);

	$.ajax({
		url: '<?php echo base_url(); ?>refund/refund_ajax/update_quantity',
		data: 'refund_id=' + refund_id + '&quantity=' + quantity,
		type: 'POST',
		dataType: "json",
		success: function (json) {
			if(!json.success)
				alert('<?php echo $this->lang->line('error_update_quantity_error'); ?>');
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function filter() {	
	client_id     = $('select[name=\'client_id\']').val();
	loaction      = $('input[name=\'location\']').val();
	sku           = $('input[name=\'sku\']').val();	
	upc           = $('input[name=\'upc\']').val();	
	batch         = $('input[name=\'batch\']').val();	

	url = '<?php echo $filter_url; ?>';
	
	if(client_id)
		url += '&filter_client_id=' + client_id;
	
	if(loaction)
		url += '&filter_location=' + loaction;

	if(sku)
		url += '&filter_sku=' + sku;
	
	if(upc)
		url += '&filter_upc=' + upc;
	
	if(batch)
		url += '&filter_batch=' + batch;
	
	window.location.href = url;
}
</script>
<script>
$(document).ready(function() {
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('#btn-search').trigger('click');
		}
	});
});
</script>
<script>
$(document).on({
	mouseenter: function () {
		$(this).find('.detail').show();
	},
	mouseleave: function () {
	   $(this).find('.detail').hide();
	}
}, 'td:nth-child(2)');
</script>
<?php echo $footer; ?>	
		