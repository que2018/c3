<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/inventory/damage_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_damage'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/damage"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_damage'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>inventory/damage/add"  data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_damage_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'product.name') { ?>
				<th style="width: 22%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 22%;" class="sorting">
			      <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'location.name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'warehouse.name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'damage.quantity') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'damage.date_modified') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_date_modified; ?>"><?php echo $this->lang->line('column_date_modified'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_date_modified; ?>"><?php echo $this->lang->line('column_date_modified'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 10%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($damages) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($damages as $damage) { ?>
					<tr>
					  <td>
					    <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $damage['product_id']; ?>" target="_blank"><?php echo $damage['product']; ?></a>
						<div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_upc'); ?></th>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_sku'); ?></th>
							</thead>
							<tbody>
							  <tr>
							    <td><?php echo $damage['upc']; ?></td>
							    <td><?php echo $damage['sku']; ?></td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><?php echo $damage['location']; ?></td>
					  <td><?php echo $damage['warehouse']; ?></td>
					  <?php if($modifiable) { ?>
					  <td ondblclick="active_quantity(this)"><?php echo $damage['quantity']; ?></td>
					  <?php } else { ?>
					  <td><?php echo $damage['quantity']; ?></td>
					  <?php } ?>
					  <td><?php echo $damage['date_modified']; ?></td>
					  <td class="text-center">
					    <a href="<?php echo base_url(); ?>inventory/damage/edit?damage_id=<?php echo $damage['damage_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
					  	<button class="btn btn-danger btn-delete" data="<?php echo $damage['damage_id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="product" placeholder="<?php echo $this->lang->line('column_product'); ?>" value="<?php echo $filter_product; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="location" placeholder="<?php echo $this->lang->line('column_location'); ?>" value="<?php echo $filter_location; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="warehouse" placeholder="<?php echo $this->lang->line('column_warehouse'); ?>" value="<?php echo $filter_warehouse; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="quantity" placeholder="<?php echo $this->lang->line('column_quantity'); ?>" value="<?php echo $filter_quantity; ?>"/></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="date_modified" placeholder="<?php echo $this->lang->line('column_date_modified'); ?>" value="<?php echo $filter_date_modified; ?>" /></th>
				  <th></th>
				</tr>
			  </tfoot>
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
$(document).ready(function() {
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			product        = $('input[name=\'product\']').val();	
			loaction       = $('input[name=\'location\']').val();
			warehouse      = $('input[name=\'warehouse\']').val();
			quantity       = $('input[name=\'quantity\']').val();
			date_modified  = $('input[name=\'date_modified\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(product)
				url += '&filter_product=' + product;
			
			if(loaction)
				url += '&filter_location=' + loaction;
		
			if(warehouse)
				url += '&filter_warehouse=' + warehouse;
			
			if(quantity)
				url += '&filter_quantity=' + quantity;
			
			if(date_modified)
				url += '&filter_date_modified=' + date_modified;
			
			window.location.href = url;
		}
	});
	
	//date picker
	$("input[name='date_modified']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
});
</script>
<script>
$(document).ready(function() {
	$('.btn-delete').click(function() {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			damage_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/damage/delete?damage_id=' + damage_id,
				cache: false,
				contentType: false,
				processData: false,
				dataType: 'json',
				beforeSend: function() {
					handler.html('<i class="fa fa-circle-o-notch fa-spin"></i>');
				},
				success: function(json) {					
					if(json.success) 
						handler.closest('tr').remove();
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	});
});
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
	damage_id = $(handle).closest('tr').find('.btn-delete').attr('data');
		
	quantity = $(handle).val();
	
	$(handle).closest('td').html(quantity);

	$.ajax({
		url: '<?php echo base_url(); ?>inventory/damage_ajax/update_quantity',
		data: 'damage_id=' + damage_id + '&quantity=' + quantity,
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
$(document).ready(function() {
	$('td:first-child').hover(function() {
		$(this).find('.detail').show();
	}, function() {
		$(this).find('.detail').hide();
	});
});
</script>
		