<script src="<?php echo base_url(); ?>assets/js/plugins/barcode/jquery-barcode.js"></script>
<link href="<?php echo base_url(); ?>assets/css/app/warehouse/location_edit.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_location_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>warehouse/location"><?php echo $this->lang->line('text_location'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_location_edit'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>warehouse/location_print?code=<?php echo $code; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_print_barcode'); ?>" class="btn btn-info btn-print" target="_blank"><i class="fa fa-print"></i></a>
	<a href="<?php echo base_url(); ?>warehouse/location" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div id="alert-error" class="alert alert-danger"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	</div>
  </div>
  <div class="row">
    <div class="col-lg-12">
	  <form method="post" action="<?php echo base_url(); ?>warehouse/location/edit?location_id=<?php echo $location_id; ?>" class="form-horizontal">
	    <div class="tabs-container">
		  <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
				  <div class="col-sm-10"><input name="name" value="<?php echo $name; ?>" class="form-control" ></div>
			    </div>
			    <div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_code'); ?></label>
				  <div class="col-sm-10"><input name="code" value="<?php echo $code; ?>" class="form-control" ></div>
			    </div>
			    <div class="hr-line-dashed"></div>
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
				  <div class="col-sm-10">
				    <select name="warehouse_id" class="form-control">
					  <?php if($warehouses) { ?>
					  <?php foreach($warehouses as $warehouse) { ?>
					  <?php if($warehouse['id'] == $warehouse_id) { ?>
					  <option value="<?php echo $warehouse['id']; ?>" selected><?php echo $warehouse['name']; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $warehouse['id']; ?>"><?php echo $warehouse['name']; ?></option>
					  <?php } ?>
					  <?php } ?>
					  <?php } ?>
				    </select>
				  </div>
			    </div>
			    <div class="hr-line-dashed"></div>
				  <div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_label'); ?></label>
					<div class="col-sm-10">
					  <div class="plabel">
						<div id="barcode"></div>
					  </div>  
					</div>				  
				  </div>
			  </div>
		    </div>
		  </div> 
	    </div>			  
	  </form>
	</div>
  </div>  
</div>
<script type="text/javascript"> 
$(document).ready(function() {
	value = '<?php echo $code; ?>'

	btype = 'code128';

	settings = {
		output:'css',
		bgColor:'#ffffff',
		color:'#000000',
		barWidth:1,
		barHeight:50,
		moduleSize:5,
		posX:10,
		posY:20,
		addQuietZone:1,
		showHRI:true
	};

	$('#barcode').html('').show().barcode(value, btype, settings);	  
});
</script>
		
		