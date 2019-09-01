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
				    <input type="file" name="fedex_ground_price_table" class="form-control-file" id="fedex-ground-price-table-input">
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
				    <input type="file" name="fedex_two_day_price_table" class="form-control-file" id="fedex-two-day-price-table-input">
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
<?php echo $footer; ?>		
		