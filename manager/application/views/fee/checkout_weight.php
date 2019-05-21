<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_checkout_weight'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/fee"><?php echo $this->lang->line('text_fee'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkout_weight'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <button type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></a>
	</div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <form method="post" class="form-horizontal">
	    <div class="tabs-container">
	      <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
			<li><a data-toggle="tab" href="#level"><?php echo $this->lang->line('tab_level'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="checkout_weight_status" class="form-control">
					  <?php if($checkout_weight_status) { ?>
					    <option value="1" selected><?php echo $this->lang->line('text_enabled'); ?></option>
						<option value="0"><?php echo $this->lang->line('text_disabled'); ?></option>
					  <?php } else { ?>
					    <option value="1"><?php echo $this->lang->line('text_enabled'); ?></option>
						<option value="0" selected><?php echo $this->lang->line('text_disabled'); ?></option>
					  <?php } ?>
					</select>
				  </div>
                </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sort_order'); ?></label>
			      <div class="col-sm-10"><input name="checkout_weight_sort_order" value="<?php echo $checkout_weight_sort_order; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>	
			  </div>
		    </div>
			<div id="level" class="tab-pane">
			  <div class="panel-body">
			    <div class="table-responsive">
                  <table id="checkout-weight-levels" class="table table-striped table-bordered table-hover">
				    <thead>
					  <tr>
					    <td class="text-left" style="width: 40%;"><strong><?php echo $this->lang->line('column_checkout_weight') ?></strong></td>
					    <td class="text-left" style="width: 40%;"><strong><?php echo $this->lang->line('column_amount') ?></strong></td>
						<td></td>
					  </tr>
				    </thead>
				    <tbody>
					  <?php $level_row = 0; ?>
					  <?php if($checkout_weight_levels) { ?>
					    <?php foreach ($checkout_weight_levels as $checkout_weight_level) { ?>
					    <tr id="level-row<?php echo $level_row; ?>">
					      <td class="text-right">
						    <div class="input-group">
							  <span class="input-group-addon">lb (<)</span>
							  <input name="checkout_weight_level[<?php echo $level_row; ?>][weight]" value="<?php echo $checkout_weight_level['weight']; ?>" class="form-control" />
							</div>
						  </td>
						  <td class="text-right">
						    <div class="input-group">
							  <span class="input-group-addon">$</span>
						      <input name="checkout_weight_level[<?php echo $level_row; ?>][amount]" value="<?php echo $checkout_weight_level['amount']; ?>" class="form-control" /></td>
				            </div>
						  </td>
						  <td class="text-left"><button type="button" onclick="$('#level-row<?php echo $level_row; ?>').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					    </tr>
					    <?php $level_row ++; ?>
					    <?php } ?>
					  <?php } ?>
				    </tbody>
				    <tfoot>
					  <tr>
					    <td colspan="2">
						  <div class="input-group checkout-weight-level-end">
							<span class="input-group-addon">$ (>)</span>
							<input name="checkout_weight_level_end" value="<?php echo $checkout_weight_level_end; ?>" class="form-control">
						  </div>
						</td>
					    <td class="text-left"><button type="button" onclick="add_checkout_weight_level();" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
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
level_row = <?php echo $level_row; ?>;

function add_checkout_weight_level() {
	html  = '<tr id="level-row' + level_row + '">';
	html += '<td class="text-right">';
	html += '<div class="input-group">';
	html += '<span class="input-group-addon">lb (<)</span>';
	html += '<input name="checkout_weight_level[' + level_row + '][weight]" value="" class="form-control" /></td>';
	html += '</div>';
	html += '<td class="text-right">';
	html += '<div class="input-group">';
	html += '<span class="input-group-addon">$</span>';
	html += '<input name="checkout_weight_level[' + level_row + '][amount]" value="" class="form-control" /></td>';
	html += '</div>';
	html += '<td class="text-left"><button type="button" onclick="$(\'#level-row' + level_row  + '\').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#checkout-weight-levels tbody').append(html);

	level_row++;
}
</script>
<?php echo $footer; ?>
