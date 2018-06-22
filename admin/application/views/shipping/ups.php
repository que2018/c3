<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_ups'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('text_shipping'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_ups'); ?></strong></li>
	</ol>
	<button type="button" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></a>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_access_key'); ?></label>
			      <div class="col-sm-10"><input name="ups_access_key" value="<?php echo $ups_access_key; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_username'); ?></label>
			      <div class="col-sm-10"><input name="ups_username" value="<?php echo $ups_username; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_password'); ?></label>
			      <div class="col-sm-10"><input name="ups_password" value="<?php echo $ups_password; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_account_number'); ?></label>
			      <div class="col-sm-10"><input name="ups_account_number" value="<?php echo $ups_account_number; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_pickup_method'); ?></label>
			      <div class="col-sm-10">
				    <select name="ups_pickup_method" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_pickup_methods as $key => $value) { ?>
					  <?php if($key == $ups_pickup_method) { ?>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_classification_code'); ?></label>
				  <div class="col-sm-10">
				    <select name="ups_classification_code" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_classification_codes as $key => $value) { ?>
					  <?php if($key == $ups_classification_code) { ?>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_time_zone'); ?></label>
			      <div class="col-sm-10"><input name="ups_time_zone" value="<?php echo $ups_time_zone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_origin'); ?></label>
			      <div class="col-sm-10">
				    <select name="ups_origin" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_origins as $key => $value) { ?>
					  <?php if($key == $ups_origin) { ?>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
			      <div class="col-sm-10"><input name="ups_street" value="<?php echo $ups_street; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
			      <div class="col-sm-10"><input name="ups_street2" value="<?php echo $ups_street2; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
			      <div class="col-sm-10"><input name="ups_city" value="<?php echo $ups_city; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
			      <div class="col-sm-10"><input name="ups_state" value="<?php echo $ups_state; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_postcode'); ?></label>
			      <div class="col-sm-10"><input name="ups_postcode" value="<?php echo $ups_postcode; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
			      <div class="col-sm-10"><input name="ups_country" value="<?php echo $ups_country; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_quote_type'); ?></label>
			      <div class="col-sm-10">
					<select name="ups_quote_type" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_quote_types as $key => $value) { ?>
					  <?php if($key == $ups_quote_type) { ?>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_owner'); ?></label>
			      <div class="col-sm-10"><input name="ups_owner" value="<?php echo $ups_owner; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_description'); ?></label>
			      <div class="col-sm-10"><input name="ups_description" value="<?php echo $ups_description; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			      <div class="col-sm-10"><input name="ups_phone" value="<?php echo $ups_phone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_quote_type'); ?></label>
			      <div class="col-sm-10">
					<select name="ups_quote_type" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_quote_types as $key => $value) { ?>
					  <?php if($key == $ups_quote_type) { ?>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length_unit'); ?></label>
			      <div class="col-sm-10">
					<select name="ups_length_unit" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_length_units as $key => $value) { ?>
					  <?php if($key == $ups_length_unit) { ?>
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
					<select name="ups_weight_unit" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_weight_units as $key => $value) { ?>
					  <?php if($key == $ups_weight_unit) { ?>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_image_type'); ?></label>
			      <div class="col-sm-10">
					<select name="ups_image_type" class="form-control">
					  <option value=""></option>
					  <?php foreach($ups_image_types as $key => $value) { ?>
					  <?php if($key == $ups_image_type) { ?>
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
				    <select name="ups_debug_mode" class="form-control">
					  <?php if($ups_debug_mode) { ?>
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
				    <select name="ups_status" class="form-control">
					  <?php if($ups_status) { ?>
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
				  <div class="col-sm-10"><input name="ups_sort_order" value="<?php echo $ups_sort_order; ?>" class="form-control"></div>	  
			    </div>		
			  </div>
		    </div>
		    <div id="service" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="ups_services" class="table table-striped table-bordered table-hover">
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
					  <?php $ups_service_row = 0; ?>
					  <?php if($ups_services) { ?>
						<?php foreach ($ups_services as $ups_service) { ?>
						<tr id="ups-service-row<?php echo $ups_service_row; ?>">
						  <td class="text-right"><input type="text" name="ups_service[<?php echo $ups_service_row; ?>][name]" value="<?php echo $ups_service['name']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="ups_service[<?php echo $ups_service_row; ?>][code]" value="<?php echo $ups_service['code']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="ups_service[<?php echo $ups_service_row; ?>][method]" value="<?php echo $ups_service['method']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="ups_service[<?php echo $ups_service_row; ?>][package]" value="<?php echo $ups_service['package']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#ups-service-row<?php echo $ups_service_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $ups_service_row++; ?>
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
                  <table id="ups_states_mapping" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
						<th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_state_long') ?></th>
						<th class="text-left" style="width: 35%;"><?php echo $this->lang->line('column_state_short') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $ups_state_mapping_row = 0; ?>
					  <?php if($ups_states_mapping) { ?>
						<?php foreach ($ups_states_mapping as $ups_state_mapping) { ?>
						<tr id="ups-service-row<?php echo $ups_state_mapping_row; ?>">
						  <td class="text-right"><input type="text" name="ups_state_mapping[<?php echo $ups_state_mapping_row; ?>][state_long]" value="<?php echo $ups_state_mapping['state_long']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="ups_state_mapping[<?php echo $ups_state_mapping_row; ?>][state_short]" value="<?php echo $ups_state_mapping['state_short']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#ups-state-mapping-row<?php echo $ups_state_mapping_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $ups_state_mapping_row++; ?>
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
				    <select name="ups_fee_type" class="form-control">
					  <?php if($ups_fee_type) { ?>
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
					  <?php if($ups_fee_type) { ?>
					    <span class="input-group-addon fee-symbol">%</span>
					  <?php } else { ?>
					    <span class="input-group-addon fee-symbol">$</span>
					  <?php } ?>
				      <input type="text" name="ups_fee_value" value="<?php echo $ups_fee_value; ?>" class="form-control">
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
						    <?php if($ups_fee_type) { ?>
						    <span class="input-group-addon fee-symbol">%</span>
							<?php } else { ?>
							<span class="input-group-addon fee-symbol">$</span>
							<?php } ?>
							<input type="text" name="ups_client_fee[<?php echo $i; ?>][fee]" value="<?php echo $client['fee']; ?>" class="form-control">
							<input type="hidden" name="ups_client_fee[<?php echo $i; ?>][client_id]" value="<?php echo $client['client_id']; ?>">
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
var ups_service_row = <?php echo $ups_service_row; ?>;

function addService() {
	html  = '<tr id="ups-service-row' + ups_service_row + '">';
	html += '  <td class="text-right"><input type="text" name="ups_service[' + ups_service_row + '][name]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="ups_service[' + ups_service_row + '][code]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="ups_service[' + ups_service_row + '][method]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="ups_service[' + ups_service_row + '][package]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#ups-service-row' + ups_service_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#ups_services tbody').append(html);

	ups_service_row++;
}
</script> 
<script>
var ups_state_mapping_row = <?php echo $ups_state_mapping_row; ?>;

function addStateMapping() {
	html  = '<tr id="ups-state-mapping-row' + ups_state_mapping_row + '">';
	html += '  <td class="text-right"><input type="text" name="ups_state_mapping[' + ups_state_mapping_row + '][state_long]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="ups_state_mapping[' + ups_state_mapping_row + '][state_short]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#ups-state-mapping-row' + ups_state_mapping_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#ups_states_mapping tbody').append(html);

	ups_state_mapping_row++;
}
</script> 
<script>
$(document).ready(function() {
	$('select[name=\'ups_fee_type\']').on('change', function() {
		if(this.value == 1) {
			$('.fee-symbol').html('%');
		} else {
			$('.fee-symbol').html('$');
		}			
	})
});
</script>
<?php echo $footer; ?>
		
		