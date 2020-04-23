<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_import_order'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/sale/sale"><?php echo $this->lang->line('text_order'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_import_order'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/excel/order_import_sample.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download_sample_file'); ?>"  class="btn btn-primary btn-download" download><i class="fa fa-download"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_import_order_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div class="form-horizontal">
		    <div class="form-group">
		      <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store'); ?></label>
			  <div class="col-sm-10">
				<select name="store_id" class="form-control">
				  <option value=""></option>
				  <?php foreach($stores as $store) { ?>
				  <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
				  <?php } ?>
				</select>
		      </div>
            </div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_provider'); ?></label>
			  <div class="col-sm-10">
			    <select name="shipping_provider" class="form-control">
				  <option value=""></option>
				  <?php foreach($shipping_providers as $shipping_provider) { ?>
				  <option value="<?php echo $shipping_provider['code']; ?>"><?php echo $shipping_provider['name']; ?></option>					
				  <?php } ?>
			    </select>
			  </div>
		    </div>
		    <div class="hr-line-dashed"></div>
		    <div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_service'); ?></label>
			  <div class="col-sm-10">
			    <select name="shipping_service" class="form-control">
				<?php if($shipping_services) { ?>
				  <?php foreach($shipping_services as $shipping_service) { ?>
				  <option value="<?php echo $shipping_service['code']; ?>"><?php echo $shipping_service['name']; ?></option>					
				  <?php } ?>
				<?php } ?>
			    </select>
			  </div>
		    </div>
		    <div class="hr-line-dashed"></div>
		  </div>
		  <form action="<?php echo base_url(); ?>/sale/import/upload" class="dropzone" id="dropzoneForm">
			<div class="fallback">
		      <input name="file" type="file" multiple />
		    </div>
		  </form>
	    </div>
	  </div>
	</div>
  </div>
</div>
<script>
$(document).ready(function() {
	$('select[name=\'shipping_provider\']').on('change', function() {
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
				
						$('select[name=\'shipping_service\']').html(shipping_service_html);
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
			
			$('select[name=\'shipping_service\']').html(shipping_service_html);
		}
	});
});
</script>
<script>
Dropzone.options.dropzoneForm = {
	paramName: 'file', 
	maxFilesize: 2,	
	dictDefaultMessage: '<strong><?php echo $this->lang->line('text_drop_file_and_upload'); ?></strong><br><?php echo $this->lang->line('text_only_excel_will_accepted'); ?>',

	sending: function(file, xhr, formData){
		store_id = $('select[name=\'store_id\']').val();	
		shipping_service = $('select[name=\'shipping_service\']').val();			
		shipping_provider = $('select[name=\'shipping_provider\']').val();			
		
        formData.append('store_id', store_id);
		formData.append('shipping_service', shipping_service);
        formData.append('shipping_provider', shipping_provider);
    },
	
	success: function(file, response){		
		response = JSON.parse(response);
		
		html = '';
			
		$.each(response.messages, function(i, message) {				
			html += message + '<br>';
		});
		
		if(response.success){	
			$('#alert-success span').html(html);
			$('#alert-success').show();
			
		} else {			
			$('#alert-error span').html(html);
			$('#alert-error').show();
		}
	}
};    
</script>
<?php echo $footer; ?>
		
		