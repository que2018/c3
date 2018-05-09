<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/store/store"><?php echo $this->lang->line('text_store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_edit'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>store/store" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
		  <li><a data-toggle="tab" href="#setting"><?php echo $this->lang->line('tab_setting'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
		    <div class="panel-body">
			  <div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
                <div class="col-sm-10">
				  <select name="client_id" class="form-control">
				    <option value=""></option>
				    <?php foreach($clients as $client) { ?>  
				    <?php if($client['client_id'] == $client_id) { ?>
				    <option value="<?php echo $client['client_id']; ?>" selected><?php echo $client['name']; ?></option>
				    <?php } else { ?>
				    <option value="<?php echo $client['client_id']; ?>"><?php echo $client['name']; ?></option>
				    <?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_platform'); ?></label>
                <div class="col-sm-10">
			      <select name="platform" class="form-control">
				    <option value=""></option>
				    <?php foreach($platforms as $platform) { ?>
					  <?php if($platform['code'] == $platform_code) { ?>
					  <option value="<?php echo $platform['code']; ?>" selected><?php echo $platform['name']; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $platform['code']; ?>"><?php echo $platform['name']; ?></option>
					  <?php } ?>
					<?php } ?>
				  </select>
			    </div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10"><input name="name" value="<?php echo $name; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div id="platform-fields">
			  <?php if($settings) { ?>
			    <?php foreach($settings as $key => $value) { ?>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_'.$key); ?></label>
				  <div class="col-sm-10"><input name="setting[<?php echo $key; ?>]" value="<?php echo $value; ?>" class="form-control"></div>
			    </div>
			    <div class="hr-line-dashed"></div>
			    <?php } ?>
			  <?php } ?>
			  </div>
			</div>
          </div> 
		  <div id="setting" class="tab-pane">
		    <div class="panel-body">
			   <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_default_order_status'); ?></label>
                <div class="col-sm-10">
			      <select name="default_sale_status_id" class="form-control">
				    <?php if($default_sale_status_id == 1) { ?>
					<option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					<option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
					<?php } else if($default_sale_status_id == 2) { ?>
					<option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
					<option value="2" selected><?php echo $this->lang->line('text_completed'); ?></option>			
					<?php } else { ?>
					<option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
					<option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
					<?php } ?>					
				  </select>
			    </div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_default_order_shipping_provider'); ?></label>
			    <div class="col-sm-10">
				  <select name="default_sale_shipping_provider" class="form-control">
				    <option value=""></option>
				    <?php foreach($shipping_providers as $shipping_provider) { ?>
					<?php if($shipping_provider['code'] == $default_sale_shipping_provider) { ?>
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
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_default_order_shipping_service'); ?></label>
			    <div class="col-sm-10">
				  <select name="default_sale_shipping_service" class="form-control">
				    <?php if($shipping_services) { ?>
				    <?php foreach($shipping_services as $shipping_service) { ?>
					<?php if($shipping_service['code'] == $default_sale_shipping_service) { ?>
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
		      <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_auto_download'); ?></label>
                <div class="col-sm-10">
			      <select name="auto_download" class="form-control">
				    <?php if($auto_download) { ?> 
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
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_auto_upload'); ?></label>
                <div class="col-sm-10">
			      <select name="auto_upload" class="form-control">
					<?php if($auto_upload) { ?> 
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
	$('select[name=\'platform\']').on('change', function() {
		code = $(this).val();
	
		if(code) {
			$.ajax({
				url: '<?php echo base_url(); ?>extension/platform/get_platform_form?code=' + code,
				dataType: "html",
				beforeSend: function() {
					$('#platform-fields').html('');
				},
				success: function(html) {
					$('#platform-fields').append(html);
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$('select[name=\'default_sale_shipping_provider\']').on('change', function() {
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
				
						$('select[name=\'default_sale_shipping_service\']').html(shipping_service_html);
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
<?php echo $footer; ?>