<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_fba_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>fba/fba"><?php echo $this->lang->line('text_fba'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_fba_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button class="btn btn-primary btn-submit" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save_fba'); ?>" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>fba/fba" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
  <div class="row">
    <div class="col-lg-12">
	<form method="post" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#note"><?php echo $this->lang->line('tab_note'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body tab-panel">
			  <div class="container-fluid">
			    <div class="row" style="padding-bottom: 10px;">
				  <div class="col-lg-7">
				    <div class="form-group">
					  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
					  <div class="col-sm-10"><input name="tracking" value="<?php echo $tracking; ?>" class="form-control" ></div>
				    </div>
				    <div class="hr-line-dashed"></div>
				    <div class="form-group">
					  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
					  <div class="col-sm-10">
					    <select name="status" class="form-control">
						  <?php if($status == 1) { ?>
						  <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
						  <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
						  <?php } else if($status == 2) { ?>
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
				  <div class="col-lg-5">
				    <div class="code-box">
					  <input name="code" placeholder="<?php echo $this->lang->line('text_code_hint'); ?>" class="form-control">
					</div>
				  </div>
			    </div>
			    <div class="row">
				  <div class="col-lg-12">     
				    <div class="fbox-content">
					  <table id="fba-product" class="table table-bordered">
					    <thead>
						  <tr>
						    <th style="width: 14%"><?php echo $this->lang->line('column_product_name'); ?></th>
						    <th style="width: 14%"><?php echo $this->lang->line('column_upc'); ?></th>
						    <th style="width: 14%"><?php echo $this->lang->line('column_sku'); ?></th>
							<th style="width: 14%"><?php echo $this->lang->line('column_batch'); ?></th>
						    <th style="width: 14%"><?php echo $this->lang->line('column_quantity'); ?></th>
						    <th style="width: 14%"><?php echo $this->lang->line('column_location'); ?></th>
							<th></th>
						  </tr>
					    </thead>
					    <tbody>
						  <?php $fba_product_row = 0; ?>
						  <?php if($fba_products) { ?>
						    <?php foreach($fba_products as $fba_product) { ?>
						    <tr id="row<?php echo $fba_product_row; ?>">
						    <td class="text-left"><input name="fba_product[<?php echo $fba_product_row; ?>][product_id]" type="hidden" value="<?php echo $fba_product['product_id']; ?>"><div class="text-left"><?php echo $fba_product['name']; ?></div></td>
						    <td class="text-left"><?php echo $fba_product['upc']; ?></td>
						    <td class="text-left"><?php echo $fba_product['sku']; ?></td>
							<td><input class="form-control" name="fba_product[<?php echo $fba_product_row; ?>][batch]" value="<?php echo $fba_product['batch']; ?>"></td>
						    <td><input class="form-control text-center quantity" name="fba_product[<?php echo $fba_product_row; ?>][quantity]" value="<?php echo $fba_product['quantity']; ?>"></td>
							<td>
							  <input class="form-control" name="fba_product[<?php echo $fba_product_row; ?>][location_name]" value="<?php echo $fba_product['location_name']; ?>">
							  <input type="hidden" name="fba_product[<?php echo $fba_product_row; ?>][location_id]" value="<?php echo $fba_product['location_id']; ?>">
							</td>
							<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i id="<?php echo $fba_product_row; ?>" class="fa fa-minus-circle"></i></button></td>
						    <?php $fba_product_row ++; ?>
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
		  <div id="fee" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <div class="col-sm-12">
				  <select name="fbaout_fee_code" class="form-control">
				    <option value=""></option>
				    <?php foreach($fba_fees as $fba_fee) { ?>
					<?php if($fba_fee['code'] == $fee_code) { ?>
					<option value="<?php echo $fba_fee['code']; ?>" selected><?php echo $fba_fee['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $fba_fee['code']; ?>"><?php echo $fba_fee['name']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="note" class="tab-pane">
			<div class="panel-body tab-panel">
		      <div class="form-group">
			    <div class="col-sm-12"><textarea name="note" rows="8" cols="10" class="form-control summernote"><?php echo $note; ?></textarea></div>
			  </div> 
		    </div>
		  </div>
		</div>
      </div>
	</form>
	</div>
  </div>  
</div>
<script>
function refresh_fee() {
	data = new FormData();
				
	$('#fba-product tbody tr').each(function(index) {
		product_id = $(this).find('.product_id').val();
		quantity = $(this).find('.quantity').val();
				
		data.append('product[' + product_id + ']', quantity);
	});
	
	$.ajax({
		url: '<?php echo base_url(); ?>extension/fee/get_fba_fees',
		type: 'post',
		data: data,
		cache: false,
		contentType: false,
		processData: false,
		dataType: 'json',
		success: function(json) {	
			$('#fba_fees tbody').html('');	
		
			$.each(json.fba_fees, function(fba_fee_row, fba_fee) {	
				html  = '<tr id="fba-fee-row' + fba_fee_row + '">';
				html += '<td><input name="fba_fee[' + fba_fee_row + '][name]" value="' + fba_fee.name + '" class="form-control" /></td>';
				html += '<td class="text-right">';
				html += '<div class="input-group">';
				html += '<span class="input-group-addon">$</span>';
				html += '<input name="fba_fee[' + fba_fee_row + '][amount]" value="' + fba_fee.amount + '" class="form-control" /></td>';
				html += '</div>';
				html += '<td class="text-left"><button type="button" onclick="$(\'#fba-fee-row' + fba_fee_row  + '\').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
				html += '</tr>';

				$('#fba_fees tbody').append(html);			
			});
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function locationautocomplete(fba_product_row) {
	$('input[name=\'fba_product[' + fba_product_row + '][location_name]\']').autocomplete({
		'source': function(request, response) {
			location_name = $('input[name=\'fba_product[' + fba_product_row + '][location_name]\']').val();
						
			$.ajax({
				url: '<?php echo base_url(); ?>warehouse/location_ajax/autocomplete?location_name=' + location_name,
				dataType: 'json',
				success: function(json) {
					if(json.success)
					{
						response($.map(json.locations, function(location) {					
							return {
								label:       location['name'],
								location_id: location['location_id'],
								name:        location['name']
							}
						}));
					}
				}
			});	
		},
		'select': function(event, ui) {		
			$('input[name=\'fba_product[' + fba_product_row + '][location_name]\']').val(ui.item.name);
			$('input[name=\'fba_product[' + fba_product_row + '][location_id]\']').val(ui.item.location_id);
		}
	});
}

$('#fba-product tbody tr').each(function(index, element) {
	locationautocomplete(index);
});
</script>
<script>
$(document).ready(function() {
	fba_product_row = <?php echo $fba_product_row; ?>;
	
	$('input[name=\'code\']').autocomplete({  
		'source': function(request, response) {
			code = $('input[name=\'code\']').val();
					
			data = new FormData();
			data.append('code', code);
			
			$.ajax({
				url: '<?php echo base_url(); ?>fba/fba_ajax/get_product',
				type: 'post',
				data: data,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				success: function(json) {
					if(json.success)
					{
						response($.map(json.products, function(item) {					
							return {
								label:      item['label'],
								product_id: item['product_id'],
								upc:        item['upc'],
								sku:        item['sku'],
								name:       item['name']
							}
						}));
					}
				}
			});
		},
		'select': function(event, ui) {
			product = ui.item;
			
			new_tr = $('<tr id="row_' + fba_product_row + '"></tr>');
			
			html  = '<td><input class="product_id" name="fba_product[' + fba_product_row + '][product_id]" type="hidden" value="' + product.product_id + '"><div class="text-left">' + product.name + '</div></td>';
			html += '<td class="text-left">' + product.upc + '</div></td>';
			html += '<td class="text-left">' + product.sku + '</div></td>';
			html += '<td><input class="form-control" name="fba_product[' + fba_product_row + '][batch]" type="text" value=""></td>';
			html += '<td><input class="form-control text-center quantity" name="fba_product[' + fba_product_row + '][quantity]" type="text" value="1" onClick="this.select();"></td>';
			html += '<td>';
			html += '<input name="fba_product[' + fba_product_row + '][location_name]" class="form-control">';
			html += '<input type="hidden" name="fba_product[' + fba_product_row + '][location_id]">';
			html += '</td>';
			html += '<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i class="fa fa-minus-circle"></i></button></td>';
			
			new_tr.html(html);
			
			$("#fba-product").append(new_tr);
			
			locationautocomplete(fba_product_row);
			
			fba_product_row++;
			
			$(this).val(''); 
			
			refresh_fee();

			return false;
		}
	});
	
	//remove product
	$('#fba-product').on('click', '.btn-delete', function() {		
		$(this).closest('tr').remove();		
		
		refresh_fee();
	});
});
</script>
<script>
$(document).ready(function() {
	$(document).on('input', '.quantity', function() {
		refresh_fee();
	});
});
</script>
<script>
$(document).ready(function() {
	$('.summernote').summernote({
		height: 580
	});
});
</script>
<?php echo $footer; ?>
		