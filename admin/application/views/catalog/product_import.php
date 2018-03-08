<link href="<?php echo base_url(); ?>assets/css/plugins/dropzone/basic.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/plugins/dropzone/dropzone.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/app/catalog/product_import.css" rel="stylesheet"> 
<script src="<?php echo base_url(); ?>assets/js/plugins/dropzone/dropzone.js" type="text/javascript"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_import_product'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>catalog/product"><?php echo $this->lang->line('text_product'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_import_product'); ?></strong></li>
	</ol>
	<div class="button-group">
      <a href="<?php echo base_url(); ?>assets/file/excel/product_import_sample.xlsx" class="btn btn-primary btn-download" download><i class="fa fa-download"></i></button>
      <a href="<?php echo base_url(); ?>check/checkin" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_import_product_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
		  <div class="form-horizontal">
	        <div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
			  <div class="col-sm-10">
			    <select name="client_id" class="form-control">
				  <option value=""></option>
				  <?php foreach($clients as $client) { ?>
				  <?php if($client['id'] == $client_id) { ?>
				  <option value="<?php echo $client['id']; ?>" selected><?php echo $client['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $client['id']; ?>"><?php echo $client['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
			<div class="hr-line-dashed"></div>	  
		    <div class="form-group">
		      <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_length_class'); ?></label>
			  <div class="col-sm-10">
			    <select name="length_class_id" class="form-control">
				  <?php foreach($length_classes as $length_class) { ?>
				    <option value="<?php echo $length_class['length_class_id']; ?>"><?php echo $length_class['unit']; ?></option>
				  <?php } ?>
			    </select>
			  </div>
            </div>
			<div class="hr-line-dashed"></div>
            <div class="form-group">
		      <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_weight_class'); ?></label>
			  <div class="col-sm-10">
				<select name="weight_class_id" class="form-control">
				  <?php foreach($weight_classes as $weight_class) { ?>
				    <option value="<?php echo $weight_class['weight_class_id']; ?>"><?php echo $weight_class['unit']; ?></option>
				  <?php } ?>
				</select>
			  </div>
            </div>				
			<div class="hr-line-dashed"></div>
          </div>
		  <form action="<?php echo base_url(); ?>catalog/product_import/upload" class="dropzone" id="dropzoneForm">
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
		client_id = $('select[name=\'client_id\']').val();
		length_class_id = $('select[name=\'length_class_id\']').val();	
		weight_class_id = $('select[name=\'weight_class_id\']').val();	
		
		formData.append('client_id', client_id);
		formData.append('length_class_id', length_class_id); 
		formData.append('weight_class_id', weight_class_id);
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

		
		