<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_product_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_product'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_product_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>catalog/product" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
    <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	<form method="post" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li><a data-toggle="tab" href="#length-weight"><?php echo $this->lang->line('tab_length_weight'); ?></a></li>
		  <li><a data-toggle="tab" href="#shipping"><?php echo $this->lang->line('tab_shipping'); ?></a></li>
		  <li><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
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
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_upc'); ?></label>
                <div class="col-sm-10"><input type="text" name="upc" value="<?php echo $upc; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sku'); ?></label>
                <div class="col-sm-10"><input type="text" name="sku" value="<?php echo $sku; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_asin'); ?></label>
                <div class="col-sm-10"><input type="text" name="asin" value="<?php echo $asin; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10"><input type="text" name="name" value="<?php echo $name; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_image'); ?></label>
                <div class="col-sm-10">
				  <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" data-placeholder="<?php echo $placeholder; ?>" /></a>
				  <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />				
                </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_price'); ?></label>
                <div class="col-sm-10">
				  <div class="input-group">
				    <span class="input-group-addon">$</span> 
					<input type="text" name="price" value="<?php echo $price; ?>" class="form-control"> 
				  </div>	
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_alert_quantity'); ?></label>
                <div class="col-sm-10"><input type="text" name="alert_quantity" value="<?php echo $alert_quantity; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="length-weight" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length'); ?></label>
                <div class="col-sm-10"><input type="text" name="length" value="<?php echo $length; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_width'); ?></label>
                <div class="col-sm-10"><input type="text" name="width" value="<?php echo $width; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_height'); ?></label>
                <div class="col-sm-10"><input type="text" name="height" value="<?php echo $height; ?>" class="form-control"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
              <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length_class'); ?></label>
                <div class="col-sm-10">
				  <select name="length_class_id" class="form-control">
				    <?php if($length_class_id) { ?>
					  <?php foreach($length_classes as $length_class) { ?>
					    <?php if($length_class['id'] == $length_class_id) { ?>
					    <option value="<?php echo $length_class['id']; ?>" selected><?php echo $length_class['unit']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $length_class['id']; ?>"><?php echo $length_class['unit']; ?></option>
					  <?php } ?>
					<?php } ?>
					<?php } else { ?>
					  <?php foreach($length_classes as $length_class) { ?>
					    <?php if($length_class['id'] == $this->config->item('config_length_class_id')) { ?>
					    <option value="<?php echo $length_class['id']; ?>" selected><?php echo $length_class['unit']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $length_class['id']; ?>"><?php echo $length_class['unit']; ?></option>
					    <?php } ?>
					  <?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_weight'); ?></label>
                <div class="col-sm-10"><input type="text" name="weight" value="<?php echo $weight; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
              <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_weight_class'); ?></label>
			    <div class="col-sm-10">
				  <select name="weight_class_id" class="form-control">
				    <?php if($weight_class_id) { ?>
					  <?php foreach($weight_classes as $weight_class) { ?>
					    <?php if($weight_class['id'] == $weight_class_id) { ?>
					    <option value="<?php echo $weight_class['id']; ?>" selected><?php echo $weight_class['unit']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $weight_class['id']; ?>"><?php echo $weight_class['unit']; ?></option>
					  <?php } ?>
					<?php } ?>
					<?php } else { ?>
					  <?php foreach($weight_classes as $weight_class) { ?>
					    <?php if($weight_class['id'] == $this->config->item('config_weight_class_id')) { ?>
					    <option value="<?php echo $weight_class['id']; ?>" selected><?php echo $weight_class['unit']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $weight_class['id']; ?>"><?php echo $weight_class['unit']; ?></option>
					    <?php } ?>
					  <?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div>				
			  <div class="hr-line-dashed"></div>  			  
			</div>
		  </div>
		  <div id="shipping" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_provider'); ?></label>
                <div class="col-sm-10">
				  <select name="shipping_provider" class="form-control">
				    <option value=""></option>
				    <?php foreach($shipping_providers as $provider) { ?>
					<?php if($provider['code'] == $shipping_provider) { ?>
					<option value="<?php echo $provider['code']; ?>" selected><?php echo $provider['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $provider['code']; ?>"><?php echo $provider['name']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_service'); ?></label>
                <div class="col-sm-10">
				  <select name="shipping_service" class="form-control">
				    <option value=""></option>
				    <?php foreach($shipping_services as $service) { ?>
					<?php if($service['code'] == $shipping_service) { ?>
					<option value="<?php echo $service['code']; ?>" selected><?php echo $service['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $service['code']; ?>"><?php echo $service['name']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>  	
			</div>
		  </div>
		  <div id="fee" class="tab-pane">
		    <div class="panel-body">
			  <div class="table-responsive">
                <table id="product-fees" class="table table-striped table-bordered table-hover">
				  <thead>
					<tr>
					<td class="text-left" style="width: 28%;"><?php echo $this->lang->line('column_name') ?></td>
					<td class="text-left" style="width: 28%;"><?php echo $this->lang->line('column_type') ?></td>
					<td class="text-left" style="width: 28%;"><?php echo $this->lang->line('column_amount') ?></td>							
					<td></td>
					</tr>
				  </thead>
				  <tbody>
					<?php $product_fee_row = 0; ?>
					<?php if($product_fees) { ?>
					  <?php foreach($product_fees as $product_fee) { ?>
					  <tr id="product-fee-row<?php echo $product_fee_row; ?>">
					    <td class="text-right"><input type="text" name="product_fee[<?php echo $product_fee_row; ?>][name]" value="<?php echo $product_fee['name']; ?>" class="form-control" /></td>
					    <td>
						  <select name="product_fee[<?php echo $product_fee_row; ?>][type]" class="form-control">
							<?php if($product_fee == 1) { ?>
							  <option value="1" selected><?php echo $this->lang->line('text_checkin'); ?></option>
							  <option value="2"><?php echo $this->lang->line('text_checkout'); ?></option>
							<?php } else { ?>
							  <option value="1"><?php echo $this->lang->line('text_checkin'); ?></option>
							  <option value="2" selected><?php echo $this->lang->line('text_checkout'); ?></option>
							<?php } ?>
						  </select>
						</td>
						<td class="text-right"><div class="input-group"><span class="input-group-addon">$</span><input type="text" name="product_fee[<?php echo $product_fee_row; ?>][amount]" value="<?php echo $product_fee['amount']; ?>" class="form-control" /></div></td>
					    <td class="text-left"><button type="button" onclick="$('#fee-row<?php echo $product_fee_row; ?>').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					  </tr>
					  <?php $product_fee_row++; ?>
					  <?php } ?>
					<?php } ?>
				  </tbody>
				  <tfoot>
					<tr>
					  <td colspan="3"></td>
					  <td class="text-left"><button type="button" onclick="add_product_fee();" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					</tr>
				  </tfoot>
                </table>
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
$(document).ready(function() {
	$('select[name=\'shipping_provider\']').on('change', function() {
		code = $(this).val();
	
		if(code) 
		{
			$.ajax({
				url: '<?php echo base_url(); ?>extension/shipping/get_shipping_services?code=' + code,
				dataType: "json",
				beforeSend: function() {
					$('#alert-error').hide();
				},
				success: function(json) {					
					if(json.success) 
					{	
						shipping_service_html = '';
					
						$.each(json.shipping_services, function(index, shipping_serivce) {							
							shipping_service_html += '<option value="'+ shipping_serivce.code +'">' + shipping_serivce.name + '</option>';
						});
				
						$('select[name=\'shipping_service\']').html(shipping_service_html);
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
		else 
		{
			$('select[name=\'shipping_service\']').html('');
		}
			
	});
});
</script>
<script>
product_fee_row = <?php echo $product_fee_row; ?>;

function add_product_fee() {
	html  = '<tr id="product-fee-row' + product_fee_row + '">';
	html += '<td class="text-right"><input type="text" name="product_fee[' + product_fee_row + '][name]" value="" class="form-control" /></td>';
	html += '<td><select name="product_fee[' + product_fee_row + '][type]" class="form-control">';
	html += '<option value="1"><?php echo $this->lang->line('text_checkin'); ?></option>';
	html += '<option value="2"><?php echo $this->lang->line('text_checkout'); ?></option>';
	html += '</select></td>';
	html += '<td class="text-right"><div class="input-group"><span class="input-group-addon">$</span><input type="text" name="product_fee[' + product_fee_row + '][amount]" value="" class="form-control" /></div></td>';
	html += '<td class="text-left"><button type="button" onclick="$(\'#product-fee-row' + product_fee_row  + '\').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#product-fees tbody').append(html);

	product_fee_row++;
}
</script>
<?php echo $footer; ?>		
		