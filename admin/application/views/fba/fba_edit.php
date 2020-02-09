<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2>
	  <?php echo $fba_edit_title; ?>
	  <?php if($status == 1) { ?>
	  &nbsp;<span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>
	  <?php } else {?>
	  &nbsp;<span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>
	  <?php } ?>
	</h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>fba/fba"><?php echo $this->lang->line('text_fba'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_fba_edit'); ?></strong></li>
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
		  <li class=""><a data-toggle="tab" href="#product"><?php echo $this->lang->line('tab_product'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#file"><?php echo $this->lang->line('tab_file'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#note"><?php echo $this->lang->line('tab_note'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
                <div class="col-sm-10">
				  <select name="client_id" class="form-control">
				    <option value=""></option>
				    <?php foreach($clients as $client) { ?>
					<?php if($client['id'] == $client_id) { ?>
					<option value="<?php echo $client['id']; ?>" selected><?php echo $client['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $client['id']; ?>"><?php echo $client['name']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_import_method'); ?></label>
			    <div class="col-sm-10">
				  <?php if($import_method == 'fba_air') { ?>
				    <div class="i-checks"><label><input type="radio" checked="" value="fba_air" name="import_method">&nbsp;<?php echo $this->lang->line('text_fba_air'); ?></label></div>
				    <div class="i-checks"><label><input type="radio" value="fba_ocean" name="import_method">&nbsp;<?php echo $this->lang->line('text_fba_ocean'); ?></label></div>
				  <?php } else if($import_method == 'fba_ocean') { ?>
				    <div class="i-checks"><label><input type="radio" value="fba_air" name="import_method">&nbsp;<?php echo $this->lang->line('text_fba_air'); ?></label></div>
				    <div class="i-checks"><label><input type="radio" checked="" value="fba_ocean" name="import_method">&nbsp;<?php echo $this->lang->line('text_fba_ocean'); ?></label></div>
				  <?php } else { ?>
				    <div class="i-checks"><label><input type="radio" value="fba_air" name="import_method">&nbsp;<?php echo $this->lang->line('text_fba_air'); ?></label></div>
				    <div class="i-checks"><label><input type="radio" value="fba_ocean" name="import_method">&nbsp;<?php echo $this->lang->line('text_fba_ocean'); ?></label></div>
				  <?php } ?>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
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
		      <div class="hr-line-dashed"></div>				
		    </div>
		  </div>
		  <div id="product" class="tab-pane">
		    <div class="panel-body">
			  <div class="table-responsive">
			    <table id="fba-product" class="table table-striped table-bordered table-hover">
				  <thead>
				    <tr>
					  <th class="text-left" style="width: 14%;"><?php echo $this->lang->line('column_fba_reference_number'); ?></th>
					  <th class="text-left" style="width: 14%;"><?php echo $this->lang->line('column_reference_number'); ?></th>
					  <th class="text-left" style="width: 10%;"><?php echo $this->lang->line('column_cbm'); ?></th>
					  <th class="text-left" style="width: 10%;"><?php echo $this->lang->line('column_quantity'); ?></th>
					  <th class="text-left" style="width: 10%;"><?php echo $this->lang->line('column_location'); ?></th>
					  <th class="text-left" style="width: 14%;"><?php echo $this->lang->line('column_fba_warehouse'); ?></th>
					  <th class="text-left" style="width: 14%;"><?php echo $this->lang->line('column_note'); ?></th>
					  <th></th>
				    </tr>
				  </thead>
				  <tbody>
				  <?php $fba_product_row = 0; ?>
				  <?php if($fba_products) { ?>
					<?php foreach ($fba_products as $fba_product) { ?>
					<tr id="fba-product-row<?php echo $fba_product_row; ?>">
					  <td class="text-right"><input type="text" name="fba_product[<?php echo $fba_product_row; ?>][fba_reference_number]" value="<?php echo $fba_product['fba_reference_number']; ?>" class="form-control" /></td>
					  <td class="text-right"><input type="text" name="fba_product[<?php echo $fba_product_row; ?>][reference_number]" value="<?php echo $fba_product['reference_number']; ?>" class="form-control" /></td>
					  <td class="text-right"><input type="text" name="fba_product[<?php echo $fba_product_row; ?>][cbm]" value="<?php echo $fba_product['cbm']; ?>" class="form-control" /></td>
					  <td class="text-right"><input type="text" name="fba_product[<?php echo $fba_product_row; ?>][quantity]" value="<?php echo $fba_product['quantity']; ?>" class="form-control" /></td>
					  <td class="text-right"><input type="text" name="fba_product[<?php echo $fba_product_row; ?>][location_name]" value="<?php echo $fba_product['location_name']; ?>" class="form-control" /><input type="hidden" name="fba_product[<?php echo $fba_product_row; ?>][location_id]" value="<?php echo $fba_product['location_id']; ?>" /></td>
					  <td class="text-right"><input type="text" name="fba_product[<?php echo $fba_product_row; ?>][fba_warehouse_name]" value="<?php echo $fba_product['fba_warehouse_name']; ?>" class="form-control" /><input type="hidden" name="fba_product[<?php echo $fba_product_row; ?>][fba_warehouse_id]" value="<?php echo $fba_product['fba_warehouse_id']; ?>" /></td>
					  <td class="text-right"><textarea name="fba_product[<?php echo $fba_product_row; ?>][note]" class="form-control"><?php echo $fba_product['note']; ?></textarea></td>					  
					  <td class="text-center"><button type="button" onclick="$('#fba-product-row<?php echo $fba_product_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					</tr>
					<?php $fba_product_row++; ?>
					<?php } ?>
				  <?php } ?>
				  </tbody>
				  <tfoot>
				    <tr>
					  <td colspan="7"></td>
					  <td class="text-center"><button type="button" onclick="addProduct();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
				    </tr>
				  </tfoot>
			    </table>
			  </div>
			</div>	
		  </div>
		  <div id="file" class="tab-pane">
		    <div class="panel-body">
			  <div class="table-responsive">
                <table id="fba_file" class="table table-striped table-bordered table-hover">
				  <thead>
					<tr>
					  <th class="text-left" style="width: 60%;"><?php echo $this->lang->line('column_name') ?></th>
					  <th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_action') ?></th>							
					</tr>
				  </thead>
				  <tbody>
					<?php $fba_file_row = 0; ?>
					<?php if(isset($fba_files)) { ?>
					  <?php foreach ($fba_files as $fba_file) { ?>
					  <tr id="fba-file-row<?php echo $fba_file_row; ?>">
					    <td class="text-left">
						  <?php echo $fba_file['name']; ?>
						  <input type="hidden" name="fba_file[<?php echo $fba_file_row; ?>][name]" value="<?php echo $fba_file['name']; ?>" />
						  <input type="hidden" name="fba_file[<?php echo $fba_file_row; ?>][path]" value="<?php echo $fba_file['path']; ?>"/>
						</td>
					    <td class="text-center">
						  <a class="btn btn-info btn-download" href="<?php echo $fba_file['url']; ?>" download><i class="fa fa-download"></i></a>
						  <button type="button" onclick="$('#fba-file-row<?php echo $fba_file_row; ?>').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button>
						</td>
					  </tr>
					  <?php $fba_file_row++; ?>
					  <?php } ?>
					<?php } ?>
				  </tbody>
				  <tfoot>
					<tr>
					  <td></td>
					  <td class="text-left"><button type="button" onclick="add_fba_file();" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					</tr>
				  </tfoot>
                </table>
              </div> 
			</div>
		  </div>
		  <div id="fee" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <div class="col-sm-12">
				  <select name="fee_code" class="form-control">
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
function locationAutocomplete(fba_product_row) {
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
	locationAutocomplete(index);
});
</script>
<script>
var fba_product_row = <?php echo $fba_product_row; ?>;

function addProduct() {
	html  = '<tr id="fba-product-row' + fba_product_row + '">';
	html += '<td class="text-right"><input type="text" name="fba_product[' + fba_product_row + '][fba_reference_number]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="fba_product[' + fba_product_row + '][reference_number]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="fba_product[' + fba_product_row + '][cbm]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="fba_product[' + fba_product_row + '][quantity]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="fba_product[' + fba_product_row + '][location_name]" value="" class="form-control" /><input type="hidden" name="fba_product[' + fba_product_row + '][location_id]" value="" /></td>';
	html += '<td class="text-right"><input type="text" name="fba_product[' + fba_product_row + '][fba_warehouse_name]" class="form-control" /><input type="hidden" name="fba_product[' + fba_product_row + '][fba_warehouse_id]" value="" /></td>';
	html += '<td class="text-right"><textarea name="fba_product[' + fba_product_row + '][note]" class="form-control" /></textarea></td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#fba-product-row' + fba_product_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#product tbody').append(html);
	
	locationAutocomplete(fba_product_row);
	
	fbaWarehouseAutocomplete(fba_product_row);

	fba_product_row ++;
}
</script>
<script>
function fbaWarehouseAutocomplete(fba_product_row) {
	$('input[name=\'fba_product[' + fba_product_row + '][fba_warehouse_name]\']').autocomplete({
		'source': function(request, response) {
			fba_warehouse_name = $('input[name=\'fba_product[' + fba_product_row + '][fba_warehouse_name]\']').val();
						
			$.ajax({
				url: '<?php echo base_url(); ?>fba/fba_warehouse/autocomplete?fba_warehouse_name=' + fba_warehouse_name,
				dataType: 'json',
				success: function(json) {
					if(json.success)
					{
						response($.map(json.fba_warehouses, function(fba_warehouse) {					
							return {
								label:       	  fba_warehouse['name'],
								fba_warehouse_id: fba_warehouse['fba_warehouse_id'],
								name:             fba_warehouse['name']
							}
						}));
					}
				}
			});	
		},
		'select': function(event, ui) {		
			$('input[name=\'fba_product[' + fba_product_row + '][fba_warehouse_name]\']').val(ui.item.name);
			$('input[name=\'fba_product[' + fba_product_row + '][fba_warehouse_id]\']').val(ui.item.fba_warehouse_id);
		}
	});
}

$('#fba-product tbody tr').each(function(index, element) {
	fbaWarehouseAutocomplete(index);
});
</script>
<script>
function locationAutocomplete(fba_product_row) {
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
	locationAutocomplete(index);
});
</script>
<script>
$(document).ready(function() {
	$('select[name=\'type\']').on('change', function() {		
		if((this.value == 'fba_warehouse')||(this.value == 'personal_address')) {
			$('#address').show();
		} else {
			$('#address').hide();
		}
	});
});
</script>
<script>
fba_file_row = <?php echo $fba_file_row; ?>;

function add_fba_file() {
	html  = '<tr id="fba-file-row' + fba_file_row + '">';
	html += '<td id="fba-file-td' + fba_file_row + '">';
	html += '<form class="upload-box" id="dropzone' + fba_file_row + '">';
	html += '<input type="hidden" name="fba_file[' + fba_file_row + '][path]">';
	html += '</form>';
	html += '</td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#fba-file-row' + fba_file_row  + '\').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#fba_file tbody').append(html);
	
	$("#dropzone" + fba_file_row).dropzone({
		url: "<?php echo base_url(); ?>fba/fba_ajax/upload_file",
		previewTemplate: "<div class='dz-progress'><span class='dz-upload' data-dz-uploadprogress></div>",
		success: function(file, response){
			html = response.name;
			html += '<input type="hidden" name="fba_file[' + fba_file_row + '][name]" value="' + response.name + '">';						
			html += '<input type="hidden" name="fba_file[' + fba_file_row + '][path]" value="' + response.path + '">';			
			$('#fba-file-td' + fba_file_row).html(html);	
			
			fba_file_row++;	
		}
	});
}
</script>
<script>
$(document).ready(function () {
	$('.i-checks').iCheck({
		checkboxClass: 'icheckbox_square-green',
		radioClass: 'iradio_square-green',
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
		