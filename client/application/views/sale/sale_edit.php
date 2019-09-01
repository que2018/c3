<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo sprintf($this->lang->line('text_order_edit_id'), $sale_id); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('text_order'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_order_edit'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
	<button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_print_label'); ?>" class="btn btn-print" onclick="print_label()"><i class="fa fa-file-image-o"></i></button>   
    <a href="<?php echo base_url(); ?>sale/sale" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_return'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>	
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
    <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	<form method="post" action="<?php echo base_url(); ?>sale/sale/edit?sale_id=<?php echo $sale_id; ?>" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#customer"><?php echo $this->lang->line('tab_customer'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#product"><?php echo $this->lang->line('tab_product'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#shipping"><?php echo $this->lang->line('tab_shipping'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#label"><?php echo $this->lang->line('tab_label'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#store"><?php echo $this->lang->line('tab_store'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
                <div class="col-sm-10"><input type="text" name="tracking" value="<?php echo $tracking; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_note'); ?></label>
                <div class="col-sm-10"><textarea name="note" rows="6" cols="50" class="form-control summernote"><?php echo $note; ?></textarea></div>
              </div>
			  <div class="hr-line-dashed"></div>			  
			</div>
		  </div>
		  <div id="customer" class="tab-pane">
			<div class="panel-body">
			   <div class="form-group">
		          <label class="col-sm-2 control-label label-customer"><?php echo $this->lang->line('entry_select'); ?></label>
                  <div class="col-sm-10"><input type="text" name="customer_name" class="form-control"></div>
                </div>
			    <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10"><input type="text" name="name" value="<?php echo $name; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
                <div class="col-sm-10"><input type="text" name="street" value="<?php echo $street; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
                <div class="col-sm-10"><input type="text" name="street2" value="<?php echo $street2; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
                <div class="col-sm-10"><input type="text" name="city" value="<?php echo $city; ?>" class="form-control"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
                <div class="col-sm-10"><input type="text" name="state" value="<?php echo $state; ?>" class="form-control"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
                <div class="col-sm-10"><input type="text" name="country" value="<?php echo $country; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_zipcode'); ?></label>
                <div class="col-sm-10"><input type="text" name="zipcode" value="<?php echo $zipcode; ?>" class="form-control"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_email'); ?></label>
                <div class="col-sm-10"><input type="text" name="email" value="<?php echo $email; ?>" class="form-control"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
                <div class="col-sm-10"><input type="text" name="phone" value="<?php echo $phone; ?>" class="form-control"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="product" class="tab-pane">
			<div class="panel-body">
			  <div class="code-box">
			    <input name="code" placeholder="<?php echo $this->lang->line('text_code_hint'); ?>" class="form-control">
			  </div>
			  <table id="sale-product" class="table table-bordered">
			    <thead>
				  <tr>
				    <th style="width: 22%"><?php echo $this->lang->line('column_product_name'); ?></th>
				    <th style="width: 22%"><?php echo $this->lang->line('column_upc'); ?></th>
				    <th style="width: 22%"><?php echo $this->lang->line('column_sku'); ?></th>
				    <th style="width: 18%"><?php echo $this->lang->line('column_quantity'); ?></th>
				    <th></th>
				  </tr>
			    </thead>
			    <tbody>
				  <?php $sale_product_row = 0; ?>
				  <?php if($sale_products) { ?>
				    <?php foreach($sale_products as $sale_product) { ?>
				    <tr id="row<?php echo $sale_product_row; ?>">
				    <td class="text-left"><input name="sale_product[<?php echo $sale_product_row; ?>][product_id]" type="hidden" class="product_id" value="<?php echo $sale_product['product_id']; ?>"><div style="text-align:left;"><?php echo $sale_product['name']; ?></div></td>
				    <td class="text-left"><?php echo $sale_product['upc']; ?></td>
				    <td class="text-left"><?php echo $sale_product['sku']; ?></td>
				    <td><input class="form-control text-center quantity" name="sale_product[<?php echo $sale_product_row; ?>][quantity]" value="<?php echo $sale_product['quantity']; ?>" onClick="this.select();"></td>
					<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i id="<?php echo $sale_product_row; ?>" class="fa fa-minus-circle"></i></button></td>
				    <?php $sale_product_row ++; ?>
				    <?php } ?>
				  <?php } ?>
			    </tbody>
			  </table> 	
			</div>
		  </div>
		  <div id="shipping" class="tab-pane">
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
		  <div id="label" class="tab-pane">
		    <div class="panel-body">
			  <div class="table-responsive">
                <table id="sale_label" class="table table-striped table-bordered table-hover">
				  <thead>
					<tr>
					  <th class="text-left" style="width: 30%;"><?php echo $this->lang->line('column_label') ?></th>
					  <th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_tracking') ?></th>							
					  <th></th>
					</tr>
				  </thead>
				  <tbody>
					<?php $sale_label_row = 0; ?>
					<?php if($sale_labels) { ?>
					  <?php foreach ($sale_labels as $sale_label) { ?>
					  <tr id="sale-label-row<?php echo $sale_label_row; ?>">
					    <td class="text-right" style="padding: 20px;">
						  <?php if($sale_label['ext']) { ?>
						  <embed src="<?php echo $sale_label['link']; ?>" width="560px" height="700px" />
						  <?php } else { ?>
						  <img src="<?php echo $sale_label['link']; ?>" class="label-img" />
						  <?php } ?>
						  <input type="hidden" name="sale_label[<?php echo $sale_label_row; ?>][path]" value="<?php echo $sale_label['path']; ?>"/>
						</td>
					    <td class="text-right"><div class="input-group"><span class="input-group-addon">#</span><input type="text" name="sale_label[<?php echo $sale_label_row; ?>][tracking]" value="<?php echo $sale_label['tracking']; ?>" class="form-control" /></div></td>
					    <td class="text-center">
						  <a class="btn btn-info btn-download" href="<?php echo $sale_label['link']; ?>" download><i class="fa fa-download"></i></a>
						</td>
					  </tr>
					  <?php $sale_label_row++; ?>
					  <?php } ?>
					<?php } ?>
				  </tbody>
                </table>
              </div> 
			</div>
		  </div>
		  <div id="store" class="tab-pane">
			<div class="panel-body">
		      <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store'); ?></label>
                <div class="col-sm-10">
				  <select name="store_id" name="store_id" class="form-control">
				    <?php foreach($stores as $store) { ?>
				    <?php if($store['store_id'] == $store_id) { ?>
				    <option value="<?php echo $store['store_id']; ?>" selected><?php echo $store['name']; ?></option>
				    <?php } else { ?>
				    <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
				    <?php } ?>
				    <?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store_order_id'); ?></label>
                <div class="col-sm-10"><input type="text" name="store_sale_id" value="<?php echo $store_sale_id; ?>" class="form-control"></div>
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
function print_label() {
	url = '<?php echo base_url();?>sale/label?sale_id=<?php echo $sale_id; ?>';		
	window.open(url, 'print_label', 'width=580, height=750, left=50, top=50');
}
</script>
<script>
function refresh_volume() {
	data = new FormData();
		
	$('#sale-product tbody tr').each(function(index) {
		product_id = $(this).find('.product_id').val();
		quantity = $(this).find('.quantity').val();
		
		data.append('sale_product[' + product_id + ']', quantity);
	});

	$.ajax({
		url: '<?php echo base_url(); ?>sale/sale_ajax/get_sale_products_volume',
		type: 'post',
		data: data,
		cache: false,
		contentType: false,
		processData: false,
		dataType: 'json',
		success: function(json) {					
			$('input[name=\'length\']').val(json.length);
			$('input[name=\'width\']').val(json.width);
			$('input[name=\'height\']').val(json.height);
			$('select[name=\'length_class_id\']').val(json.length_class_id);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function refresh_weight() {
	data = new FormData();
		
	$('#sale-product tbody tr').each(function(index) {
		product_id = $(this).find('.product_id').val();
		quantity = $(this).find('.quantity').val();	

		data.append('sale_product[' + product_id + ']', quantity);		
	});
	
	$.ajax({
		url: '<?php echo base_url(); ?>sale/sale_ajax/get_sale_products_weight',
		type: 'post',
		data: data,
		cache: false,
		contentType: false,
		processData: false,
		dataType: 'json',
		success: function(json) {					
			$('input[name=\'weight\']').val(json.weight);
			$('select[name=\'weight_class_id\']').val(json.weight_class_id);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
$(document).ready(function() {
	sale_product_row = <?php echo $sale_product_row; ?>;
	
	$('input[name=\'code\']').autocomplete({  
		'source': function(request, response) {
			code = $('input[name=\'code\']').val();
					
			data = new FormData();
			data.append('code', code);
			
			$.ajax({
				url: '<?php echo base_url(); ?>sale/sale_ajax/get_product',
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
			
			if($('input[name$="[product_id]"][value="' + product.product_id + '"]').length > 0)
			{
				quantity = $('input[name$="[product_id]"][value="' + product.product_id + '"]').parent('td').parent('tr').find('input[name$="[quantity]"]');
				quantity.val(parseInt(quantity.val()) + 1);
			}
			else 
			{
				new_tr = $('<tr id="row_' + sale_product_row + '"></tr>');
			
				html  = '<td><input name="sale_product[' + sale_product_row + '][product_id]" type="hidden" class="product_id"  value="' + product.product_id + '"><div class="text-left">' + product.name + '</div></td>';
				html += '<td class="text-left">' + product.upc + '</div></td>';
				html += '<td class="text-left">' + product.sku + '</div></td>';
				html += '<td><input name="sale_product[' + sale_product_row + '][quantity]" class="form-control text-center quantity" type="text" value="1" onClick="this.select();"></td>';
				html += '<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i class="fa fa-minus-circle"></i></button></td>';
			
				new_tr.html(html);
			
				$('#sale-product').append(new_tr);
						
				sale_product_row++;
			}
			
			refresh_volume();
			refresh_weight();
			
			$(this).val(''); 
			
			return false;
		}
	});
	
	//remove product
	$('#sale-product').on('click', '.btn-delete', function() {		
		$(this).closest('tr').remove();	

		refresh_volume();
		refresh_weight();		
	});
});
</script>
<script>
$(document).ready(function() {
	$(document).on('input', '.quantity', function() {
		refresh_volume();
		refresh_weight();
	});
});
</script>
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
			shipping_service_html = '<option value=""><option>';

			$('select[name=\'shipping_service\']').html(shipping_service_html);
		}
	});
});
</script>
<script>
$('input[name=\'customer_name\']').autocomplete({
	'source': function(request, response) {
		customer_name = $('input[name=\'customer_name\']').val();
				
		data = new FormData();
		data.append('customer_name', customer_name);
		
		$.ajax({
			url: '<?php echo base_url(); ?>sale/customer/autocomplete',
			type: 'post',
			data: data,
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			success: function(json) {
				if(json.success)
				{
					response($.map(json.customers, function(item) {					
						return {
							label:     item['name'],
							name:      item['name'],
							street:    item['street'],
							street2:   item['street2'],
							city:      item['city'],
							state:     item['state'],
							country:   item['country'],
							zipcode:   item['zipcode'],
							email:     item['email'],
							phone:     item['phone']
						}
					}));
				}
			}
		});
	},
	'select': function(event, ui) {		
		$('input[name=\'name\']').val(ui.item.name);
		$('input[name=\'street\']').val(ui.item.street);
		$('input[name=\'street2\']').val(ui.item.street2);
		$('input[name=\'city\']').val(ui.item.city);
		$('input[name=\'state\']').val(ui.item.state);
		$('input[name=\'country\']').val(ui.item.country);
		$('input[name=\'zipcode\']').val(ui.item.zipcode);
		$('input[name=\'email\']').val(ui.item.email);
		$('input[name=\'phone\']').val(ui.item.phone);			
	}
});
</script>
<script>
$(document).ready(function() {
	$('.summernote').summernote();
});
</script>
<?php echo $footer; ?>
		