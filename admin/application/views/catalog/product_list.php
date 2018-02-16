<link href="<?php echo base_url(); ?>assets/css/app/catalog/product_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_product_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_catalog'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_product_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
	<button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_export'); ?>" class="btn btn-info btn-download" onclick="to_excel()"><i class="fa fa-download"></i></button>
    <a href="<?php echo base_url(); ?>catalog/product/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	  <div class="alert alert-success"><?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
	  <?php } ?>
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_product_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
			      <div class="col-sm-9">
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
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_upc'); ?></label>
			      <div class="col-sm-9"><input name="upc" class="form-control" value="<?php echo $filter_upc; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_sku'); ?></label>
			      <div class="col-sm-9"><input name="sku" class="form-control" value="<?php echo $filter_sku; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-3">
                <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'product.name') { ?>
				<th style="width: 30%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 30%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'client.id') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.upc') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.sku') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.quantity') { ?>
				<th class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th class="sorting">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 15%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($products) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($products as $product) { ?>
					<tr>
					  <?php if($modifiable) { ?>
					  <td>
					    <span><?php echo $product['name']; ?></span>
					    <div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_length_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_width_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_height_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_weight_short'); ?></th>
						    </thead>
						    <tbody>
							  <tr>
							    <td><?php echo $product['length']; ?>&nbsp;<?php echo $product['length_class']; ?></td>
								<td><?php echo $product['width']; ?>&nbsp;<?php echo $product['length_class']; ?></td>
								<td><?php echo $product['height']; ?>&nbsp;<?php echo $product['length_class']; ?></td>
								<td><?php echo $product['weight']; ?>&nbsp;<?php echo $product['weight_class']; ?></td>
							  </tr>
							  <?php if($product['shipping_provider']) { ?>
							  <tr><td colspan=4 class="text-right"><span class="shipping"><?php echo $product['shipping_provider']; ?></span></td></tr>
							  <?php } ?>
						    </tbody>
						  </table>
					    </div>
					  </td>
					  <?php } else { ?>
					  <td><?php echo $product['name']; ?></td>
					  <?php } ?>
					  <td><?php echo $product['client']; ?></td>
					  <?php if($modifiable) { ?>
					  <td ondblclick="active_field('upc', this)"><?php echo $product['upc']; ?></td>
					  <?php } else { ?>
					  <td><?php echo $product['upc']; ?></td>
				      <?php } ?>
					  <?php if($modifiable) { ?>
					  <td ondblclick="active_field('sku', this)"><?php echo $product['sku']; ?></td>
					  <?php } else { ?>
					  <td><?php echo $product['sku']; ?></td>
				      <?php } ?>
					  <td><?php echo $product['quantity']; ?></td>
					  <td class="text-center">
						<a href="<?php echo base_url().'catalog/product/edit?product_id='.$product['product_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $product['product_id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>
					  <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
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
$(document).ready(function() {
	//filter
	$('#btn-search').click(function() {
		client_id = $('select[name=\'client_id\']').val();
		upc       = $('input[name=\'upc\']').val();
		sku       = $('input[name=\'sku\']').val();
		quantity  = $('input[name=\'quantity\']').val();

		url = '<?php echo $filter_url; ?>';
	
		if(client_id)
			url += '&filter_client_id=' + client_id;

		if(upc)
			url += '&filter_upc=' + upc;
		
		if(sku)
			url += '&filter_sku=' + sku;
		
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
	$('.btn-delete').click(function() {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			product_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>catalog/product/delete?product_id=' + product_id,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				beforeSend: function() {
					handler.html('<i class="fa fa-circle-o-notch fa-spin"></i>');
				},
				complete: function() {
					handler.html('<i class="fa fa-trash"></i>');
				},
				success: function(json) {					
					if(json.success) 
					{
						handler.closest('tr').remove();
					} 
					else 
					{
						html = '';
						
						$.each(json.msgs, function(index, msg) {
							html += msg + '<br>';
						});
						
						$('#alert-error span').html(html);
						$('#alert-error').show();
					}
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
function to_excel() {
	$.ajax({
		url: '<?php echo base_url(); ?>catalog/product_download/products',
		dataType: 'json',
		beforeSend: function() {
			$('.btn-download').html('<i class="fa fa-spinner fa-spin"></i>');
		},
		complete: function() {
			$('.btn-download').html('<i class="fa fa-download"></i>');
		},
		success: function(json) {					
			if(json.success) 
			{	
				window.location = json.link;
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function active_field(field, handle) {	
	if(!$(handle).find('input').length) 
	{		
		value = $(handle).html();
		
		product_id = $(handle).closest('tr').find('input[name=\'product_id\']').val();
			
		html = '<input type="text" value="'+ value +'" onblur="update_field(\'' + product_id + '\', \'' + field + '\', this)" class="form-control" onfocus="this.value = this.value;" />';
		
		$(handle).html(html);	
		
		$(handle).find('input').focus();
	}
}

function update_field(product_id, field, handle) {	

	value = $(handle).val();

	$(handle).closest('td').html(value);
		
	$.ajax({
		url: '<?php echo base_url(); ?>catalog/product_ajax/update_value',
		data: 'product_id=' + product_id + '&field=' + field + '&value=' + value,
		type: 'POST',
		dataType: 'json',
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
		
		