<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_import_checkin'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/sale/sale"><?php echo $this->lang->line('text_checkin'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_import_chcekin'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/excel/checkin_import_sample.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download_sample_file'); ?>"  class="btn btn-primary btn-download" download><i class="fa fa-download"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_import_checkin_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
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
Dropzone.options.dropzoneForm = {
	paramName: 'file', 
	maxFilesize: 2,	
	dictDefaultMessage: '<strong><?php echo $this->lang->line('text_drop_file_and_upload'); ?></strong><br><?php echo $this->lang->line('text_only_excel_will_accepted'); ?>',

	sending: function(file, xhr, formData){
		store_id = $('select[name=\'store_id\']').val();			
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
<?php echo $footer; ?>
		
		