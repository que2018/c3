<?php echo $header; ?>
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
		    <li class=""><a data-toggle="tab" href="#zone-mapping"><?php echo $this->lang->line('tab_zone_mapping'); ?></a></li>
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
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_signature'); ?></label>
				  <div class="col-sm-10">
				    <select name="postpony_signature" class="form-control">
				      <?php if($postpony_signature) { ?>
					    <option value="1" selected><?php echo $this->lang->line('text_yes'); ?></option>
					    <option value="0"><?php echo $this->lang->line('text_no'); ?></option>
				      <?php } else { ?>
					    <option value="1"><?php echo $this->lang->line('text_yes'); ?></option>
					    <option value="0" selected><?php echo $this->lang->line('text_no'); ?></option>
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
		    <div id="zone-mapping" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="zones-mapping" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
					  	<th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_zipcode_from') ?></th>
						<th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_zipcode_to') ?></th>
						<th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_zone') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $postpony_zone_mapping = 0; ?>
					  <?php if($postpony_zones_mapping) { ?>
						<?php foreach ($postpony_zones_mapping as $postpony_zone_mapping) { ?>
						<tr id="postpony-zone-mapping-row<?php echo $postpony_zone_mapping; ?>">
						  <td class="text-right"><input type="text" name="postpony_zone_mapping[<?php echo $postpony_zone_mapping; ?>][zipcode_from]" value="<?php echo $postpony_zone_mapping['zipcode_from']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="postpony_zone_mapping[<?php echo $postpony_zone_mapping; ?>][zipcode_to]" value="<?php echo $postpony_zone_mapping['zipcode_to']; ?>" class="form-control" /></td>
						  <td>
						    <select name="postpony_zone_mapping[<?php echo $postpony_zone_mapping; ?>][zone]" class="form-control">
							  <?php if($postpony_zone_mapping['express_zone'] == 1) { ?>
							  <option value="1" selected><?php echo $this->lang->line('text_zone_one');  ?></option>
							  <?php } else { ?>
							  <option value="1"><?php echo $this->lang->line('text_zone_one');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 2) { ?>
							  <option value="2" selected><?php echo $this->lang->line('text_zone_two');  ?></option>
							  <?php } else { ?>
							  <option value="2"><?php echo $this->lang->line('text_zone_two');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 3) { ?>
							  <option value="3" selected><?php echo $this->lang->line('text_zone_three');  ?></option>
							  <?php } else { ?>
							  <option value="3"><?php echo $this->lang->line('text_zone_three');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 4) { ?>
							  <option value="4" selected><?php echo $this->lang->line('text_zone_four');  ?></option>
							  <?php } else { ?>
							  <option value="4"><?php echo $this->lang->line('text_zone_four');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 5) { ?>
							  <option value="5" selected><?php echo $this->lang->line('text_zone_five');  ?></option>
							  <?php } else { ?>
							  <option value="5"><?php echo $this->lang->line('text_zone_five');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 6) { ?>
							  <option value="6" selected><?php echo $this->lang->line('text_zone_six');  ?></option>
							  <?php } else { ?>
							  <option value="6"><?php echo $this->lang->line('text_zone_six');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 7) { ?>
							  <option value="7" selected><?php echo $this->lang->line('text_zone_seven');  ?></option>
							  <?php } else { ?>
							  <option value="7"><?php echo $this->lang->line('text_zone_seven');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 8) { ?>
							  <option value="8" selected><?php echo $this->lang->line('text_zone_eight');  ?></option>
							  <?php } else { ?>
							  <option value="8"><?php echo $this->lang->line('text_zone_eight');  ?></option>
							  <?php } ?>
							  <?php if($postpony_zone_mapping['express_zone'] == 9) { ?>
							  <option value="9" selected><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } else { ?>
							  <option value="9"><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } ?>
							</select>
						  </td>
						  <td class="text-center"><button type="button" onclick="$('#postpony-zone-mapping-row<?php echo $postpony_zone_mapping; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $postpony_zone_mapping++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="3"></td>
						<td class="text-center"><button type="button" onclick="addZoneMapping();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
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
					  <?php if($postpony_fee_type == 0) { ?>
					    <option value="0" selected><?php echo $this->lang->line('text_fixed'); ?></option>
						<option value="1"><?php echo $this->lang->line('text_ratio'); ?></option>
						<option value="2"><?php echo $this->lang->line('text_self_defined'); ?></option>
					  <?php } else if($postpony_fee_type == 1) { ?>
					    <option value="0"><?php echo $this->lang->line('text_fixed'); ?></option>
						<option value="1" selected><?php echo $this->lang->line('text_ratio'); ?></option>	
						<option value="2"><?php echo $this->lang->line('text_self_defined'); ?></option>
					  <?php } else { ?>
					    <option value="0"><?php echo $this->lang->line('text_fixed'); ?></option>
						<option value="1"><?php echo $this->lang->line('text_ratio'); ?></option>
						<option value="2" selected><?php echo $this->lang->line('text_self_defined'); ?></option>
					  <?php } ?>
					</select>
				  </div>
				</div>
				<div class="hr-line-dashed"></div>
				<div id="general-defined">
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
				<div id="self-defined">
				  <div class="form-group">
		            <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_price_table'); ?></label>
				    <div class="col-sm-10">
					  <span class="form-control"><?php echo $postpony_price_table; ?></span>
				    </div>	  
			      </div>	
				  <div class="hr-line-dashed"></div>
				  <div class="form-group">
		            <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_upload_price_table'); ?></label>
				    <div class="col-sm-10">
				      <input type="file" name="postpony_price_table" class="form-control-file" id="postpony-price-table-input">
				    </div>	  
			      </div>
				  <div class="hr-line-dashed"></div>
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
var postpony_zone_mapping = <?php echo $postpony_zone_mapping; ?>;
         
function addZoneMapping() {
	html  = '<tr id="jd-fedex-zone-mapping-row' + postpony_zone_mapping + '">';
	html += '<td class="text-right"><input type="text" name="postpony_zone_mapping[' + postpony_zone_mapping + '][zipcode_from]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="postpony_zone_mapping[' + postpony_zone_mapping + '][zipcode_to]" value="" class="form-control" /></td>';
	html += '<td class="text-center">';
	html += '<select name="postpony_zone_mapping[' + postpony_zone_mapping + '][zone]" class="form-control">';
	html += '<option value="1"><?php echo $this->lang->line("text_zone_one"); ?></option>';
	html += '<option value="2"><?php echo $this->lang->line("text_zone_two"); ?></option>';
	html += '<option value="3"><?php echo $this->lang->line("text_zone_three"); ?></option>';
	html += '<option value="4"><?php echo $this->lang->line("text_zone_four"); ?></option>';
	html += '<option value="5"><?php echo $this->lang->line("text_zone_five"); ?></option>';
	html += '<option value="6"><?php echo $this->lang->line("text_zone_six"); ?></option>';
	html += '<option value="7"><?php echo $this->lang->line("text_zone_seven"); ?></option>';
	html += '<option value="8"><?php echo $this->lang->line("text_zone_eight"); ?></option>';
	html += '<option value="9"><?php echo $this->lang->line("text_zone_nine"); ?></option>';
	html += '</select>';
	html += '</td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#postpony-zone-mapping-row' + postpony_zone_mapping  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#zones-mapping tbody').append(html);

	postpony_zone_mapping++;
}
</script>  
<script>
$(document).ready(function() {
	if((<?php echo $postpony_fee_type?> == 0) || (<?php echo $postpony_fee_type?> == 1)) {
		$('#general-defined').show();
		$('#self-defined').hide();
	} else {
		$('#general-defined').hide();
		$('#self-defined').show();
	}
	
	$('select[name=\'postpony_fee_type\']').on('change', function() {
		if(this.value == 0) {
			$('#general-defined').show();
			$('#self-defined').hide();
			$('.fee-symbol').html('$');
		} else if(this.value == 1) {
			$('#general-defined').show();
			$('#self-defined').hide();
			$('.fee-symbol').html('%');
		} else {
			$('#general-defined').hide();
			$('#self-defined').show();
		}			
	})
});
</script>
<?php echo $footer; ?>
		
		