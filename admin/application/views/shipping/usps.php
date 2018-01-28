<link href="<?php echo base_url(); ?>assets/css/app/shipping/usps.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_usps'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('text_shipping'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_usps'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
	<button type="button" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>extension/shipping" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
			<li class=""><a data-toggle="tab" href="#stamps"><?php echo $this->lang->line('tab_stamps_com'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#service"><?php echo $this->lang->line('tab_service'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
			     <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_user_id'); ?></label>
			      <div class="col-sm-10"><input name="usps_user_id" value="<?php echo $usps_user_id; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_time_zone'); ?></label>
			      <div class="col-sm-10"><input name="usps_time_zone" value="<?php echo $usps_time_zone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_owner'); ?></label>
			      <div class="col-sm-10"><input name="usps_owner" value="<?php echo $usps_owner; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_first_name'); ?></label>
			      <div class="col-sm-10"><input name="usps_first_name" value="<?php echo $usps_first_name; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_last_name'); ?></label>
			      <div class="col-sm-10"><input name="usps_last_name" value="<?php echo $usps_last_name; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_company'); ?></label>
			      <div class="col-sm-10"><input name="usps_company" value="<?php echo $usps_company; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			      <div class="col-sm-10"><input name="usps_phone" value="<?php echo $usps_phone; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
			      <div class="col-sm-10"><input name="usps_street" value="<?php echo $usps_street; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
			      <div class="col-sm-10"><input name="usps_street2" value="<?php echo $usps_street2; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
			      <div class="col-sm-10"><input name="usps_city" value="<?php echo $usps_city; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
			      <div class="col-sm-10"><input name="usps_state" value="<?php echo $usps_state; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
			      <div class="col-sm-10"><input name="usps_country" value="<?php echo $usps_country; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_postcode'); ?></label>
			      <div class="col-sm-10"><input name="usps_postcode" value="<?php echo $usps_postcode; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="usps_status" class="form-control">
					  <?php if($usps_status) { ?>
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
				  <div class="col-sm-10"><input name="usps_sort_order" value="<?php echo $usps_sort_order; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>				
			  </div>
		    </div>
			<div id="stamps" class="tab-pane">
			  <div class="panel-body">
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_username'); ?></label>
			      <div class="col-sm-10"><input name="usps_stamps_username" value="<?php echo $usps_stamps_username; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_password'); ?></label>
			      <div class="col-sm-10"><input name="usps_stamps_password" value="<?php echo $usps_stamps_password; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_integration_id'); ?></label>
			      <div class="col-sm-10"><input name="usps_stamps_integration_id" value="<?php echo $usps_stamps_integration_id; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_wsdl_file'); ?></label>
			      <div class="col-sm-10"><input name="usps_stamps_wsdl_file" value="<?php echo $usps_stamps_wsdl_file; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
			  </div>
			</div>
		    <div id="service" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="usps_services" class="table table-striped table-bordered table-hover">
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
					  <?php $usps_service_row = 0; ?>
					  <?php if($usps_services) { ?>
						<?php foreach ($usps_services as $usps_service) { ?>
						<tr id="usps-service-row<?php echo $usps_service_row; ?>">
						  <td class="text-right"><input type="text" name="usps_service[<?php echo $usps_service_row; ?>][name]" value="<?php echo $usps_service['name']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="usps_service[<?php echo $usps_service_row; ?>][code]" value="<?php echo $usps_service['code']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="usps_service[<?php echo $usps_service_row; ?>][method]" value="<?php echo $usps_service['method']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="usps_service[<?php echo $usps_service_row; ?>][package]" value="<?php echo $usps_service['package']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#usps-service-row<?php echo $usps_service_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $usps_service_row++; ?>
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
			<div id="fee" class="tab-pane">
			  <div class="panel-body">
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_fee_type'); ?></label>
			      <div class="col-sm-10">
				    <select name="usps_fee_type" class="form-control">
					  <?php if($usps_fee_type) { ?>
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
					  <?php if($usps_fee_type) { ?>
					    <span class="input-group-addon fee-symbol">%</span>
					  <?php } else { ?>
					    <span class="input-group-addon fee-symbol">$</span>
					  <?php } ?>
				      <input type="text" name="usps_fee_value" value="<?php echo $usps_fee_value; ?>" class="form-control">
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
						    <?php if($usps_fee_type) { ?>
						    <span class="input-group-addon fee-symbol">%</span>
							<?php } else { ?>
							<span class="input-group-addon fee-symbol">$</span>
							<?php } ?>
							<input type="text" name="usps_client_fee[<?php echo $i; ?>][fee]" value="<?php echo $client['fee']; ?>" class="form-control">
							<input type="hidden" name="usps_client_fee[<?php echo $i; ?>][client_id]" value="<?php echo $client['client_id']; ?>">
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
var usps_service_row = <?php echo $usps_service_row; ?>;

function addService() {
	html  = '<tr id="usps-service-row' + usps_service_row + '">';
	html += '  <td class="text-right"><input type="text" name="usps_service[' + usps_service_row + '][name]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="usps_service[' + usps_service_row + '][code]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="usps_service[' + usps_service_row + '][method]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="usps_service[' + usps_service_row + '][package]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#usps-service-row' + usps_service_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#usps_services tbody').append(html);

	usps_service_row++;
}
</script> 
<script>
$(document).ready(function() {
	$('select[name=\'usps_fee_type\']').on('change', function() {
		if(this.value == 1) {
			$('.fee-symbol').html('%');
		} else {
			$('.fee-symbol').html('$');
		}			
	})
});
</script>
		
		