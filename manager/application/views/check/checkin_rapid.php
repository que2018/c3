<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">  
<link href="<?php echo base_url(); ?>assets/css/app/check/checkin_rapid.css" rel="stylesheet"> 
<script src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_checkin_rapid'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkin"><?php echo $this->lang->line('text_checkin'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkin_rapid'); ?></strong></li>
	</ol>
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
	  <div class="ibox-content">
	    <div class="form-horizontal">
		  <div class="row">
			<div class="col-lg-12">
			  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-success').hide()">&times;</button></div>
			  <div id="alert-warning" class="alert alert-warning" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-warning').hide()">&times;</button></div>
			  <div id="alert-error" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
			</div>
		  </div>
		  <div class="row">
			<div class="col-lg-12">
			  <div class="code-box">
				<input name="code" placeholder="<?php echo $this->lang->line('text_checkin_rapid_hint'); ?>" class="form-control">
		      </div>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-lg-6">     
		      <div class="form-group">
			   <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_checkin_id'); ?></label>
			   <div class="col-sm-10"><input name="checkin_id" class="form-control" disabled></div>
			  </div>
			</div>
		    <div class="col-lg-6">     
		      <div class="form-group">
			   <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
			   <div class="col-sm-10"><input name="tracking" class="form-control" disabled></div>
			  </div>
			</div>
		    <div class="col-lg-12">     
			  <table id="ptable" class="table table-bordered">
			    <thead>
				  <tr>
				   <th style="width: 20%"><?php echo $this->lang->line('column_product_name'); ?></th>
				   <th style="width: 20%"><?php echo $this->lang->line('column_upc'); ?></th>
				   <th style="width: 20%"><?php echo $this->lang->line('column_sku'); ?></th>
				   <th style="width: 20%"><?php echo $this->lang->line('column_quantity'); ?></th>
				   <th style="width: 20%"><?php echo $this->lang->line('column_location'); ?></th>
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
$(document).ready(function() {
	$('input[name=\'code\']').keydown(function(e) {
		if(e.keyCode == 13) {
			checkin_id = $('input[name=\'checkin_id\']').val();
			
			if(checkin_id) 
			{
				$.ajax({
					url: '<?php echo base_url(); ?>check/checkin_rapid/complete?checkin_id=' + checkin_id,
					dataType: 'json',
					beforeSend: function() {
						$('.alert').hide();
					},
					success: function(json) {					
						if(json.success) 
						{
							$('#alert-success span').html(json.message);		
							$('#alert-success').show();
						}
						else 
						{
							if(json.level == 1) {
								$('#alert-warning span').html(json.message);
								$('#alert-warning').show();
							}	

							if(json.level == 2) {
								$('#alert-error span').html(json.message);
								$('#alert-error').show();
							}								
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {
						console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			} 
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$('input[name=\'code\']').on('input', function() { 
	
		code = $(this).val();
	
		$.ajax({
			url: '<?php echo base_url(); ?>check/checkin_rapid/get_checkin?code=' + code,
			dataType: 'json',
			success: function(json) {
				if(json.success)
				{
					$('input[name=\'checkin_id\']').val(json.checkin.checkin_id);
					$('input[name=\'tracking\']').val(json.checkin.tracking);
					
					html = '';
					
					$.each(json.checkout_products, function(index, checkout_product) {
						html += '<tr>';
						html += '<td class="text-left">' + checkout_product.name + '</td>';
						html += '<td class="text-left">' + checkout_product.upc + '</td>';
						html += '<td class="text-left">' + checkout_product.sku + '</td>';
						html += '<td class="text-left">' + checkout_product.quantity + '</td>';
						html += '<td><select>';
						
						$.each(checkout_product.checkout_locations, function(index, checkout_location) {
							html += '<option value=""></option>';

							if(checkout_location.location_id == checkout_product.location_id)
								html += '<option value="' + checkout_product.location_id + '" select>' + checkout_product.location_name + '</option>';
							else 
								html += '<option value="' + checkout_product.location_id + '">' + checkout_product.location_name + '</option>';
						}
						
						html += '</select></td>';
						html += '</tr>';
					});
													
					$('#ptable tbody').html(html);
				}
				else
				{
					$('input[name=\'checkin_id\']').val('');
					$('input[name=\'tracking\']').val('');
					
					$('#ptable tbody').html('');
				}
			}
		});
	});	
});
</script>
