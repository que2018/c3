<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('text_shipping'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_jd'); ?></strong></li>
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
	  <form method="post" class="form-horizontal" enctype="multipart/form-data">
	    <div class="tabs-container">
	      <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		    <li><a data-toggle="tab" href="#service"><?php echo $this->lang->line('tab_service'); ?></a></li>
			<li><a data-toggle="tab" href="#fedex-zone-mapping"><?php echo $this->lang->line('tab_fedex_zone_mapping'); ?></a></li>
			<li><a data-toggle="tab" href="#fedex-zone-mapping-addi"><?php echo $this->lang->line('tab_fedex_zone_mapping_addi'); ?></a></li>
			<li><a data-toggle="tab" href="#state-mapping"><?php echo $this->lang->line('tab_state_mapping'); ?></a></li>
			<li><a data-toggle="tab" href="#price-table"><?php echo $this->lang->line('tab_price_table'); ?></a></li>
			<li><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_user'); ?></label>
				  <div class="col-sm-10"><input name="jd_user" value="<?php echo $jd_user; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_secret_Key'); ?></label>
				  <div class="col-sm-10"><input name="jd_secret_key" value="<?php echo $jd_secret_key; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_url_args'); ?></label>
				  <div class="col-sm-10"><input name="jd_url_args" value="<?php echo $jd_url_args; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_source'); ?></label>
				  <div class="col-sm-10"><input name="jd_source" value="<?php echo $jd_source; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_customer_id'); ?></label>
				  <div class="col-sm-10"><input name="jd_customer_id" value="<?php echo $jd_customer_id; ?>" class="form-control"></div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_customer_code'); ?></label>
				  <div class="col-sm-10"><input name="jd_customer_code" value="<?php echo $jd_customer_code; ?>" class="form-control"></div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_name'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_name" value="<?php echo $jd_sender_name; ?>" class="form-control"></div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_mobile'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_mobile" value="<?php echo $jd_sender_mobile; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_address'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_address" value="<?php echo $jd_sender_address; ?>" class="form-control"></div>	  
			    </div>				
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_city'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_city" value="<?php echo $jd_sender_city; ?>" class="form-control"></div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_province'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_province" value="<?php echo $jd_sender_province; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_country'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_country" value="<?php echo $jd_sender_country; ?>" class="form-control"></div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_postcode'); ?></label>
				  <div class="col-sm-10"><input name="jd_sender_postcode" value="<?php echo $jd_sender_postcode; ?>" class="form-control"></div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sender_order_type'); ?></label>
				  <div class="col-sm-10">
				    <select name="jd_order_type" class="form-control">
					  <?php foreach($order_types as $order_type => $order_type_desp) { ?>
					  <?php if($order_type == $jd_order_type) { ?>
					  <option value="<?php echo $order_type; ?>" selected><?php echo $order_type_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $order_type; ?>"><?php echo $order_type_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
				    </select>
				  </div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sale_plat'); ?></label>
				  <div class="col-sm-10">
				    <select name="jd_sale_plat" class="form-control">
					  <?php foreach($sale_plats as $sale_plat => $sale_plat_desp) { ?>
					  <?php if($sale_plat == $jd_sale_plat) { ?>
					  <option value="<?php echo $sale_plat; ?>" selected><?php echo $sale_plat_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $sale_plat; ?>"><?php echo $sale_plat_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
				    </select>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_weight_unit'); ?></label>
				  <div class="col-sm-10">
				    <select name="jd_weight_unit" class="form-control">
					  <?php foreach($weight_units as $weight_unit => $weight_unit_desp) { ?>
					  <?php if($weight_unit == $jd_weight_unit) { ?>
					  <option value="<?php echo $weight_unit; ?>" selected><?php echo $weight_unit_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $weight_unit; ?>"><?php echo $weight_unit_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
				    </select>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_service_pickup_method'); ?></label>
				  <div class="col-sm-10">
				    <select name="jd_service_pickup_method" class="form-control">
					  <?php foreach($service_pickup_methods as $service_pickup_method => $service_pickup_method_desp) { ?>
					  <?php if($service_pickup_method == $jd_service_pickup_method) { ?>
					  <option value="<?php echo $service_pickup_method; ?>" selected><?php echo $service_pickup_method_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $service_pickup_method; ?>"><?php echo $service_pickup_method_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
				    </select>
				  </div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_collection_value'); ?></label>
				  <div class="col-sm-10">
					<select name="jd_collection_value" class="form-control">
				      <?php foreach($collection_values as $collection_value => $jd_collection_value_desp) { ?>
					  <?php if($collection_value == $jd_collection_type) { ?>
					  <option value="<?php echo $collection_value; ?>" selected><?php echo $jd_collection_value_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $collection_value; ?>"><?php echo $jd_collection_value_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
					</select>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_good_type'); ?></label>
				  <div class="col-sm-10">
					<select name="jd_good_type" class="form-control">
				      <?php foreach($good_types as $good_type => $good_type_desp) { ?>
					  <?php if($good_type == $jd_good_type) { ?>
					  <option value="<?php echo $good_type; ?>" selected><?php echo $good_type_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $good_type; ?>"><?php echo $good_type_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
					</select>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
				  <div class="col-sm-10">
					<select name="jd_country" class="form-control">
				      <?php foreach($countries as $country => $country_desp) { ?>
					  <?php if($country == $jd_country) { ?>
					  <option value="<?php echo $country; ?>" selected><?php echo $country_desp; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $country; ?>"><?php echo $country_desp; ?></option>
					  <?php } ?>
					  <?php } ?>
					</select>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>				
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="jd_status" class="form-control">
					  <?php if($jd_status) { ?>
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
				  <div class="col-sm-10"><input name="jd_sort_order" value="<?php echo $jd_sort_order; ?>" class="form-control"></div>	  
			    </div>		
			  </div>
		    </div>
			<div id="service" class="tab-pane">
			  <div class="panel-body">
			    <div class="table-responsive">
                  <table id="jd-service" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
						<th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_name'); ?></th>
						<th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_code'); ?></th>
						<th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_method'); ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $jd_service_row = 0; ?>
					  <?php if($jd_services) { ?>
						<?php foreach ($jd_services as $jd_service) { ?>
						<tr id="jd-service-row<?php echo $jd_service_row; ?>">
						  <td class="text-right"><input type="text" name="jd_service[<?php echo $jd_service_row; ?>][name]" value="<?php echo $jd_service['name']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="jd_service[<?php echo $jd_service_row; ?>][code]" value="<?php echo $jd_service['code']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="jd_service[<?php echo $jd_service_row; ?>][method]" value="<?php echo $jd_service['method']; ?>" class="form-control" /></td>
						  <td class="text-center"><button type="button" onclick="$('#jd-service-row<?php echo $jd_service_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $jd_service_row++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="3"></td>
						<td class="text-center"><button type="button" onclick="addService();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					  </tr>
					</tfoot>
                  </table>
				</div>	
			  </div>
		    </div>
			<div id="fedex-zone-mapping" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="jd-fedex-zones-mapping" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
					  	<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_zipcode_from') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_zipcode_to') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_express_zone') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_ground_zone') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $jd_fedex_zone_mapping_row = 0; ?>
					  <?php if($jd_fedex_zones_mapping) { ?>
						<?php foreach ($jd_fedex_zones_mapping as $jd_fedex_zone_mapping) { ?>
						<tr id="jd-fedex-zone-mapping-row<?php echo $jd_fedex_zone_mapping_row; ?>">
						  <td class="text-right"><input type="text" name="jd_fedex_zone_mapping[<?php echo $jd_fedex_zone_mapping_row; ?>][zipcode_from]" value="<?php echo $jd_fedex_zone_mapping['zipcode_from']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="jd_fedex_zone_mapping[<?php echo $jd_fedex_zone_mapping_row; ?>][zipcode_to]" value="<?php echo $jd_fedex_zone_mapping['zipcode_to']; ?>" class="form-control" /></td>
						  <td>
						    <select name="jd_fedex_zone_mapping[<?php echo $jd_fedex_zone_mapping_row; ?>][express_zone]" class="form-control">
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 1) { ?>
							  <option value="1" selected><?php echo $this->lang->line('text_zone_one');  ?></option>
							  <?php } else { ?>
							  <option value="1"><?php echo $this->lang->line('text_zone_one');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 2) { ?>
							  <option value="2" selected><?php echo $this->lang->line('text_zone_two');  ?></option>
							  <?php } else { ?>
							  <option value="2"><?php echo $this->lang->line('text_zone_two');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 3) { ?>
							  <option value="3" selected><?php echo $this->lang->line('text_zone_three');  ?></option>
							  <?php } else { ?>
							  <option value="3"><?php echo $this->lang->line('text_zone_three');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 4) { ?>
							  <option value="4" selected><?php echo $this->lang->line('text_zone_four');  ?></option>
							  <?php } else { ?>
							  <option value="4"><?php echo $this->lang->line('text_zone_four');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 5) { ?>
							  <option value="5" selected><?php echo $this->lang->line('text_zone_five');  ?></option>
							  <?php } else { ?>
							  <option value="5"><?php echo $this->lang->line('text_zone_five');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 6) { ?>
							  <option value="6" selected><?php echo $this->lang->line('text_zone_six');  ?></option>
							  <?php } else { ?>
							  <option value="6"><?php echo $this->lang->line('text_zone_six');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 7) { ?>
							  <option value="7" selected><?php echo $this->lang->line('text_zone_seven');  ?></option>
							  <?php } else { ?>
							  <option value="7"><?php echo $this->lang->line('text_zone_seven');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 8) { ?>
							  <option value="8" selected><?php echo $this->lang->line('text_zone_eight');  ?></option>
							  <?php } else { ?>
							  <option value="8"><?php echo $this->lang->line('text_zone_eight');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['express_zone'] == 9) { ?>
							  <option value="9" selected><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } else { ?>
							  <option value="9"><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } ?>
							</select>
						  </td>
						  <td>
						    <select name="jd_fedex_zone_mapping[<?php echo $jd_fedex_zone_mapping_row; ?>][ground_zone]" class="form-control">
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 1) { ?>
							  <option value="1" selected><?php echo $this->lang->line('text_zone_one');  ?></option>
							  <?php } else { ?>
							  <option value="1"><?php echo $this->lang->line('text_zone_one');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 2) { ?>
							  <option value="2" selected><?php echo $this->lang->line('text_zone_two');  ?></option>
							  <?php } else { ?>
							  <option value="2"><?php echo $this->lang->line('text_zone_two');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 3) { ?>
							  <option value="3" selected><?php echo $this->lang->line('text_zone_three');  ?></option>
							  <?php } else { ?>
							  <option value="3"><?php echo $this->lang->line('text_zone_three');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 4) { ?>
							  <option value="4" selected><?php echo $this->lang->line('text_zone_four');  ?></option>
							  <?php } else { ?>
							  <option value="4"><?php echo $this->lang->line('text_zone_four');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 5) { ?>
							  <option value="5" selected><?php echo $this->lang->line('text_zone_five');  ?></option>
							  <?php } else { ?>
							  <option value="5"><?php echo $this->lang->line('text_zone_five');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 6) { ?>
							  <option value="6" selected><?php echo $this->lang->line('text_zone_six');  ?></option>
							  <?php } else { ?>
							  <option value="6"><?php echo $this->lang->line('text_zone_six');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 7) { ?>
							  <option value="7" selected><?php echo $this->lang->line('text_zone_seven');  ?></option>
							  <?php } else { ?>
							  <option value="7"><?php echo $this->lang->line('text_zone_seven');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 8) { ?>
							  <option value="8" selected><?php echo $this->lang->line('text_zone_eight');  ?></option>
							  <?php } else { ?>
							  <option value="8"><?php echo $this->lang->line('text_zone_eight');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping['ground_zone'] == 9) { ?>
							  <option value="9" selected><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } else { ?>
							  <option value="9"><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } ?>
							</select>
						  </td>
						  <td class="text-center"><button type="button" onclick="$('#jd-fedex-zone-mapping-row<?php echo $jd_fedex_zone_mapping_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $jd_fedex_zone_mapping_row++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="4"></td>
						<td class="text-center"><button type="button" onclick="addFedexZoneMapping();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					  </tr>
					</tfoot>
                  </table>
				</div>	
			  </div>
		    </div>
			<div id="fedex-zone-mapping-addi" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="jd-fedex-zones-mapping-addi" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
					  	<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_zipcode_from') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_zipcode_to') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_express_zone') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_ground_zone') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $jd_fedex_zone_mapping_addi_row = 0; ?>
					  <?php if($jd_fedex_zones_mapping_addi) { ?>
						<?php foreach ($jd_fedex_zones_mapping_addi as $jd_fedex_zone_mapping_addi) { ?>
						<tr id="jd-fedex-zone-mapping-addi-row<?php echo $jd_fedex_zone_mapping_addi_row; ?>">
						  <td class="text-right"><input type="text" name="jd_fedex_zone_mapping_addi[<?php echo $jd_fedex_zone_mapping_addi_row; ?>][zipcode_from]" value="<?php echo $jd_fedex_zone_mapping_addi['zipcode_from']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="jd_fedex_zone_mapping_addi[<?php echo $jd_fedex_zone_mapping_addi_row; ?>][zipcode_to]" value="<?php echo $jd_fedex_zone_mapping_addi['zipcode_to']; ?>" class="form-control" /></td>
						  <td>
						    <select name="jd_fedex_zone_mapping_addi[<?php echo $jd_fedex_zone_mapping_addi_row; ?>][express_zone]" class="form-control">
							  <?php if($jd_fedex_zone_mapping_addi['express_zone'] == 9) { ?>
							  <option value="9" selected><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } else { ?>
							  <option value="9"><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['express_zone'] == 10) { ?>
							  <option value="10" selected><?php echo $this->lang->line('text_zone_ten');  ?></option>
							  <?php } else { ?>
							  <option value="10"><?php echo $this->lang->line('text_zone_ten');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['express_zone'] == 11) { ?>
							  <option value="11" selected><?php echo $this->lang->line('text_zone_eleven');  ?></option>
							  <?php } else { ?>
							  <option value="11"><?php echo $this->lang->line('text_zone_eleven');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['express_zone'] == 12) { ?>
							  <option value="12" selected><?php echo $this->lang->line('text_zone_twelve');  ?></option>
							  <?php } else { ?>
							  <option value="12"><?php echo $this->lang->line('text_zone_twelve');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['express_zone'] == 17) { ?>
							  <option value="17" selected><?php echo $this->lang->line('text_zone_seventeen');  ?></option>
							  <?php } else { ?>
							  <option value="17"><?php echo $this->lang->line('text_zone_seventeen');  ?></option>
							  <?php } ?>
							</select>
						  </td>
						  <td>
						     <select name="jd_fedex_zone_mapping_addi[<?php echo $jd_fedex_zone_mapping_addi_row; ?>][ground_zone]" class="form-control">
							  <?php if($jd_fedex_zone_mapping_addi['ground_zone'] == 9) { ?>
							  <option value="9" selected><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } else { ?>
							  <option value="9"><?php echo $this->lang->line('text_zone_nine');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['ground_zone'] == 10) { ?>
							  <option value="10" selected><?php echo $this->lang->line('text_zone_ten');  ?></option>
							  <?php } else { ?>
							  <option value="10"><?php echo $this->lang->line('text_zone_ten');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['ground_zone'] == 11) { ?>
							  <option value="11" selected><?php echo $this->lang->line('text_zone_eleven');  ?></option>
							  <?php } else { ?>
							  <option value="11"><?php echo $this->lang->line('text_zone_eleven');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['ground_zone'] == 12) { ?>
							  <option value="12" selected><?php echo $this->lang->line('text_zone_twelve');  ?></option>
							  <?php } else { ?>
							  <option value="12"><?php echo $this->lang->line('text_zone_twelve');  ?></option>
							  <?php } ?>
							  <?php if($jd_fedex_zone_mapping_addi['ground_zone'] == 17) { ?>
							  <option value="17" selected><?php echo $this->lang->line('text_zone_seventeen');  ?></option>
							  <?php } else { ?>
							  <option value="17"><?php echo $this->lang->line('text_zone_seventeen');  ?></option>
							  <?php } ?>
							</select>
						  </td>
						  <td class="text-center"><button type="button" onclick="$('#jd-fedex-zone-mapping-addi-row<?php echo $jd_fedex_zone_mapping_addi_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $jd_fedex_zone_mapping_addi_row++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="4"></td>
						<td class="text-center"><button type="button" onclick="addFedexZoneMappingAddi();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					  </tr>
					</tfoot>
                  </table>
				</div>	
			  </div>
		    </div>
			<div id="state-mapping" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="jd_states_mapping" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
					  	<th class="text-left" style="width: 35%;"><?php echo $this->lang->line('column_state_short') ?></th>
						<th class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_state_long') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $jd_state_mapping_row = 0; ?>
					  <?php if($jd_states_mapping) { ?>
						<?php foreach ($jd_states_mapping as $jd_state_mapping) { ?>
						<tr id="jd-state-mapping-row<?php echo $jd_state_mapping_row; ?>">
						  <td class="text-right"><input type="text" name="jd_state_mapping[<?php echo $jd_state_mapping_row; ?>][state_short]" value="<?php echo $jd_state_mapping['state_short']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="jd_state_mapping[<?php echo $jd_state_mapping_row; ?>][state_long]" value="<?php echo $jd_state_mapping['state_long']; ?>" class="form-control" /></td>
						  <td class="text-center"><button type="button" onclick="$('#jd-state-mapping-row<?php echo $jd_state_mapping_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $jd_state_mapping_row++; ?>
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
			<div id="price-table" class="tab-pane">
			  <div class="panel-body">
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_fedex_ground_price_table'); ?></label>
				  <div class="col-sm-10">
					<span class="form-control"><?php echo $jd_fedex_ground_price_table; ?></span>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_upload_fedex_ground_price_table'); ?></label>
				  <div class="col-sm-10">
				    <input type="file" name="fedex_ground_price_table" class="form-control-file" id="jd-ground-price-table-input">
				  </div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_fedex_two_day_price_table'); ?></label>
				  <div class="col-sm-10">
					<span class="form-control"><?php echo $jd_fedex_two_day_price_table; ?></span>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_upload_fedex_two_day_price_table'); ?></label>
				  <div class="col-sm-10">
				    <input type="file" name="fedex_two_day_price_table" class="form-control-file" id="jd-two-day-price-table-input">
				  </div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_dhl_express_price_table'); ?></label>
				  <div class="col-sm-10">
					<span class="form-control"><?php echo $jd_dhl_express_price_table; ?></span>
				  </div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_upload_dhl_express_price_table'); ?></label>
				  <div class="col-sm-10">
				    <input type="file" name="dhl_express_price_table" class="form-control-file" id="dhl-express-price-table-input">
				  </div>	  
			    </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_gas_fee'); ?></label>
				  <div class="col-sm-10"><input name="jd_gas_fee" value="<?php echo $jd_gas_fee; ?>" class="form-control"></div>	  
			    </div>	
				<div class="hr-line-dashed"></div>
			  </div>
			</div>
			<div id="fee" class="tab-pane">
			  <div class="panel-body">
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_fee_type'); ?></label>
			      <div class="col-sm-10">
				    <select name="jd_fee_type" class="form-control">
					  <?php if($jd_fee_type) { ?>
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
					  <?php if($jd_fee_type) { ?>
					    <span class="input-group-addon fee-symbol">%</span>
					  <?php } else { ?>
					    <span class="input-group-addon fee-symbol">$</span>
					  <?php } ?>
				      <input type="text" name="jd_fee_value" value="<?php echo $jd_fee_value; ?>" class="form-control">
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
						    <?php if($jd_fee_type) { ?>
						    <span class="input-group-addon fee-symbol">%</span>
							<?php } else { ?>
							<span class="input-group-addon fee-symbol">$</span>
							<?php } ?>
							<input type="text" name="jd_client_fee[<?php echo $i; ?>][fee]" value="<?php echo $client['fee']; ?>" class="form-control">
							<input type="hidden" name="jd_client_fee[<?php echo $i; ?>][client_id]" value="<?php echo $client['client_id']; ?>">
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
var jd_service_row = <?php echo $jd_service_row; ?>;

function addService() {
	html  = '<tr id="jd-service-row' + jd_service_row + '">';
	html += '<td class="text-right"><input type="text" name="jd_service[' + jd_service_row + '][name]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="jd_service[' + jd_service_row + '][code]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="jd_service[' + jd_service_row + '][method]" value="" class="form-control" /></td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#jd-service-row' + jd_service_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#jd-service tbody').append(html);

	jd_service_row ++;
}
</script>
<script>
var jd_fedex_zone_mapping_row = <?php echo $jd_fedex_zone_mapping_row; ?>;
         
function addFedexZoneMapping() {
	html  = '<tr id="jd-fedex-zone-mapping-row' + jd_fedex_zone_mapping_row + '">';
	html += '<td class="text-right"><input type="text" name="jd_fedex_zone_mapping[' + jd_fedex_zone_mapping_row + '][zipcode_from]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="jd_fedex_zone_mapping[' + jd_fedex_zone_mapping_row + '][zipcode_to]" value="" class="form-control" /></td>';
	html += '<td class="text-center">';
	html += '<select name="jd_fedex_zone_mapping[' + jd_fedex_zone_mapping_row + '][express_zone]" class="form-control">';
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
	html += '<td class="text-center">';
	html += '<select name="jd_fedex_zone_mapping[' + jd_fedex_zone_mapping_row + '][ground_zone]" class="form-control">';
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
	html += '<td class="text-center"><button type="button" onclick="$(\'#jd-fedex-zone-mapping-row' + jd_fedex_zone_mapping_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#jd-fedex-zones-mapping tbody').append(html);

	jd_fedex_zone_mapping_row++;
}
</script>  
<script>
var jd_fedex_zone_mapping_addi_row = <?php echo $jd_fedex_zone_mapping_addi_row; ?>;
         
function addFedexZoneMappingAddi() {
	html  = '<tr id="jd-fedex-zone-mapping-addi-row' + jd_fedex_zone_mapping_addi_row + '">';
	html += '<td class="text-right"><input type="text" name="jd_fedex_zone_mapping_addi[' + jd_fedex_zone_mapping_addi_row + '][zipcode_from]" value="" class="form-control" /></td>';
	html += '<td class="text-right"><input type="text" name="jd_fedex_zone_mapping_addi[' + jd_fedex_zone_mapping_addi_row + '][zipcode_to]" value="" class="form-control" /></td>';
	html += '<td class="text-center">';
	html += '<select name="jd_fedex_zone_mapping_addi[' + jd_fedex_zone_mapping_addi_row + '][express_zone]" class="form-control">';
	html += '<option value="9"><?php echo $this->lang->line("text_zone_nine"); ?></option>';
	html += '<option value="10"><?php echo $this->lang->line("text_zone_ten"); ?></option>';
	html += '<option value="11"><?php echo $this->lang->line("text_zone_eleven"); ?></option>';
	html += '<option value="12"><?php echo $this->lang->line("text_zone_twelve"); ?></option>';
	html += '<option value="17"><?php echo $this->lang->line("text_zone_seventeen"); ?></option>';
	html += '</select>';
	html += '</td>';
	html += '<td class="text-center">';
	html += '<select name="jd_fedex_zone_mapping_addi[' + jd_fedex_zone_mapping_addi_row + '][ground_zone]" class="form-control">';
	html += '<option value="9"><?php echo $this->lang->line("text_zone_nine"); ?></option>';
	html += '<option value="10"><?php echo $this->lang->line("text_zone_ten"); ?></option>';
	html += '<option value="11"><?php echo $this->lang->line("text_zone_eleven"); ?></option>';
	html += '<option value="12"><?php echo $this->lang->line("text_zone_twelve"); ?></option>';
	html += '<option value="17"><?php echo $this->lang->line("text_zone_seventeen"); ?></option>';
	html += '</td>';
	html += '<td class="text-center"><button type="button" onclick="$(\'#jd-fedex-zone-mapping-addi-row' + jd_fedex_zone_mapping_addi_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#jd-fedex-zones-mapping-addi tbody').append(html);

	jd_fedex_zone_mapping_addi_row++;
}
</script> 
<script>
var jd_state_mapping_row = <?php echo $jd_state_mapping_row; ?>;
         
function addStateMapping() {
	html  = '<tr id="jd-state-mapping-row' + jd_state_mapping_row + '">';
	html += '  <td class="text-right"><input type="text" name="jd_state_mapping[' + jd_state_mapping_row + '][state_short]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="jd_state_mapping[' + jd_state_mapping_row + '][state_long]" value="" class="form-control" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#jd-state-mapping-row' + jd_state_mapping_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#jd_states_mapping tbody').append(html);

	jd_state_mapping_row++;
}
</script> 
<?php echo $footer; ?>		
		