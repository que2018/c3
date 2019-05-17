<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_warehouse_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>warehouse/warehouse"><?php echo $this->lang->line('text_warehouse'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_warehouse_edit'); ?></strong></li>
	</ol>
    <div class="button-group tooltip-demo">
      <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>"class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
      <a href="<?php echo base_url(); ?>warehouse/warehouse" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
		<form method="post" action="<?php echo base_url(); ?>warehouse/warehouse/edit?warehouse_id=<?php echo $warehouse_id; ?>" class="form-horizontal">
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
			<div class="col-sm-10"><input type="text" name="name" value="<?php echo $name; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
			<div class="col-sm-10"><input type="text" name="street" value="<?php echo $street; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
			<div class="col-sm-10"><input type="text" name="city" value="<?php echo $city; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
			<div class="col-sm-10"><input type="text" name="state" value="<?php echo $state; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
			<div class="col-sm-10"><input type="text" name="country" value="<?php echo $country; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_zipcode'); ?></label>
			<div class="col-sm-10"><input type="text" name="zipcode" value="<?php echo $zipcode; ?>" class="form-control"></div>
		  </div> 
		</form>
	  </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>		
		