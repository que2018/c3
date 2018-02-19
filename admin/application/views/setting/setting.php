<link href="<?php echo base_url(); ?>assets/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/setting/setting.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<script src="<?php echo base_url(); ?>assets/js/plugins/iCheck/icheck.min.js"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_setting'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>common/home"><?php echo $this->lang->line("text_home"); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/setting"><?php echo $this->lang->line("text_system"); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line("text_setting"); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>setting/setting" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($success) { ?>
      <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
    <?php } ?>
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
    <form method="post" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>		  
		  <li class=""><a data-toggle="tab" href="#option"><?php echo $this->lang->line('tab_option'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#localization"><?php echo $this->lang->line('tab_localization'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#label"><?php echo $this->lang->line('tab_label'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#barcode"><?php echo $this->lang->line('tab_barcode'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#printnode"><?php echo $this->lang->line('tab_printnode'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#mail"><?php echo $this->lang->line('tab_mail'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#shipping"><?php echo $this->lang->line('tab_shipping'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#google"><?php echo $this->lang->line('tab_google'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_time_zone'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_time_zone" value="<?php echo $config_time_zone; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="option" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_page_limit'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_page_limit" value="<?php echo $config_page_limit; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sale_product_page_limit'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_sale_product_page_limit" value="<?php echo $config_sale_product_page_limit; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_dashboard_activity_limit'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_dashboard_activity_limit" value="<?php echo $config_dashboard_activity_limit; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_dashboard_order_limit'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_dashboard_order_limit" value="<?php echo $config_dashboard_order_limit; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_dashboard_store_sync_limit'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_dashboard_store_sync_limit" value="<?php echo $config_dashboard_store_sync_limit; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_autocomplete_limit'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_autocomplete_limit" value="<?php echo $config_autocomplete_limit; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="localization" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_language'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_language_id" class="form-control">
				    <?php foreach($languages as $language) { ?>
					<?php if($language['language_id'] == $config_language_id) { ?>
					<option value="<?php echo $language['language_id']; ?>" selected><?php echo $language['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_information_front'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_information_front_id" class="form-control">
				    <?php foreach($informations as $information) { ?>
					<?php if($information['information_id'] == $config_information_id) { ?>
					<option value="<?php echo $information['information_id']; ?>" selected><?php echo $information['title']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $information['information_id']; ?>"><?php echo $information['title']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length_class'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_length_class_id" class="form-control">
				    <?php foreach($length_classes as $length_class) { ?>
					<?php if($length_class['id'] == $config_length_class_id) { ?>
					<option value="<?php echo $length_class['id']; ?>" selected><?php echo $length_class['unit']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $length_class['id']; ?>"><?php echo $length_class['unit']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_weight_class'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_weight_class_id" class="form-control">
				    <?php foreach($weight_classes as $weight_class) { ?>
					<?php if($weight_class['id'] == $config_weight_class_id) { ?>
					<option value="<?php echo $weight_class['id']; ?>" selected><?php echo $weight_class['unit']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $weight_class['id']; ?>"><?php echo $weight_class['unit']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="label" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_label_width_type'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_label_width_type" class="form-control">
				    <?php if($config_label_width_type) { ?>
					<option value="1" selected><?php echo $this->lang->line('text_fixed'); ?></option>
					<option value="0"><?php echo $this->lang->line('text_ratio'); ?></option>
					<?php } else { ?>
					<option value="1"><?php echo $this->lang->line('text_fixed'); ?></option>
					<option value="0" selected><?php echo $this->lang->line('text_ratio'); ?></option>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_label_width'); ?></label>
			    <div class="col-sm-10">
				  <div class="input-group">
				    <?php if($config_label_width_type) { ?>
					<span class="input-group-addon">F</span>
				    <?php } else { ?>
					<span class="input-group-addon wtype">%</span>
					<?php } ?>
					<input type="text" name="config_label_width" value="<?php echo $config_label_width; ?>" class="form-control">
				  </div>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_label_posy'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_label_posy" value="<?php echo $config_label_posy; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="barcode" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_width'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_location_barcode_width" value="<?php echo $config_location_barcode_width; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_height'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_location_barcode_height" value="<?php echo $config_location_barcode_height; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_posx'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_location_barcode_posx" value="<?php echo $config_location_barcode_posx; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_posy'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_location_barcode_posy" value="<?php echo $config_location_barcode_posy; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_name_size'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_location_barcode_name_size" value="<?php echo $config_location_barcode_name_size; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_code_size'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_location_barcode_code_size" value="<?php echo $config_location_barcode_code_size; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_width'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_width" value="<?php echo $config_location_barcode_batch_width; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_height'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_height" value="<?php echo $config_location_barcode_batch_height; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_posx'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_posx" value="<?php echo $config_location_barcode_batch_posx; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_posy'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_posy" value="<?php echo $config_location_barcode_batch_posy; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_name_size'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_name_size" value="<?php echo $config_location_barcode_batch_name_size; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_code_size'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_code_size" value="<?php echo $config_location_barcode_batch_code_size; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_margin'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_margin" value="<?php echo $config_location_barcode_batch_margin; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location_barcode_batch_page_item'); ?></label>
			    <div class="col-sm-10">
			      <input name="config_location_barcode_batch_page_item" value="<?php echo $config_location_barcode_batch_page_item; ?>" class="form-control">
			    </div>
		      </div>
		      <div class="hr-line-dashed"></div>
		    </div>
		  </div>
		  <div id="printnode" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_printnode_position_x'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_printnode_position_x" value="<?php echo $config_printnode_position_x; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_printnode_position_y'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_printnode_position_y" value="<?php echo $config_printnode_position_y; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_printnode_width'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_printnode_width" value="<?php echo $config_printnode_width; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_printnode_api_key'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_printnode_api_key" value="<?php echo $config_printnode_api_key; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_printnode_active_printer'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_printnode_printer_id" class="form-control">
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="mail" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_smtp_hostname'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_smtp_hostname" value="<?php echo $config_smtp_hostname; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_smtp_username'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_smtp_username" value="<?php echo $config_smtp_username; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_smtp_password'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_smtp_password" value="<?php echo $config_smtp_password; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_smtp_port'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_smtp_port" value="<?php echo $config_smtp_port; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_smtp_timeout'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_smtp_timeout" value="<?php echo $config_smtp_timeout; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="shipping" class="tab-pane">
			<div class="panel-body">
		      <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_order_default_shipping_provider'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_default_order_shipping_provider" class="form-control">
				    <option value=""></option>
				    <?php foreach($shipping_providers as $shipping_provider) { ?>
					<?php if($shipping_provider['code'] == $config_default_order_shipping_provider) { ?>
					<option value="<?php echo $shipping_provider['code']; ?>" selected><?php echo $shipping_provider['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $shipping_provider['code']; ?>"><?php echo $shipping_provider['name']; ?></option>					
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_order_default_shipping_service'); ?></label>
			    <div class="col-sm-10">
				  <select name="config_default_order_shipping_service" class="form-control">
				    <?php if($shipping_services) { ?>
				    <?php foreach($shipping_services as $shipping_service) { ?>
					<?php if($shipping_service['code'] == $config_default_order_shipping_service) { ?>
					<option value="<?php echo $shipping_service['code']; ?>" selected><?php echo $shipping_service['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $shipping_service['code']; ?>"><?php echo $shipping_service['name']; ?></option>					
					<?php } ?>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="google" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_google_key'); ?></label>
			    <div class="col-sm-10">
				  <input name="config_google_key" value="<?php echo $config_google_key; ?>" class="form-control">
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>	
			</div>
		  </div>
		</div>
	  </div>
	</form>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	$('select[name=\'config_default_order_shipping_provider\']').on('change', function() {
		code = $(this).val();
	
		if(code) {
			$.ajax({
				url: '<?php echo base_url(); ?>extension/shipping/get_shipping_services?code=' + code,
				dataType: "json",
				beforeSend: function() {
					$('#alert-error').hide();
					$('#alert-loading').show();
				},
				complete: function() {
					$('#alert-loading').hide();
				},
				success: function(json) {					
					if(json.success) 
					{	
						shipping_service_html = '';
					
						$.each(json.shipping_services, function(index, shipping_serivce) {							
							shipping_service_html += '<option value="'+ shipping_serivce.method +'">' + shipping_serivce.name + '</option>';
						});
				
						$('select[name=\'config_default_order_shipping_service\']').html(shipping_service_html);
					}
					else 
					{
						$('#alert-error span').html(json.msg);		
						$('#alert-error').show();
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
		else
		{
			shipping_service_html = '<option value=""></optioin>';
			
			$('select[name=\'config_default_order_shipping_service\']').html(shipping_service_html);
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$.ajax({
		url: '<?php echo base_url(); ?>setting/setting/get_printers',
		dataType: 'json',
		success: function(json) {					
			if(json.success) 
			{	
				printer_html = '';
			
 				$.each(json.printers, function(index, printer) {	
                   if(printer.id == <?php echo $config_printnode_printer_id; ?>) {
						printer_html += '<option value="'+ printer.id +'" selected>' + printer.name + '</option>';
				   } else {
						printer_html += '<option value="'+ printer.id +'">' + printer.name + '</option>';
				   }
				});
		
				$('select[name=\'config_printnode_printer_id\']').html(printer_html);
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});

});
</script>
<script>
$(document).ready(function () {
	$('.i-checks').iCheck({
		checkboxClass: 'icheckbox_square-green',
		radioClass: 'iradio_square-green',
	});
});
</script>
<script>
$(document).ready(function () {
	$('select[name=\'config_label_width_type\']').change(function(){
		if($(this).val() == 1) {
			$('.wtype').html('F');
		} else {
			$('.wtype').html('%');
		}
	});
});
</script>
		
		