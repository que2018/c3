<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_inventory_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/inventory"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_inventory_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button  data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>inventory/inventory" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
	    <form method="post" class="form-horizontal">
		  <div class="row">
			<div class="col-lg-12">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_product'); ?></label>
			    <div class="col-sm-10">
				  <input name="code" value="<?php echo $code; ?>" class="form-control">
				  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			    <div class="col-sm-10">
				  <input name="location_name" value="<?php echo $location_name; ?>" class="form-control">
				  <input type="hidden" name="location_id" value="<?php echo $location_id; ?>">
			    </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_batch'); ?></label>
			    <div class="col-sm-10">
				  <input name="batch" value="<?php echo $batch; ?>" class="form-control">
			    </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_quantity'); ?></label>
			    <div class="col-sm-10"><input name="quantity" value="<?php echo $quantity; ?>" class="form-control" ></div>
			  </div>
		    </div>
		  </div>
		</form>
	  </div>
	</div>
  </div>  
</div>
<script>
$('input[name=\'code\']').autocomplete({
	'source': function(request, response) {
		code = $('input[name=\'code\']').val();
		
		$.ajax({
			url: '<?php echo base_url(); ?>catalog/product_ajax/autocomplete?code=' + code,
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						product_id: item['product_id'],
						label: item['label']
					}
				}));
			}
		});
	},
	'select': function(event, ui) {
		$('input[name=\'product_id\']').val(ui.item.product_id);
	}
});
</script>
<script>
$(document).ready(function() {
	$('input[name=\'code\']').keyup(function() {
		if (!this.value) {
		   $('input[name=\'product_id\']').val('');
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$('select[name=\'warehouse_id\']').on('change', function() {
		$('input[name=\'location_id\']').val('');
		$('input[name=\'location_name\']').val('');
	});
});
</script>
<script>
$('input[name=\'location_name\']').autocomplete({
	'source': function(request, response) {
		location_name = $('input[name=\'location_name\']').val();
		warehouse_id = $('select[name=\'warehouse_id\']').val();
		
		$.ajax({
			url: '<?php echo base_url(); ?>warehouse/location_ajax/autocomplete?location_name=' + location_name,
			dataType: 'json',
			success: function(json) {
				response($.map(json.locations, function(item) {
					return {
						label: item['name'],
						location_id: item['location_id'],
						location_name: item['name']
					}
				}));
			} 
		});
	},
	'select': function(event, ui) {
		$('input[name=\'location_id\']').val(ui.item.location_id);
		$('input[name=\'location_name\']').val(ui.item.location_name);
	}
});
</script>
<?php echo $footer; ?>
		
		