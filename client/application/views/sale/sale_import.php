<link href="<?php echo base_url(); ?>assets/css/plugins/dropzone/basic.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/plugins/dropzone/dropzone.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/app/sale/sale_import.css" rel="stylesheet"> 
<script src="<?php echo base_url(); ?>assets/js/plugins/dropzone/dropzone.js" type="text/javascript"></script>
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
    <a href="<?php echo base_url(); ?>assets/file/excel/order_import_sample.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download_sample'); ?>"  class="btn btn-info btn-download"><i class="fa fa-download"></i></a>
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
		  <div class="client">
		    <div class="form-group">
		      <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store'); ?></label>
			  <div class="col-sm-10">
			  <select name="store_id" class="form-control">
				<?php foreach($stores as $store) { ?>
			    <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
				<?php } ?>
			  </select>
		      </div>
            </div>
	      </div>
		  <form action="<?php echo base_url(); ?>sale/import/upload" class="dropzone" id="dropzoneForm">
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
Dropzone.options.dropzoneForm = {
	paramName: 'file', 
	maxFilesize: 2,	
	dictDefaultMessage: '<strong><?php echo $this->lang->line('text_drop_file_and_upload'); ?></strong><br><?php echo $this->lang->line('text_only_excel_will_accepted'); ?>',

	sending: function(file, xhr, formData){
		store_id = $('select[name="store_id"]').val();		
        formData.append('store_id', store_id);
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

		
		