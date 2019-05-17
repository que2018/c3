<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_fedex'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('text_shipping'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_fedex'); ?></strong></li>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_account_number'); ?></label>
			      <div class="col-sm-10"><input name="fedex_account_number" value="<?php echo $fedex_account_number; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_meter_number'); ?></label>
			      <div class="col-sm-10"><input name="fedex_meter_number" value="<?php echo $fedex_meter_number; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_key'); ?></label>
			      <div class="col-sm-10"><input name="fedex_key" value="<?php echo $fedex_key; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_password'); ?></label>
			      <div class="col-sm-10"><input name="fedex_password" value="<?php echo $fedex_password; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_company'); ?></label>
			      <div class="col-sm-10"><input name="fedex_company" value="<?php echo $fedex_company; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_time_zone'); ?></label>
			      <div class="col-sm-10"><input name="fedex_time_zone" value="<?php echo $fedex_time_zone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_origin'); ?></label>
			      <div class="col-sm-10">
				    <select name="fedex_origin" class="form-control">
					  <option value=""></option>
					  <?php foreach($fedex_origins as $key => $value) { ?>
					  <?php if($key == $fedex_origin) { ?>
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
			      <div class="col-sm-10"><input name="fedex_street" value="<?php echo $fedex_street; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
			      <div class="col-sm-10"><input name="fedex_street2" value="<?php echo $fedex_street2; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
			      <div class="col-sm-10"><input name="fedex_city" value="<?php echo $fedex_city; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
			      <div class="col-sm-10"><input name="fedex_state" value="<?php echo $fedex_state; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_postcode'); ?></label>
			      <div class="col-sm-10"><input name="fedex_postcode" value="<?php echo $fedex_postcode; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
			      <div class="col-sm-10"><input name="fedex_country" value="<?php echo $fedex_country; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_owner'); ?></label>
			      <div class="col-sm-10"><input name="fedex_owner" value="<?php echo $fedex_owner; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			      <div class="col-sm-10"><input name="fedex_phone" value="<?php echo $fedex_phone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length_unit'); ?></label>
			      <div class="col-sm-10">
					<select name="fedex_length_unit" class="form-control">
					  <option value=""></option>
					  <?php foreach($fedex_length_units as $key => $value) { ?>
					  <?php if($key == $fedex_length_unit) { ?>
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
					<select name="fedex_weight_unit" class="form-control">
					  <option value=""></option>
					  <?php foreach($fedex_weight_units as $key => $value) { ?>
					  <?php if($key == $fedex_weight_unit) { ?>
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
					<select name="fedex_image_type" class="form-control">
					  <option value=""></option>
					  <?php foreach($fedex_image_types as $key => $value) { ?>
					  <?php if($key == $fedex_image_type) { ?>
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
				    <select name="fedex_debug_mode" class="form-control">
					  <?php if($fedex_debug_mode) { ?>
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
				    <select name="fedex_status" class="form-control">
					  <?php if($fedex_status) { ?>
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
				  <div class="col-sm-10"><input name="fedex_sort_order" value="<?php echo $fedex_sort_order; ?>" class="form-control"></div>	  
			    </div>		
			  </div>
		    </div>
		    <div id="service" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="fedex_services" class="table table-striped table-bordered table-hover">
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
					  <?php $fedex_service_row = 0; ?>
					  <?php if($fedex_services) { ?>
						<?php foreach ($fedex_services as $fedex_service) { ?>
						<tr id="fedex-service-row<?php echo $fedex_service_row; ?>">
						  <td class="text-right"><input type="text" name="fedex_service[<?php echo $fedex_service_row; ?>][name]" value="<?php echo $fedex_service['name']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="fedex_service[<?php echo $fedex_service_row; ?>][code]" value="<?php echo $fedex_service['code']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="fedex_service[<?php echo $fedex_service_row; ?>][method]" value="<?php echo $fedex_service['method']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="fedex_service[<?php echo $fedex_service_row; ?>][package]" value="<?php echo $fedex_service['package']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#fedex-service-row<?php echo $fedex_service_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $fedex_service_row++; ?>
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
                  <table id="fedex_states_mapping" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
						<th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_state_long') ?></th>
						<th class="text-left" style="width: 35%;"><?php echo $this->lang->line('column_state_short') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $fedex_state_mapping_row = 0; ?>
					  <?php if($fedex_states_mapping) { ?>
						<?php foreach ($fedex_states_mapping as $fedex_state_mapping) { ?>
						<tr id="fedex-state-mapping-row<?php echo $fedex_state_mapping_row; ?>">
						  <td class="text-right"><input type="text" name="fedex_state_mapping[<?php echo $fedex_state_mapping_row; ?>][state_long]" value="<?php echo $fedex_state_mapping['state_long']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="fedex_state_mapping[<?php echo $fedex_state_mapping_row; ?>][state_short]" value="<?php echo $fedex_state_mapping['state_short']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#fedex-state-mapping-row<?php echo $fedex_state_mapping_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $fedex_state_mapping_row++; ?>
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
				    <select name="fedex_fee_type" class="form-control">
					  <?php if($fedex_fee_type) { ?>
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
					  <?php if($fedex_fee_type) { ?>
					    <span class="input-group-addon fee-symbol">%</span>
					  <?php } else { ?>
					    <span class="input-group-addon fee-symbol">$</span>
					  <?php } ?>
				      <input type="text" name="fedex_fee_value" value="<?php echo $fedex_fee_value; ?>" class="form-control">
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
						    <?php if($fedex_fee_type) { ?>
						    <span class="input-group-addon fee-symbol">%</span>
							<?php } else { ?>
							<span class="input-group-addon fee-symbol">$</span>
							<?php } ?>
							<input type="text" name="fedex_client_fee[<?php echo $i; ?>][fee]" value="<?php echo $client['fee']; ?>" class="form-control">
							<input type="hidden" name="fedex_client_fee[<?php echo $i; ?>][client_id]" value="<?php echo $client['client_id']; ?>">
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
var fedex_service_row = <?php echo $fedex_service_row; ?>;

function addService() {
	html  = '<tr id="fedex-service-row' + fedex_service_row + '">';
	html += '  <td class="text-right"><input type="text" name="fedex_service[' + fedex_service_row + '][name]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="fedex_service[' + fedex_service_row + '][code]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="fedex_service[' + fedex_service_row + '][method]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="fedex_service[' + fedex_service_row + '][package]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#fedex-service-row' + fedex_service_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#fedex_services tbody').append(html);

	fedex_service_row++;
}
</script> 
<script>
var fedex_state_mapping_row = <?php echo $fedex_state_mapping_row; ?>;
         
function addStateMapping() {
	html  = '<tr id="fedex-state-mapping-row' + fedex_state_mapping_row + '">';
	html += '  <td class="text-right"><input type="text" name="fedex_state_mapping[' + fedex_state_mapping_row + '][state_long]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="fedex_state_mapping[' + fedex_state_mapping_row + '][state_short]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#fedex-state-mapping-row' + fedex_state_mapping_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#fedex_states_mapping tbody').append(html);

	fedex_state_mapping_row++;
}
</script> 
<script>
$(document).ready(function() {
	$('select[name=\'fedex_fee_type\']').on('change', function() {
		if(this.value == 1) {
			$('.fee-symbol').html('%');
		} else {
			$('.fee-symbol').html('$');
		}			
	})
});
</script>
<?php echo $footer; ?>		
		