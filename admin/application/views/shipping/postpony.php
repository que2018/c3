<link href="<?php echo base_url(); ?>assets/css/app/shipping/postpony.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_postpony'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('text_shipping'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_postpony'); ?></strong></li>
	</ol>
    <div class="button-group tooltip-demo">
	  <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save_setting'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></a>
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
		    <li class=""><a data-toggle="tab" href="#service"><?php echo $this->lang->line('tab_service'); ?></a></li>
			<li class=""><a data-toggle="tab" href="#state-mapping"><?php echo $this->lang->line('tab_state_mapping'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_key'); ?></label>
			      <div class="col-sm-10"><input name="postpony_key" value="<?php echo $postpony_key; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_pwd'); ?></label>
			      <div class="col-sm-10"><input name="postpony_pwd" value="<?php echo $postpony_pwd; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_authorizedkey'); ?></label>
			      <div class="col-sm-10"><input name="postpony_authorized_key" value="<?php echo $postpony_authorized_key; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_company'); ?></label>
			      <div class="col-sm-10"><input name="postpony_company" value="<?php echo $postpony_company; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
			      <div class="col-sm-10"><input name="postpony_street" value="<?php echo $postpony_street; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
			      <div class="col-sm-10"><input name="postpony_street2" value="<?php echo $postpony_street2; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
			      <div class="col-sm-10"><input name="postpony_city" value="<?php echo $postpony_city; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
			      <div class="col-sm-10"><input name="postpony_state" value="<?php echo $postpony_state; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_postcode'); ?></label>
			      <div class="col-sm-10"><input name="postpony_postcode" value="<?php echo $postpony_postcode; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
			      <div class="col-sm-10"><input name="postpony_country" value="<?php echo $postpony_country; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_owner'); ?></label>
			      <div class="col-sm-10"><input name="postpony_owner" value="<?php echo $postpony_owner; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			      <div class="col-sm-10"><input name="postpony_phone" value="<?php echo $postpony_phone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length_unit'); ?></label>
			      <div class="col-sm-10">
					<select name="postpony_length_unit" class="form-control">
					  <option value=""></option>
					  <?php foreach($postpony_length_units as $key => $value) { ?>
					  <?php if($key == $postpony_length_unit) { ?>
					  <option value="<?php echo $key; ?>" selected><?php echo $value; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
					  <?php } ?>
					  <?php } ?>
					</select>
				  </div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_weight_unit'); ?></label>
			      <div class="col-sm-10">
					<select name="postpony_weight_unit" class="form-control">
					  <option value=""></option>
					  <?php foreach($postpony_weight_units as $key => $value) { ?>
					  <?php if($key == $postpony_weight_unit) { ?>
					  <option value="<?php echo $key; ?>" selected><?php echo $value; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
					  <?php } ?>
					  <?php } ?>
					</select>
				  </div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_debug_mode'); ?></label>
				  <div class="col-sm-10">
				    <select name="postpony_debug_mode" class="form-control">
					  <?php if($postpony_debug_mode) { ?>
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
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="postpony_status" class="form-control">
					  <?php if($postpony_status) { ?>
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
				  <div class="col-sm-10"><input name="postpony_sort_order" value="<?php echo $postpony_sort_order; ?>" class="form-control"></div>	  
			    </div>		
			  </div>
		    </div>
		    <div id="service" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="postpony_services" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_name') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_code') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_method') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_package') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $postpony_service_row = 0; ?>
					  <?php if($postpony_services) { ?>
						<?php foreach ($postpony_services as $postpony_service) { ?>
						<tr id="postpony-service-row<?php echo $postpony_service_row; ?>">
						  <td class="text-right"><input type="text" name="postpony_service[<?php echo $postpony_service_row; ?>][name]" value="<?php echo $postpony_service['name']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="postpony_service[<?php echo $postpony_service_row; ?>][code]" value="<?php echo $postpony_service['code']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="postpony_service[<?php echo $postpony_service_row; ?>][method]" value="<?php echo $postpony_service['method']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="postpony_service[<?php echo $postpony_service_row; ?>][package]" value="<?php echo $postpony_service['package']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#postpony-service-row<?php echo $postpony_service_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $postpony_service_row++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="4"></td>
						<td class="text-center"><button type="button" onclick="addService();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					  </tr>
					</tfoot>
                  </table>
				</div>	
			  </div>
		    </div>
		    <div id="state-mapping" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="postpony_states_mapping" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
						<th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_state_long') ?></th>
						<th class="text-left" style="width: 35%;"><?php echo $this->lang->line('column_state_short') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $postpony_state_mapping_row = 0; ?>
					  <?php if($postpony_states_mapping) { ?>
						<?php foreach ($postpony_states_mapping as $postpony_state_mapping) { ?>
						<tr id="postpony-state-mapping-row<?php echo $postpony_state_mapping_row; ?>">
						  <td class="text-right"><input type="text" name="postpony_state_mapping[<?php echo $postpony_state_mapping_row; ?>][state_long]" value="<?php echo $postpony_state_mapping['state_long']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="postpony_state_mapping[<?php echo $postpony_state_mapping_row; ?>][state_short]" value="<?php echo $postpony_state_mapping['state_short']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#postpony-state-mapping-row<?php echo $postpony_state_mapping_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $postpony_state_mapping_row++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="2"></td>
						<td class="text-center"><button type="button" onclick="addStateMapping();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					  </tr>
					</tfoot>
                  </table>
				</div>	
			  </div>
		    </div>
			<div id="fee" class="tab-pane">
			  <div class="panel-body">
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_fee_type'); ?></label>
			      <div class="col-sm-10">
				    <select name="postpony_fee_type" class="form-control">
					  <?php if($postpony_fee_type) { ?>
					    <option value="0"><?php echo $this->lang->line('text_fixed'); ?></option>
						<option value="1" selected><?php echo $this->lang->line('text_ratio'); ?></option>
					  <?php } else { ?>
					    <option value="0" selected><?php echo $this->lang->line('text_fixed'); ?></option>
						<option value="1"><?php echo $this->lang->line('text_ratio'); ?></option>
					  <?php } ?>
					</select>
				  </div>
				</div>
				<div class="hr-line-dashed"></div>
				 <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_fee_value'); ?></label>
			      <div class="col-sm-10">
				    <div class="input-group">
					  <?php if($postpony_fee_type) { ?>
					    <span class="input-group-addon fee-symbol">%</span>
					  <?php } else { ?>
					    <span class="input-group-addon fee-symbol">$</span>
					  <?php } ?>
				      <input type="text" name="postpony_fee_value" value="<?php echo $postpony_fee_value; ?>" class="form-control">
				    </div>
				  </div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="table-responsive">
				  <table class="table table-striped table-bordered table-hover dataTables-example" >
				    <thead>
					  <tr>
					    <th style="width:60%;"><?php echo $this->lang->line('column_client'); ?></th>
						<th><?php echo $this->lang->line('column_fee'); ?></th>
					  </tr>
					</thead>
					<tbody>
					  <?php if($clients) { ?>
					    <?php foreach($clients as $i => $client) { ?>
						<tr>
						  <td><?php echo $client['name']; ?></td>
						  <td>  
						    <div class="input-group">
						    <?php if($postpony_fee_type) { ?>
						    <span class="input-group-addon fee-symbol">%</span>
							<?php } else { ?>
							<span class="input-group-addon fee-symbol">$</span>
							<?php } ?>
							<input type="text" name="postpony_client_fee[<?php echo $i; ?>][fee]" value="<?php echo $client['fee']; ?>" class="form-control">
							<input type="hidden" name="postpony_client_fee[<?php echo $i; ?>][client_id]" value="<?php echo $client['client_id']; ?>">
							</div>
						  </td>
						</tr>
						<?php } ?>
					  <?php } ?>
					</tbody>
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
var postpony_service_row = <?php echo $postpony_service_row; ?>;

function addService() {
	html  = '<tr id="postpony-service-row' + postpony_service_row + '">';
	html += '  <td class="text-right"><input type="text" name="postpony_service[' + postpony_service_row + '][name]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="postpony_service[' + postpony_service_row + '][code]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="postpony_service[' + postpony_service_row + '][method]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="postpony_service[' + postpony_service_row + '][package]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#postpony-service-row' + postpony_service_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#postpony_services tbody').append(html);

	postpony_service_row++;
}
</script> 
<script>
var postpony_state_mapping_row = <?php echo $postpony_state_mapping_row; ?>;
         
function addStateMapping() {
	html  = '<tr id="postpony-state-mapping-row' + postpony_state_mapping_row + '">';
	html += '  <td class="text-right"><input type="text" name="postpony_state_mapping[' + postpony_state_mapping_row + '][state_long]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="postpony_state_mapping[' + postpony_state_mapping_row + '][state_short]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#postpony-state-mapping-row' + postpony_state_mapping_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#postpony_states_mapping tbody').append(html);

	postpony_state_mapping_row++;
}
</script> 
<script>
$(document).ready(function() {
	$('select[name=\'postpony_fee_type\']').on('change', function() {
		if(this.value == 1) {
			$('.fee-symbol').html('%');
		} else {
			$('.fee-symbol').html('$');
		}			
	})
});
</script>
		
		