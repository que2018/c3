<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_import_fba_warehouse'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>catalog/fba_warehouse"><?php echo $this->lang->line('text_fba_warehouse'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_import_fba_warehouse'); ?></strong></li>
	</ol>
  <div class="button-group tooltip-demo">
      <a href="<?php echo base_url(); ?>assets/file/excel/fba_warehouse_import_sample.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download_import_sample'); ?>" class="btn btn-primary btn-download" download><i class="fa fa-download"></i></button>
      <a href="<?php echo base_url(); ?>check/checkin" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>"  class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_import_fba_warehouse_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <form action="<?php echo base_url(); ?>fba/fba_warehouse/upload" class="dropzone" id="dropzoneForm">
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
	dictDefaultMessage: '<strong><?php echo $this->lang->line("text_drop_file_and_upload"); ?></strong><br><?php echo $this->lang->line("text_only_excel_will_accepted"); ?>',
	sending: function(file, xhr, formData){},
	success: function(file, response){		
		response = JSON.parse(response);
		
		if(!response.success){	
			html = '';
			
			$.each(response.messages, function(i, message) {				
				html += message + '<br>';
			});
			
			$('#alert-error span').html(html);
			$('#alert-error').show();
			
		} else {	
			html = '';
			
			$.each(response.messages, function(i, message) {				
				html += message + '<br>';
			});
		
			$('#alert-success span').html(html);
			$('#alert-success').show();
		}
	}
};    
</script>
<?php echo $footer; ?>

		
		