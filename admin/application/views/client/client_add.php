<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_add_client'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>client/client"><?php echo $this->lang->line('text_client'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_add_client'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>client/client" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>	
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
    <form method="post" action="<?php echo base_url(); ?>client/client/add" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li><a data-toggle="tab" href="#data"><?php echo $this->lang->line('tab_data'); ?></a></li>
		  <li><a data-toggle="tab" href="#permission"><?php echo $this->lang->line('tab_permission'); ?></a></li>
		  <li><a data-toggle="tab" href="#location"><?php echo $this->lang->line('tab_location'); ?></a></li>
		  <li><a data-toggle="tab" href="#address"><?php echo $this->lang->line('tab_address'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
              <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_email'); ?></label>
			    <div class="col-sm-10"><input type="text" name="email" value="<?php echo $email; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_password'); ?></label>
			    <div class="col-sm-10"><input type="password" name="password" value="" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_firstname'); ?></label>
			    <div class="col-sm-10"><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_lastname'); ?></label>
			    <div class="col-sm-10"><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_company'); ?></label>
			    <div class="col-sm-10"><input type="text" name="company" value="<?php echo $company; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
			    <div class="col-sm-10"><input type="text" name="street" value="<?php echo $street; ?>" class="form-control"></div>
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
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			    <div class="col-sm-10"><input type="text" name="phone" value="<?php echo $phone; ?>" class="form-control"></div>
			  </div>
			</div>
		  </div>
		  <div id="data" class="tab-pane">
		    <div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_email'); ?></label>
				<div class="col-sm-10">
				  <?php if(isset($data['mail']['checkin'])) { ?>
				    <div class="i-checks"><label><input type="checkbox" name="data[mail][checkin]" value="1" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('text_checkin'); ?></label></div>
				  <?php } else { ?>
				    <div class="i-checks"><label><input type="checkbox" name="data[mail][checkin]" value="1"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('text_checkin'); ?></label></div>
				  <?php } ?>
			      <?php if(isset($data['mail']['order'])) { ?>
				    <div class="i-checks"><label><input type="checkbox" name="data[mail][order]" value="1" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('text_order'); ?></label></div>
				  <?php } else { ?>
				    <div class="i-checks"><label><input type="checkbox" name="data[mail][order]" value="1"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('text_order'); ?></label></div>
				  <?php } ?>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="permission" class="tab-pane">
		    <div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_permission'); ?></label>
				<div class="col-sm-10">
				  <?php if($shipping_providers) { ?>
				    <?php foreach($shipping_providers as $shipping_provider) { ?>
					  <?php if(isset($permission['shipping'][$shipping_provider['code']])) { ?>
				      <div class="i-checks"><label><input type="checkbox" name="permission[shipping][<?php echo $shipping_provider['code']; ?>]" value="1" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $shipping_provider['name']; ?></label></div>
				      <?php } else { ?>
				      <div class="i-checks"><label><input type="checkbox" name="permission[shipping][<?php echo $shipping_provider['code']; ?>]" value="1"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $shipping_provider['name']; ?></label></div>
				      <?php } ?>
					<?php } ?>
				  <?php } ?>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_balance_permission'); ?></label>
				<div class="col-sm-10">
				  <?php if(isset($permission['balance']['shipping'])) { ?>
				  <div class="i-checks"><label><input type="checkbox" name="permission[balance][label]" value="1" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('text_labeling'); ?></label></div>
				  <?php } else { ?>
				  <div class="i-checks"><label><input type="checkbox" name="permission[balance][label]" value="1"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('text_labeling'); ?></label></div>
				  <?php } ?>
				</div>
              </div>
			</div>
		  </div>	 
		  <div id="location" class="tab-pane">
			<div class="panel-body">
		      <div class="table-responsive">
			    <table id="locations" class="table table-striped table-bordered table-hover">
				  <thead>
				    <tr>
					  <th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_location') ?></th>
					  <th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_date_added') ?></th>
					  <td></td>
				    </tr>
				  </thead>
				  <tbody>
				    <?php $location_row = 0; ?>
				    <?php if($locations) { ?>
					  <?php foreach ($locations as $location) { ?>
					  <tr id="location-row<?php echo $location_row; ?>">
					    <td class="text-right">
						  <input type="text" name="location[<?php echo $location_row; ?>][name]" value="<?php echo $location['name']; ?>" class="form-control" />
						  <input type="hidden" name="location[<?php echo $location_row; ?>][location_id]" />
						</td>
					    <td class="text-right">
						  <input type="text" name="location[<?php echo $location_row; ?>][date_added]" value="<?php echo $location['date_added']; ?>" class="form-control text" data-date-format="YYYY-MM-DD" />
						  <span class="input-group-btn"><button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button></span>
						</td>
					    <td class="text-center"><button type="button" onclick="$('#location-row<?php echo $location_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					  </tr>
					  <?php $location_row++; ?>
					  <?php } ?>
				    <?php } ?>
				  </tbody>
				  <tfoot>
				    <tr>
					  <td colspan="2"></td>
					  <td class="text-center"><button type="button" onclick="addLocation();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
				    </tr>
				  </tfoot>
			    </table>
			  </div>
			</div>
		  </div>
		  <div id="address" class="tab-pane">
			<div class="panel-body">
		      <div class="table-responsive">
			    <table id="addresses" class="table table-striped table-bordered table-hover">
				  <thead>
				    <tr>
					  <th class="text-left" style="width: 18%;"><?php echo $this->lang->line('column_street') ?></th>
					  <th class="text-left" style="width: 18%;"><?php echo $this->lang->line('column_street2') ?></th>
					  <th class="text-left" style="width: 12%;"><?php echo $this->lang->line('column_city') ?></th>
					  <th class="text-left" style="width: 12%;"><?php echo $this->lang->line('column_state') ?></th>
					  <th class="text-left" style="width: 12%;"><?php echo $this->lang->line('column_country') ?></th>
					  <th class="text-left" style="width: 12%;"><?php echo $this->lang->line('column_zipcode') ?></th>
					  <th></th>
				    </tr>
				  </thead>
				  <tbody>
				    <?php $address_row = 0; ?>
				    <?php if($addresses) { ?>
					  <?php foreach ($addresses as $address) { ?>
					  <tr id="address-row<?php echo $address_row; ?>">
					    <td class="text-left"><input type="text" name="address[<?php echo $address_row; ?>][street]" value="<?php echo $address['street']; ?>" class="form-control" /></td>
					    <td class="text-left"><input type="text" name="address[<?php echo $address_row; ?>][street2]" value="<?php echo $address['street2']; ?>" class="form-control" /></td>
					    <td class="text-left"><input type="text" name="address[<?php echo $address_row; ?>][city]" value="<?php echo $address['city']; ?>" class="form-control" /></td>
					    <td class="text-left"><input type="text" name="address[<?php echo $address_row; ?>][state]" value="<?php echo $address['state']; ?>" class="form-control" /></td>
					    <td class="text-left"><input type="text" name="address[<?php echo $address_row; ?>][country]" value="<?php echo $address['country']; ?>" class="form-control" /></td>
					    <td class="text-left"><input type="text" name="address[<?php echo $address_row; ?>][zipcode]" value="<?php echo $address['zipcode']; ?>" class="form-control" /></td>					   
					    <td class="text-center"><button type="button" onclick="$('#address-row<?php echo $address_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					  </tr>
					  <?php $address_row++; ?>
					  <?php } ?>
				    <?php } ?>
				  </tbody>
				  <tfoot>
				    <tr>
					  <td colspan="6"></td>
					  <td class="text-center"><button type="button" onclick="addAddress();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
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
var location_row = <?php echo $location_row; ?>;

function addLocation() {
	html  = '<tr id="location-row' + location_row + '">';
	html += '<td class="text-right" style="width: 40%;">';
	html += '<input type="text" name="location[' + location_row + '][name]" value="" class="form-control" />';
	html += '<input type="hidden" name="location[' + location_row + '][location_id]" value="">';
	html += '</td>';
	html += '<td class="text-right" style="width: 40%;">';
	html += '<div class="input-group">';
	html += '<input type="text" name="location[' + location_row + '][date_added]" value="<?php echo $current_date; ?>" class="form-control" />';
	html += '<span class="input-group-btn"><button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button></span>';
	html += '</div>';
	html += '</td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#location-row' + location_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#locations tbody').append(html);

	locationautocomplete(location_row);
	
	location_row++;
}

function locationautocomplete(location_row) {	
	$('input[name=\'location[' + location_row + '][name]\']').autocomplete({  
		'source': function(request, response) {
			location_name = $('input[name=\'location[' + location_row + '][name]\']').val();
								
			$.ajax({
				url: '<?php echo base_url(); ?>warehouse/location_ajax/autocomplete?location_name=' + location_name,
				dataType: 'json',
				success: function(json) {
					if(json.success)
					{
						response($.map(json.locations, function(item) {					
							return {
								label:       item['name'],
								location_id: item['location_id'],
								name:        item['name']
							}
						}));
					}
				}
			});
			
		},
		'select': function(event, ui) {		
			$('input[name=\'location[' + location_row + '][name]\']').val(ui.item.name);
			$('input[name=\'location[' + location_row + '][location_id]\']').val(ui.item.location_id);
		}
	});
}
</script>
<script>
var address_row = <?php echo $address_row; ?>;

function addAddress() {
	html  = '<tr id="address-row' + address_row + '">';
	html += '<td class="text-left"><input type="text" name="address[' + address_row + '][street]" value="" class="form-control" /></td>';
	html += '<td class="text-left"><input type="text" name="address[' + address_row + '][street2]" value="" class="form-control" /></td>';
	html += '<td class="text-left"><input type="text" name="address[' + address_row + '][city]" value="" class="form-control" /></td>';
	html += '<td class="text-left"><input type="text" name="address[' + address_row + '][state]" value="" class="form-control" /></td>';
	html += '<td class="text-left"><input type="text" name="address[' + address_row + '][country]" value="" class="form-control" /></td>';
	html += '<td class="text-left"><input type="text" name="address[' + address_row + '][zipcode]" value="" class="form-control" /></td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#address-row' + address_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#addresses tbody').append(html);
	
	address_row++;
}
</script>
<script>
$(document).ready(function () {
	$('.i-checks').iCheck({
		checkboxClass: 'icheckbox_square-green',
		radioClass: 'iradio_square-green',
	});
});
</script>
<?php echo $footer; ?>

		
		