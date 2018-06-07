<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_checkin_scan'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkout"><?php echo $this->lang->line('text_checkin'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkin_scan'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
	<button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_check_in'); ?>" class="btn btn-primary btn-generate" onclick="submit()"><i class="fa fa-play"></i></button>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
    <div class="col-lg-12">
	  <div class="ibox-content">
	    <form class="form-horizontal">
		  <div class="row">
			<div class="col-lg-12">
			  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-success').hide()">&times;</button></div>
			  <div id="alert-warning" class="alert alert-warning" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-warning').hide()">&times;</button></div>
			  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
			</div>
		  </div>
		  <div class="row">
			<div class="col-lg-12">
			  <div class="code-box">
				<input name="code" value="" placeholder="<?php echo $this->lang->line('text_checkin_scan_hint'); ?>">
		      </div>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-lg-6">     
		      <div class="form-group">
			   <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
			   <div class="col-sm-10"><input name="tracking" value="" class="form-control"></div>
			  </div>
			</div>
		    <div class="col-lg-6">     
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			    <div class="col-sm-10">
			       <select name="status" class="form-control">
				     <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
				     <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
				  </select>
			    </div>
			  </div>
			</div>
		    <div class="col-lg-12">     
			  <table id="ptable" class="table table-bordered">
			    <thead>
				  <tr>
				    <th style="width: 20%"><?php echo $this->lang->line('column_product_name'); ?></th>
				    <th style="width: 14%"><?php echo $this->lang->line('column_upc'); ?></th>
					<th style="width: 14%"><?php echo $this->lang->line('column_sku'); ?></th>
					<th style="width: 14%"><?php echo $this->lang->line('column_batch'); ?></th>
					<th style="width: 8%"><?php echo $this->lang->line('column_quantity'); ?></th>
					<th style="width: 14%"><?php echo $this->lang->line('column_location'); ?></th>
					<th></th>
				  </tr>
			    </thead>
			    <tbody>
			    </tbody>
			  </table>  
			</div>
		  </div>		
		</form>
	  </div>
	</div>
  </div>  
</div>
<script>
function locationautocomplete(checkin_product_row) {
	$('input[name=\'checkin_product[' + checkin_product_row + '][location_name]\']').autocomplete({
		'source': function(request, response) {
			location_name = $('input[name=\'checkin_product[' + checkin_product_row + '][location_name]\']').val();
						
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
			$('input[name=\'checkin_product[' + checkin_product_row + '][location_name]\']').val(ui.item.name);
			$('input[name=\'checkin_product[' + checkin_product_row + '][location_id]\']').val(ui.item.location_id);
		}
	});
}
</script>
<script>
$(document).ready(function() {	
	checkin_product_row = 0;
	
	//get product
	$('input[name=\'code\']').on('input',function(e){
		code = $(this).val();
				
		data = new FormData();
		data.append('code', code);
		
		$.ajax({
			url: '<?php echo base_url(); ?>check/checkin_scan/get_product_or_location',
			type: 'post',
			data: data,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$('#alert-error').hide();
			},
			success: function(json) {
				if(json.success)
				{
					if(json.is_product)
					{
						new_tr = $('<tr id="row_' + checkin_product_row + '"></tr>');
				
						html  = '<td><input class="product_id" name="checkin_product[' + checkin_product_row + '][product_id]" type="hidden" value="' + json.product.product_id + '"><div class="text-left">' + json.product.name + '</div></td>';
						html += '<td class="text-left">' + json.product.upc + '</div></td>';
						html += '<td class="text-left">' + json.product.sku + '</div></td>';
						html += '<td><input class="form-control" name="checkin_product[' + checkin_product_row + '][batch]" type="text"></td>';
						html += '<td><input class="form-control text-center" name="checkin_product[' + checkin_product_row + '][quantity]" type="text" value="1" onClick="this.select();"></td>';
						html += '<td>';
						html += '<input name="checkin_product[' + checkin_product_row + '][location_name]" class="form-control location-name">';
						html += '<input type="hidden" name="checkin_product[' + checkin_product_row + '][location_id]" class="location-id">';
						html += '</td>';
						html += '<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i class="fa fa-minus-circle"></i></button></td>';
						
						new_tr.html(html);
						
						$("#ptable").append(new_tr);
						
						locationautocomplete(checkin_product_row);
						
						checkin_product_row++;
					}
					
					if(json.is_location)
					{					
						$('table tr:last').find('.location-id').val(json.location.location_id);
						$('table tr:last').find('.location-name').val(json.location.location_name);
					}
					
					$('input[name=\'code\']').val('');
				}
			}
		});
	});
	
	//remove product
	$('#ptable').on('click', '.btn-delete', function() {		
		$(this).closest('tr').remove();		
	});
});
</script>
<script>
function submit() {
	$.ajax({
		url: '<?php echo base_url(); ?>check/checkin_scan/add_checkin',
		type: 'post',
		data: $('.form-horizontal').serialize(),
		dataType: 'json',
		success: function(json) {
			if(json.success)
			{
				$('input[name=\'code\']').val('');
				$('input[name=\'tracking\']').val('');
				$('table tbody').html('');
				
				$('#alert-error').hide();
				
				$('#alert-success span').html(json.message);		
				$('#alert-success').show();
				
				$('#alert-success').delay(1500).slideUp(500);
			}
			else
			{
				$('#alert-error span').html(json.message);		
				$('#alert-error').show();
			}
		}
	});
}
</script>
<?php echo $footer; ?>




