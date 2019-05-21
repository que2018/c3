<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_import_inventory'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/sale/sale"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_import_inventory'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/excel/inventory_import_sample.xlsx"  data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download_sample'); ?>" class="btn btn-primary btn-download" download><i class="fa fa-download"></i></a>
    <a href="<?php echo base_url(); ?>inventory/inventory" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_import_inventory_description'); ?></h5>
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
				  <?php if($warehouse['id'] == $warehouse_id) { ?>
				  <option value="<?php echo $warehouse['id']; ?>" selected><?php echo $warehouse['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $warehouse['id']; ?>"><?php echo $warehouse['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
			    </select>
			  </div>
		    </div>
			<div class="hr-line-dashed"></div>	  
          </div>
		  <form action="<?php echo base_url(); ?>inventory/inventory_import/upload" class="dropzone" id="dropzoneForm">
			<div class="fallback">
		      <input name="file" type="file" />
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
	maxFilesize: 100,	
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
<?php echo $footer; ?>

		
		