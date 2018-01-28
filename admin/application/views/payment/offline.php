<link href="<?php echo base_url(); ?>assets/css/app/payment/offline.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_offline'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/platform"><?php echo $this->lang->line('text_payment'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_offline'); ?></strong></li>
	</ol>
  </div>
  <button type="submit" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <div class="ibox">
	    <div class="ibox-content">
		  <form method="post" class="form-horizontal">
			<div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			  <div class="col-sm-10">
			    <select name="offline_status" class="form-control">
				  <?php if($offline_status) { ?>
					<option value="1" selected><?php echo $this->lang->line('text_enabled'); ?></option>
					<option value="0"><?php echo $this->lang->line('text_disabled'); ?></option>
				  <?php } else { ?>
					<option value="1"><?php echo $this->lang->line('text_enabled'); ?></option>
					<option value="0" selected><?php echo $this->lang->line('text_disabled'); ?></option>
				  <?php } ?>
				</select>
			  </div>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sort_order'); ?></label>
			  <div class="col-sm-10"><input name="offline_sort_order" value="<?php echo $offline_sort_order; ?>" class="form-control"></div>
			</div>
			<div class="hr-line-dashed"></div>	
		  </form>
        </div>
	  </div>
	</div>
  </div>
</div> 
		
		