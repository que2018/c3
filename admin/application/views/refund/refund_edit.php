<link href="<?php echo base_url(); ?>assets/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">  
<link href="<?php echo base_url(); ?>assets/css/app/refund/refund_edit.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/plugins/summernote/summernote.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/refund/refund_edit.css" rel="stylesheet">
<script src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/summernote/summernote.min.js"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $refund_edit_title; ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>refund/refund"><?php echo $this->lang->line('text_return'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_return_edit'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>refund/refund_print?refund_id=<?php echo $refund_id; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_print'); ?>" class="btn btn-info btn-print" target="_blank"><i class="fa fa-print"></i></a>
	<a href="<?php echo base_url(); ?>refund/refund" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
	<form method="post" action="<?php echo base_url(); ?>refund/refund/edit?refund_id=<?php echo $refund_id; ?>" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
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
						  <option value="2"><?php echo $this->lang->line('text_completed_damage'); ?></option>
						  <option value="3"><?php echo $this->lang->line('text_completed_inventory'); ?></option>
						  <?php } else if($status == 2) { ?>
						  <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
						  <option value="2" selected><?php echo $this->lang->line('text_completed_damage'); ?></option>
						  <option value="3"><?php echo $this->lang->line('text_completed_inventory'); ?></option>
						  <?php } else if($status == 3) { ?>
						  <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
						  <option value="2"><?php echo $this->lang->line('text_completed_damage'); ?></option>
						  <option value="3" selected><?php echo $this->lang->line('text_completed_inventory'); ?></option>
						  <?php } else { ?>
						  <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
						  <option value="2"><?php echo $this->lang->line('text_completed_damage'); ?></option>
						  <option value="3"><?php echo $this->lang->line('text_completed_inventory'); ?></option>
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
					  <table id="refund-product" class="table table-bordered">
					    <thead>
						  <tr>
						    <th style="width: 22%"><?php echo $this->lang->line('column_product_name'); ?></th>
						    <th style="width: 15%"><?php echo $this->lang->line('column_upc'); ?></th>
						    <th style="width: 15%"><?php echo $this->lang->line('column_sku'); ?></th>
						    <th style="width: 12%"><?php echo $this->lang->line('column_quantity'); ?></th>
						    <th style="width: 18%"><?php echo $this->lang->line('column_location'); ?></th>
							<th></th>
						  </tr>
					    </thead>
					    <tbody>
						  <?php $refund_product_row = 0; ?>
						  <?php if($refund_products) { ?>
						    <?php foreach($refund_products as $refund_product) { ?>
						    <tr id="row<?php echo $refund_product_row; ?>">
						    <td class="text-left"><input name="refund_product[<?php echo $refund_product_row; ?>][product_id]" type="hidden" value="<?php echo $refund_product['product_id']; ?>"><div class="text-left"><?php echo $refund_product['name']; ?></div></td>
						    <td class="text-left"><?php echo $refund_product['upc']; ?></td>
						    <td class="text-left"><?php echo $refund_product['sku']; ?></td>
						    <td><input class="form-control text-center" name="refund_product[<?php echo $refund_product_row; ?>][quantity]" value="<?php echo $refund_product['quantity']; ?>"></td>
							<td>
							  <input class="form-control" name="refund_product[<?php echo $refund_product_row; ?>][location_name]" value="<?php echo $refund_product['location_name']; ?>">
							  <input type="hidden" name="refund_product[<?php echo $refund_product_row; ?>][location_id]" value="<?php echo $refund_product['location_id']; ?>">
							</td>
							<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i id="<?php echo $refund_product_row; ?>" class="fa fa-minus-circle"></i></button></td>
						    <?php $refund_product_row ++; ?>
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
		  <div id="note" class="tab-pane">
			<div class="panel-body tab-panel">
		      <div class="form-group">
			    <div class="col-sm-12"><textarea name="note" rows="8" cols="50" class="form-control summernote"><?php echo $note; ?></textarea></div>
			  </div>
		      <div class="hr-line-dashed"></div>
		    </div>
		  </div>
		</div>
      </div>
	</form>
	</div>
  </div>  
</div>
<script>
function locationautocomplete(refund_product_row) {
	$('input[name=\'refund_product[' + refund_product_row + '][location_name]\']').autocomplete({
		'source': function(request, response) {
			location_name = $('input[name=\'refund_product[' + refund_product_row + '][location_name]\']').val();
						
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
			$('input[name=\'refund_product[' + refund_product_row + '][location_name]\']').val(ui.item.name);
			$('input[name=\'refund_product[' + refund_product_row + '][location_id]\']').val(ui.item.location_id);
		}
	});
}
</script>
<script>
$(document).ready(function() {

	refund_product_row = <?php echo $refund_product_row; ?>;
	
	$('input[name=\'code\']').autocomplete({  
		'source': function(request, response) {
			code = $('input[name=\'code\']').val();
					
			data = new FormData();
			data.append('code', code);
			
			$.ajax({
				url: '<?php echo base_url(); ?>refund/refund_ajax/get_product',
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
			
			new_tr = $('<tr id="row_' + refund_product_row + '"></tr>');
			
			html  = '<td><input class="product_id" name="refund_product[' + refund_product_row + '][product_id]" type="hidden" value="' + product.product_id + '"><div class="text-left">' + product.name + '</div></td>';
			html += '<td class="text-left">' + product.upc + '</div></td>';
			html += '<td class="text-left">' + product.sku + '</div></td>';
			html += '<td><input class="form-control text-center" name="refund_product[' + refund_product_row + '][quantity]" type="text" value="1" onClick="this.select();"></td>';
			html += '<td>';
			html += '<input name="refund_product[' + refund_product_row + '][location_name]" class="form-control">';
			html += '<input type="hidden" name="refund_product[' + refund_product_row + '][location_id]">';
			html += '</td>';
			html += '<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i class="fa fa-minus-circle"></i></button></td>';
			
			new_tr.html(html);
			
			$("#refund-product").append(new_tr);
			
			locationautocomplete(refund_product_row);
			
			refund_product_row++;
			
			$(this).val(''); 
			
			return false;
		}
	});
	
	$('#refund-product tbody tr').each(function(index, element) {
		locationautocomplete(index);
	});
	
	//remove product
	$('#refund-product').on('click', '.btn-delete', function() {		
		$(this).closest('tr').remove();		
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
<script>
$(document).ready(function() {
	$(document).keypress(function (e) {
		if(e.which == 13) {
			$('.form-horizontal').submit();
			return false;    
		}
	});
});
</script>
		
		