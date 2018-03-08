<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">  
<link href="<?php echo base_url(); ?>assets/css/app/check/checkin_add.css" rel="stylesheet">
<script src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_checkin_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkin"><?php echo $this->lang->line('text_checkin'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkin_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <button class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>check/checkin" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
			<div class="panel-body">
			  <div class="code-box">
				<input name="code" placeholder="<?php echo $this->lang->line('text_code_hint'); ?>" class="form-control">
			  </div>
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
						  <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
					    </select>
					  </div>			  
				    </div>
				  </div>
			    </div>
			    <div class="row">
				  <div class="col-lg-12">     
				    <div class="fbox-content">
					  <table id="ptable" class="table table-bordered">
					    <thead>
						  <tr>
						    <th style="width: 30%"><?php echo $this->lang->line('column_product_name'); ?></th>
						    <th style="width: 20%"><?php echo $this->lang->line('column_upc'); ?></th>
						    <th style="width: 20%"><?php echo $this->lang->line('column_sku'); ?></th>
						    <th style="width: 10%"><?php echo $this->lang->line('column_quantity'); ?></th>
							<th></th>
						  </tr>
					    </thead>
					    <tbody>
						  <?php $checkin_product_row = 0; ?>
						  <?php if($checkin_products) { ?>
						    <?php foreach($checkin_products as $checkin_product) { ?>
						    <tr id="row<?php echo $checkin_product_row; ?>">
						    <td class="text-left"><input name="checkin_product[<?php echo $checkin_product_row; ?>][product_id]" type="hidden" value="<?php echo $checkin_product['product_id']; ?>"><div class="text-left"><?php echo $checkin_product['name']; ?></div></td>
						    <td class="text-left"><?php echo $checkin_product['upc']; ?></td>
						    <td class="text-left"><?php echo $checkin_product['sku']; ?></td>
						    <td><input class="form-control text-center" name="checkin_product[<?php echo $checkin_product_row; ?>][quantity]" value="<?php echo $checkin_product['quantity']; ?>"></td>
							<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i id="<?php echo $checkin_product_row; ?>" class="fa fa-minus-circle"></i></button></td>
						    <?php $checkin_product_row ++; ?>
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
			  <div class="table-responsive">
                <table id="checkin_fees" class="table table-striped table-bordered table-hover">
				  <thead>
					<tr>
					<td class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_name') ?></td>
					<td class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_amount') ?></td>							
					<td></td>
					</tr>
				  </thead>
				  <tbody>
					<?php $checkin_fee_row = 0; ?>
					<?php if($checkin_fees) { ?>
					  <?php foreach ($checkin_fees as $checkin_fee) { ?>
					  <tr id="checkin-fee-row<?php echo $checkin_fee_row; ?>">
					    <td class="text-right"><input type="text" name="checkin_fee[<?php echo $checkin_fee_row; ?>][value]" value="<?php echo $checkin_fee['name']; ?>" class="form-control" /></td>
					    <td class="text-right"><div class="input-group"><span class="input-group-addon">$</span><input type="text" name="checkin_fee[<?php echo $checkin_fee_row; ?>][class_id]" value="<?php echo $checkin_fee['amount']; ?>" class="form-control" /></div></td>
					    <td class="text-left"><button type="button" onclick="$('#checkin-fee-row<?php echo $checkin_fee_row; ?>').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					  </tr>
					  <?php $checkin_fee_row++; ?>
					  <?php } ?>
					<?php } ?>
				  </tbody>
				  <tfoot>
					<tr>
					  <td colspan="2"></td>
					  <td class="text-left"><button type="button" onclick="add_checkin_fee();" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					</tr>
				  </tfoot>
                </table>
              </div>
			</div>
		  </div>
		  <div id="note" class="tab-pane">
			<div class="panel-body">
		      <div class="form-group">
			    <div class="col-sm-12"><textarea name="note" rows="8" cols="50" class="form-control"><?php echo $note; ?></textarea></div>
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
$(document).ready(function() {

	checkin_product_row = <?php echo $checkin_product_row; ?>;
	
	$('input[name=\'code\']').autocomplete({  
		'source': function(request, response) {
			code = $('input[name=\'code\']').val();
					
			data = new FormData();
			data.append('code', code);
			
			$.ajax({
				url: '<?php echo base_url(); ?>check/checkin_ajax/get_product',
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
			
			new_tr = $('<tr id="row_' + checkin_product_row + '"></tr>');
			
			html  = '<td><input class="product_id" name="checkin_product[' + checkin_product_row + '][product_id]" type="hidden" value="' + product.product_id + '"><div class="text-left">' + product.name + '</div></td>';
			html += '<td class="text-left">' + product.upc + '</div></td>';
			html += '<td class="text-left">' + product.sku + '</div></td>';
			html += '<td><input class="form-control text-center" name="checkin_product[' + checkin_product_row + '][quantity]" type="text" value="1" onClick="this.select();"></td>';
			html += '<td class="text-center"><button type="button" class="btn btn-danger btn-delete"><i class="fa fa-minus-circle"></i></button></td>';
			
			new_tr.html(html);
			
			$("#ptable").append(new_tr);
			
			checkin_product_row++;
			
			$(this).val(''); 
			
			return false;
		}
	});
	
	//remove product
	$('#ptable').on('click', '.btn-delete', function() {		
		$(this).closest('tr').remove();		
	});
});
</script>
<script>
checkin_fee_row = <?php echo $checkin_fee_row; ?>;

function add_checkin_fee() {
	html  = '<tr id="checkin-fee-row' + checkin_fee_row + '">';
	html += '  <td class="text-right"><input type="text" name="checkin_fee[' + checkin_fee_row + '][name]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><div class="input-group"><span class="input-group-addon">$</span><input type="text" name="checkin_fee[' + checkin_fee_row + '][amount]" value="" class="form-control" /></div></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#checkin-fee-row' + checkin_fee_row  + '\').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#checkin_fees tbody').append(html);

	checkin_fee_row++;
}
</script>
		