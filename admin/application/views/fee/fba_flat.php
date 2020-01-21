<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_fba_flat'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/fee"><?php echo $this->lang->line('text_fee'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_fba_flat'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <button type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></a>
	</div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <form method="post" class="form-horizontal">
	    <div class="tabs-container">
	      <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
			     <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_amount'); ?></label>
			      <div class="col-sm-10"><input name="fba_flat_amount" value="<?php echo $fba_flat_amount; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>	
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="fba_flat_status" class="form-control">
					  <?php if($fba_flat_status) { ?>
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
			      <div class="col-sm-10"><input name="fba_flat_sort_order" value="<?php echo $fba_flat_sort_order; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>	
			  </div>
		    </div>
		  </div>
	    </div>
	  </form>
    </div>
  </div>
</div> 
<?php echo $footer; ?>
