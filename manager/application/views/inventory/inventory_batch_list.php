<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_inventory'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/inventory"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_inventory'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/export/inventory.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download'); ?>" class="btn btn-success btn-download" download><i class="fa fa-download"></i></a>
    <a href="<?php echo base_url(); ?>inventory/inventory_batch/add"  data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_bulk_delete'); ?>" class="btn btn-danger btn-bulk-delete" onClick="bulk_delete_inventory(this)"><i class="fa fa-trash"></i></button>
	<a href="#inventory-clear" data-toggle="modal" class="btn btn-danger btn-delete-all"><i class="fa fa-trash"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_inventory_list_description'); ?></h5>
		  <div class="btn-group batch-options">
			<a href="#" class="btn btn-batch btn-batch-select btn-secondary"><?php echo $this->lang->line('button_batch'); ?></a>	 
		    <a href="<?php echo $non_batch_url; ?>" class="btn btn-batch btn-secondary"><?php echo $this->lang->line('button_non_batch'); ?></a>
		  </div>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <select name="client_id" class="form-control">
					  <?php if($clients) { ?>
					    <option value=""><?php echo $this->lang->line('entry_client'); ?></option>
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
			      <div class="col-sm-12">
				    <input name="location" class="form-control" value="<?php echo $filter_location; ?>" placeholder="<?php echo $this->lang->line('entry_location'); ?>">
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <input name="sku" class="form-control" value="<?php echo $filter_sku; ?>" placeholder="<?php echo $this->lang->line('entry_sku'); ?>">
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <input name="upc" class="form-control" value="<?php echo $filter_upc; ?>" placeholder="<?php echo $this->lang->line('entry_upc'); ?>">
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <input name="batch" class="form-control" value="<?php echo $filter_batch; ?>" placeholder="<?php echo $this->lang->line('entry_batch'); ?>">
				  </div>
			    </div>
			  </div>
		    </div>
		  </div>
		  <div id="table-content">
		    <div class="table-responsive">
		      <table class="table table-striped table-bordered table-hover dataTables-example" >
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
				  <?php if($sort == 'inventory.batch') { ?>
				  <th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 12%;" class="sorting">
				    <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'inventory.quantity') { ?>
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
				  <?php if($inventories) { ?>
				    <?php $offset = 0; ?>
				    <?php foreach($inventories as $inventory) { ?>
					  <tr>
					    <td class="text-center">
					      <input type="checkbox" name="selected[]" value="<?php echo $inventory['inventory_id']; ?>" />
					    </td>
					    <td>
					      <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?></a>
						  <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
						    <table class="table">
						      <thead>
							    <th style="width: 50%;"><?php echo $this->lang->line('column_upc'); ?></th>
							    <th style="width: 50%;"><?php echo $this->lang->line('column_sku'); ?></th>
							  </thead>
							  <tbody>
							    <tr>
							      <td><?php echo $inventory['upc']; ?></td>
							      <td><?php echo $inventory['sku']; ?></td>
							    </tr>
							  </tbody>
						    </table>
						  </div>
					    </td>
					    <td><a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?><?php echo $inventory['upc']; ?></a></td>
						<td><a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?><?php echo $inventory['sku']; ?></a></td>
					    <td><?php echo $inventory['location']; ?></td>
					    <td><?php echo $inventory['batch']; ?></td>
					    <?php if($modifiable) { ?>
					    <td ondblclick="active_quantity(this)"><?php echo $inventory['quantity']; ?></td>
					    <?php } else { ?>
					    <td><?php echo $inventory['quantity']; ?></td>
					    <?php } ?>
					    <td class="text-center">
					      <a href="<?php echo base_url(); ?>inventory/inventory_batch/edit?inventory_id=<?php echo $inventory['inventory_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
						  <button class="btn btn-danger btn-delete" data="<?php echo $inventory['inventory_id']; ?>" onclick="delete_inventory(this, <?php echo $inventory['inventory_id']; ?>)"><i class="fa fa-trash"></i></button>
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
</div>
<?php echo $clear_mod; ?>
<script>
$(document).ready(function() {	
	$('select[name=\'client_id\']').on('change', function() {
		filter_inventory();
	});
	
	$('input[name=\'location\']').on('input',function(e){
		filter_inventory();
	});
	
	$('input[name=\'sku\']').on('input',function(e){
		filter_inventory();
	});
	
	$('input[name=\'upc\']').on('input',function(e){
		filter_inventory();
	});
	
	$('input[name=\'batch\']').on('input',function(e){
		filter_inventory();
	});
});
</script>
<script>
function filter_inventory() {	
	client_id = $('select[name=\'client_id\']').val();
	loaction  = $('input[name=\'location\']').val();
	sku       = $('input[name=\'sku\']').val();	
	upc       = $('input[name=\'upc\']').val();	
	batch     = $('input[name=\'batch\']').val();	

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
function delete_inventory(handle, inventory_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>inventory/inventory_batch/delete?inventory_id=' + inventory_id,
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
function bulk_delete_inventory(handle) {	
	if($('input[name*=\'selected\']:checked').length) {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			data = new FormData();
			
			$('input[name*=\'selected\']').each(function(index) {
				if($(this).is(':checked')) {
					inventory_id = $(this).val();				
					data.append('inventory_ids[]', inventory_id);
				}			
			});
			
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/inventory_batch/bulk_delete',
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
	inventory_id = $(handle).closest('tr').find('.btn-delete').attr('data');
		
	quantity = $(handle).val();
	
	$(handle).closest('td').html(quantity);

	$.ajax({
		url: '<?php echo base_url(); ?>inventory/inventory_ajax/update_quantity',
		data: 'inventory_id=' + inventory_id + '&quantity=' + quantity,
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
		