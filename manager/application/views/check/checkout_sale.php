<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_checkout_order'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkout"><?php echo $this->lang->line('text_checkout'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkout_order'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
	<button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_generate_checkout'); ?>" class="btn btn-primary btn-generate"><i class="fa fa-play"></i></button>
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
				<input name="code" placeholder="<?php echo $this->lang->line('text_sale_checkout_input_hint'); ?>" value="<?php echo $sale_id; ?>">
		      </div>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-lg-3">     
		      <div class="form-group">
			    <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_sale_id'); ?></label>
			    <div class="col-sm-8">
			      <div class="input-group">
				   <span class="input-group-addon">#</span>
				   <input name="v_sale_id" value="<?php echo $sale_id; ?>" class="form-control" disabled>
				   <input type="hidden" name="sale_id" value="<?php echo $sale_id; ?>">
				  </div>
			    </div>
			  </div>
			</div>
		    <div class="col-lg-4">     
		      <div class="form-group">
			    <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_store_sale_id'); ?></label>
			    <div class="col-sm-8">
				  <div class="input-group">
				   <span class="input-group-addon">#</span>
				   <input name="v_store_sale_id" value="<?php echo $store_sale_id; ?>" class="form-control" disabled>
				  </div>
                </div>				  
			  </div>
			</div>
			<div class="col-lg-5">     
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
			    <div class="col-sm-10">
				  <div class="input-group">
				   <span class="input-group-addon">#</span>
				   <input name="v_tracking" value="<?php echo $tracking; ?>" class="form-control" disabled>
				  </div>
				</div>
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
			  <table id="checkout-products" class="table table-bordered">
			    <thead>
				  <tr>
				    <th style="width: 20%"><?php echo $this->lang->line('column_product_name'); ?></th>
				    <th style="width: 20%"><?php echo $this->lang->line('column_upc'); ?></th>
					<th style="width: 20%"><?php echo $this->lang->line('column_sku'); ?></th>
					<th style="width: 10%"><?php echo $this->lang->line('column_quantity'); ?></th>
					<th style="width: 30%"><?php echo $this->lang->line('column_location'); ?></th>
				  </tr>
			    </thead>
			    <tbody>
				  <?php $checkout_product_row = 0; ?>
				  <?php foreach($checkout_products as $checkout_product) { ?>
				    <tr>
					  <td>
					  <?php echo $checkout_product['name']; ?>
					  <input name="checkout_product[<?php echo $checkout_product_row; ?>][product_id]" type="hidden" value="<?php echo $checkout_product['product_id']; ?>">
					  </td>
					  <td><?php echo $checkout_product['upc']; ?></td>
					  <td><?php echo $checkout_product['sku']; ?></td>
					  <td><input type="text" name="checkout_product[<?php echo $checkout_product_row; ?>][quantity]" value="<?php echo $checkout_product['quantity']; ?>" class="form-control text-center"></td>
					  <td>
					    <div class="input-group">
					    <?php if($checkout_product['inventories']) { ?>
						  <?php if($checkout_product['multi_location']) { ?>
						  <span class="input-group-addon"><i class="fa fa-cubes"></i></span>
						  <?php } else { ?>
						  <span class="input-group-addon"><i class="fa fa-cube"></i></span>
						  <?php } ?>
						  <select name="checkout_product[<?php echo $checkout_product_row; ?>][inventory_id]" class="form-control">
						  <?php if($checkout_product['inventories']) {?>
						    <?php foreach($checkout_product['inventories'] as $inventory) { ?>
						    <option value="<?php echo $inventory['inventory_id']; ?>"><?php echo $inventory['location_name'] . ' - [qty ' . $inventory['quantity'] . ']'; ?></option>
                            <?php } ?>
						  <?php } ?>
						  </select>
						<?php } ?>
						</div>
					  </td>
					</tr>
					<?php $checkout_product_row++; ?>
				  <?php } ?>
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
	checkout_product_row = 0;
	
	//get product
	$('input[name=\'code\']').on('input',function(e){
		code = $(this).val();
						
		$.ajax({
			url: '<?php echo base_url(); ?>check/checkout_sale/get_sale?code=' + code,
			dataType: 'json',
			beforeSend: function() {
				$('#alert-error').hide();
			},
			success: function(json) {
				if(json.success)
				{
					$('input[name=\'sale_id\']').val(json.sale_id);
					$('input[name=\'v_sale_id\']').val(json.sale_id);
					$('input[name=\'v_store_sale_id\']').val(json.store_sale_id);
					$('input[name=\'v_tracking\']').val(json.tracking);
					
					html = '';
					
					$.each(json.checkout_products, function(index, checkout_product) {			
						html += '<tr id="row_' + checkout_product_row + '">';
						html += '<td><input class="product_id" name="checkout_product[' + checkout_product_row + '][product_id]" type="hidden" value="' + checkout_product.product_id + '"><div class="text-left">' + checkout_product.name + '</div></td>';
						html += '<td class="text-left">' + checkout_product.upc + '</div></td>';
						html += '<td class="text-left">' + checkout_product.sku + '</div></td>';
						html += '<td><input class="form-control text-center" name="checkout_product[' + checkout_product_row + '][quantity]" type="text" value="1" onClick="this.select();"></td>';
						html += '<td>';
						html += '<div class="input-group">';
		
						if(checkout_product.multi_location)
							html += '<span class="input-group-addon"><i class="fa fa-cubes"></i></span>';
						else
							html += '<span class="input-group-addon"><i class="fa fa-cube"></i></span>';
						
						html += '<select name="checkout_product[' + checkout_product_row + '][inventory_id]" class="form-control">';
						
						$.each(checkout_product.inventories, function(index, inventory) {							
							html += '<option value="'+ inventory.inventory_id +'">' + inventory.location_name + ' - [ qty: ' + inventory.quantity + ' ]' + '</option>';
						});
						
						html += '</select>';
						html += '</div>';
						html += '</td>';
						html += '</tr>';
							
						checkout_product_row++;
					});	
							
					$('#checkout-products tbody').html(html);	
					
					$('#alert-error').hide();					
				}
				else
				{
					$('input[name=\'sale_id\']').val('');	
					$('input[name=\'v_sale_id\']').val('');	
					$('input[name=\'v_store_sale_id\']').val('');	
					$('input[name=\'v_tracking\']').val('');
					
					$('#checkout-products tbody').html('');		
					
					$('#alert-error span').html(json.message);		
					$('#alert-error').show();
				}
			}
		});
	});
});
</script>
<script>
$(document).ready(function() {
	$('.btn-generate').click(function() {
		$.ajax({
			url: '<?php echo base_url(); ?>check/checkout_sale/add_checkout',
			type: 'post',
			data: $('.form-horizontal').serialize(),
			dataType: 'json',
			success: function(json) {
				if(json.success)
				{
					$('input[name=\'code\']').val('');
					$('input[name=\'tracking\']').val('');
					$('input[name=\'sale_id\']').val('');
					$('input[name=\'v_sale_id\']').val('');
					$('input[name=\'v_store_sale_id\']').val('');
					$('input[name=\'v_tracking\']').val('');
					
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
	});
	
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('.btn-generate').trigger('click');
		}
	});
});
</script>
<?php echo $footer; ?>





