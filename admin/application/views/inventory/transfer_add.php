<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_transfer_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/transfer"><?php echo $this->lang->line('text_transfer'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_transfer_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>inventory/transfer" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
      <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	</div>
  </div>
  <form method="post" class="form-horizontal">
    <div class="row">
	  <div class="col-lg-6">
	    <div class="ibox float-e-margins">
		  <div class="ibox-title">
		    <h5><?php echo $this->lang->line('text_from_warehouse'); ?></h5>
		  </div>
		  <div class="ibox-content">
		    <div class="form-group">
			  <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
			  <div class="col-sm-9">
			    <select name="from_warehouse_id" class="form-control">
				  <option value=""></option>
				  <?php foreach($warehouses as $warehouse) { ?>
				  <?php if($warehouse['id'] == $from_warehouse_id) { ?>
				  <option value="<?php echo $warehouse['id']; ?>" selected><?php echo $warehouse['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $warehouse['id']; ?>"><?php echo $warehouse['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
		    <div class="hr-line-dashed"></div>				  
		    <div class="form-group">
			  <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			  <div class="col-sm-9">
			    <select name="from_location_id" class="form-control">
				  <option value=""></option>
				  <?php foreach($from_locations as $location) { ?>
				  <?php if($location['id'] == $from_location_id) { ?>
				  <option value="<?php echo $location['id']; ?>" selected><?php echo $location['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $location['id']; ?>"><?php echo $location['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
		  </div>
	    </div>
	  </div>
	  <div class="col-lg-6">
	    <div class="ibox float-e-margins">
		  <div class="ibox-title">
		    <h5><?php echo $this->lang->line('text_to_warehouse'); ?></h5>
		  </div>
		  <div class="ibox-content">
		    <div class="form-group">
			  <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
			  <div class="col-sm-9">
			    <select name="to_warehouse_id" class="form-control">
				  <option value=""></option>
				  <?php foreach($warehouses as $warehouse) { ?>
				  <?php if($warehouse['id'] == $to_warehouse_id) { ?>
				  <option value="<?php echo $warehouse['id']; ?>" selected><?php echo $warehouse['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $warehouse['id']; ?>"><?php echo $warehouse['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
		    <div class="hr-line-dashed"></div>				  
		    <div class="form-group">
			  <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			  <div class="col-sm-9">
			    <select name="to_location_id" class="form-control">
				  <option value=""></option>
				  <?php foreach($to_locations as $location) { ?>
				  <?php if($location['id'] == $to_location_id) { ?>
				  <option value="<?php echo $location['id']; ?>" selected><?php echo $location['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $location['id']; ?>"><?php echo $location['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
		  </div>
	    </div>
	  </div>
	</div>
    <div class="row">
	  <div class="col-lg-12">
	    <div class="tabs-container">
		  <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#products"><?php echo $this->lang->line('tab_products'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
			    <div class="form-group">
			      <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
			      <div class="col-sm-10"><input name="tracking" value="<?php echo $tracking; ?>" class="form-control" ></div>
			    </div>
			    <div class="hr-line-dashed"></div>
			    <div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_note'); ?></label>
                  <div class="col-sm-10"><textarea name="note" rows="5" class="form-control summernote"><?php echo $note; ?></textarea></div>
			    </div>
				<div class="hr-line-dashed"></div>
		      </div>
			</div>
		    <div id="products" class="tab-pane">
			  <div class="panel-body">
			    <div class="trnasfer-code">
				  <div class="form-group">
				    <div class="col-sm-12"><input name="code" placeholder="<?php echo $this->lang->line('text_transfer_product_hint'); ?>" class="form-control"></div>
				  </div>
			    </div>
			    <div class="transfer-table">
				  <table id="transfer-product" class="table table-bordered">
				    <thead>
					  <tr>
					    <th style="width: 20%"><?php echo $this->lang->line('column_product_name'); ?></th>
					    <th style="width: 20%"><?php echo $this->lang->line('column_upc'); ?></th>
					    <th style="width: 20%"><?php echo $this->lang->line('column_sku'); ?></th>
					    <th style="width: 20%"><?php echo $this->lang->line('column_quantity'); ?></th>
					    <th></th>
					  </tr>
				    </thead>
				    <tbody>
					  <?php $transfer_product_row = 0; ?>
					  <?php if($transfer_products) { ?>
						<?php foreach($transfer_products as $transfer_product) { ?>
						<tr id="row<?php echo $transfer_product_row; ?>">
						<td class="text-left"><input name="transfer_product[<?php echo $transfer_product_row; ?>][product_id]" type="hidden" value="<?php echo $transfer_product['id']; ?>"><div class="text-left"><?php echo $transfer_product['name']; ?></div></td>
						<td class="text-left"><?php echo $transfer_product['upc']; ?></td>
						<td class="text-left"><?php echo $transfer_product['sku']; ?></td>
						<td><input class="form-control text-center" name="transfer_product[<?php echo $transfer_product_row; ?>][quantity]" value="<?php echo $transfer_product['quantity']; ?>"></td>
						<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i id="<?php echo $transfer_product_row; ?>" class="fa fa-minus-circle"></i></button></td>
						<?php $transfer_product_row++; ?>
						<?php } ?>
					  <?php } ?>
				    </tbody>
				  </table>  
			    </div>
			  </div>
		    </div>
	      </div>
	    </div>
      </div>
	</div>
  </form>
</div>
<script>
$(document).ready(function() {
	$('select[name=\'from_warehouse_id\']').on('change', function() {
		from_warehouse_id = $('select[name=\'from_warehouse_id\']').val();
	
		if(from_warehouse_id) {
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/transfer/get_locations?warehouse_id=' + from_warehouse_id,
				dataType: "json",
				beforeSend: function() {
					$('#alert-error').hide();
				},
				success: function(json) {					
					if(json.success) 
					{	
						location_html = '';
					
						$.each(json.locations, function(index, location) {							
							location_html += '<option value="'+ location.id +'">' + location.name + '</option>';
						});
				
						$('select[name=\'from_location_id\']').html(location_html);
					}
					else 
					{
						$('#alert-error span').html(json.msg);		
						$('#alert-error').show();
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	});
	
	$('select[name=\'to_warehouse_id\']').on('change', function() {
		to_warehouse_id = $('select[name=\'to_warehouse_id\']').val();
	
		if(to_warehouse_id) {
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/transfer/get_locations?warehouse_id=' + to_warehouse_id,
				dataType: "json",
				beforeSend: function() {
					$('#alert-error').hide();
				},
				success: function(json) {					
					if(json.success) 
					{	
						location_html = '';
					
						$.each(json.locations, function(index, location) {							
							location_html += '<option value="'+ location.id +'">' + location.name + '</option>';
						});
				
						$('select[name=\'to_location_id\']').html(location_html);
					}
					else 
					{
						$('#alert-error span').html(json.msg);		
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

transfer_product_row = <?php echo $transfer_product_row; ?>;

$('input[name=\'code\']').autocomplete({  
	'source': function(request, response) {
		code = $('input[name=\'code\']').val();
		location_id = $('select[name=\'from_location_id\']').val();
				
		if(!location_id) 
		{
			$('#alert-error span').html('<?php echo $this->lang->line('error_from_location_empty'); ?>');		
			$('#alert-error').show();
		} 
		else 
		{
			data = new FormData();
			data.append('code', code);
			data.append('location_id', location_id);
			
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/transfer/product_autocomplete',
				type: 'post',
				data: data,
				cache: false,
				contentType: false,
				processData: false,
				dataType: 'json',
				success: function(json) {
					if(json.success)
					{
						response($.map(json.products, function(item) {					
							return {
								label:      item['label'],
								product_id: item['product_id'],
								name:       item['name'],
								upc:        item['upc'],
								sku:        item['sku'],
								asin:       item['asin']
							}
						}));
					}
					else
					{
						$('#alert-error span').html(json.message);		
						$('#alert-error').show();
					}
				}
			});
		}
	},
	'select': function(event, ui) {		
		new_tr = $('<tr id="row_' + transfer_product_row + '"></tr>');
		
		html  = '<td><input name="transfer_product[' + transfer_product_row + '][product_id]" type="hidden" value="' + ui.item.product_id + '"><div class="text-left">' + ui.item.name + '</div></td>';
		html += '<td><div class="text-left">' + ui.item.upc + '</div></td>';
		html += '<td><div class="text-left">' + ui.item.sku + '</div></td>';
		html += '<td><input class="text-center form-control" name="transfer_product[' + transfer_product_row + '][quantity]" type="text" value="1"></td>';
		html += '<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i class="fa fa-minus-circle"></i></button></td>';
		
		new_tr.html(html);
		
		$('#transfer-product').append(new_tr);
	}
});

//remove product
$('#transfer-product').on('click', '.btn-delete', function() {		
	$(this).closest('tr').remove();
});
</script>
<script>
$(document).ready(function() {
	$('.btn-delete').click(function() {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			checkin_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/transfer/delete?checkin_id=' + checkin_id,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
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
$(document).ready(function() {
	$('.summernote').summernote({
		height: 200
	});
});
</script>
<?php echo $footer; ?>
		