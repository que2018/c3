<link href="<?php echo base_url(); ?>assets/css/plugins/dropzone/basic.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/plugins/dropzone/dropzone.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/app/warehouse/location_import.css" rel="stylesheet"> 
<script src="<?php echo base_url(); ?>assets/js/plugins/dropzone/dropzone.js" type="text/javascript"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_import_location'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>warehouse/location"><?php echo $this->lang->line('text_warehouse'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_import_location'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
      <a href="<?php echo base_url(); ?>assets/file/excel/location_import_sample.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download_sample'); ?>" class="btn btn-primary btn-download" download><i class="fa fa-download"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_import_location_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div class="form-horizontal">
	        <div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
			  <div class="col-sm-10">
			    <select name="warehouse_id" class="form-control">
				  <?php foreach($warehouses as $warehouse) { ?>
				  <option value="<?php echo $warehouse['warehouse_id']; ?>"><?php echo $warehouse['name']; ?></option>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
			<div class="hr-line-dashed"></div>	  			
          </div>
		  <form action="<?php echo base_url(); ?>warehouse/location_import/upload" class="dropzone" id="dropzoneForm">
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
		warehouse_id = $('select[name=\'warehouse_id\']').val();
		formData.append('warehouse_id', warehouse_id);
    },
	
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

		
		