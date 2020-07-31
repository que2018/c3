<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_label_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>warehouse/warehouse"><?php echo $this->lang->line('text_label'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_label_edit'); ?></strong></li>
	</ol>
    <div class="button-group tooltip-demo">
      <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>"class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
      <a href="<?php echo base_url(); ?>sale/label" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
	    <div class="ibox-content">
		  <form method="post" action="<?php echo base_url(); ?>sale/label/edit?sale_label_id=<?php echo $sale_label_id; ?>" class="form-horizontal">
		    <div class="form-group">
			  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			  <div class="col-sm-10">
			    <select name="status_id" class="form-control">
				  <?php foreach($statuses as $status) { ?>
				  <?php if($status['status_id'] == $status_id) { ?>
				  <option value="<?php echo $status['status_id']; ?>" selected><?php echo $status['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $status['status_id']; ?>"><?php echo $status['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
				</select>
			  </div>
		    </div>
		  </form>
	    </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>		
		