<script src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">  
<link href="<?php echo base_url(); ?>assets/css/app/store/store_view.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_view'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/store/store"><?php echo $this->lang->line('text_store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_view'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>store/store" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<div class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li><a data-toggle="tab" href="#setting"><?php echo $this->lang->line('tab_setting'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
		    <div class="panel-body">
			  <div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_platform'); ?></label>
                <div class="col-sm-10"><input name="platform" value="<?php echo $platform; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10"><input name="name" value="<?php echo $name; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div id="platform-fields">
			  <?php if($settings) { ?>
			    <?php foreach($settings as $key => $value) { ?>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_'.$key); ?></label>
				  <div class="col-sm-10"><input name="setting[<?php echo $key; ?>]" value="<?php echo $value; ?>" class="form-control" disabled></div>
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
			      <select name="default_sale_status_id" class="form-control" disabled>
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
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_auto_download'); ?></label>
                <div class="col-sm-10">
			      <select name="auto_download" class="form-control" disabled>
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
			      <select name="auto_upload" class="form-control" disabled>
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
	$('select[name=\'sync_single_warehouse\']').on('change', function() {
		val = $(this).val();
    		
		if(val == 1) 
		{
			$.ajax({
				url: '<?php echo base_url(); ?>warehouse/warehouse/get_all_warehouses',
				dataType: "json",
				success: function(json) {
					sync_warehouse_html = '';
					
					$.each(json.warehouses, function(index, warehouse) {							
						sync_warehouse_html += '<option value="'+ warehouse.id +'">' + warehouse.name + '</option>';
					});
			
					$('select[name=\'sync_warehouse_id\']').html(sync_warehouse_html);
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		} 
		else 
		{
			$('select[name=\'sync_warehouse_id\']').html('');
		}
	});
});
</script>

		