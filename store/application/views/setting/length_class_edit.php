<link href="<?php echo base_url(); ?>assets/css/app/setting/length_class_edit.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_length_class_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/length_class"><?php echo $this->lang->line('text_localization'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/length_class"><?php echo $this->lang->line('text_length_class'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_length_class_edit'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
      <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
      <a href="<?php echo base_url(); ?>setting/length_class" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>"  class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div id="alert-error" class="alert alert-danger"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <div class="ibox">
	    <div class="ibox-content">
		  <form method="post" action="<?php echo base_url(); ?>setting/length_class/edit?length_class_id=<?php echo $length_class_id; ?>" class="form-horizontal">
		    <div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_unit'); ?></label>
			  <div class="col-sm-10"><input type="text" name="unit" value="<?php echo $unit; ?>" class="form-control"></div>
		    </div>
		    <div class="hr-line-dashed"></div>
			<div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_unit_short'); ?></label>
			  <div class="col-sm-10"><input type="text" name="unit_short" value="<?php echo $unit_short; ?>" class="form-control"></div>
		    </div>
		    <div class="hr-line-dashed"></div>
		     <div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_value'); ?></label>
			  <div class="col-sm-10"><input type="text" name="value" value="<?php echo $value; ?>" class="form-control"></div>
		    </div>
		    <div class="hr-line-dashed"></div>
		  </form>
	    </div>
      </div>
    </div>
  </div>
</div>
		
		