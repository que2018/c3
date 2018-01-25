<link href="<?php echo base_url(); ?>assets/css/app/platform/offline.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_offline'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/platform"><?php echo $this->lang->line('text_platform'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_offline'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
	<button class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>extension/platform" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <form method="post" class="form-horizontal">
	    <div class="tabs-container">
	      <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#fields"><?php echo $this->lang->line('tab_fields'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#setting"><?php echo $this->lang->line('tab_setting'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="fields" class="tab-pane active">
			  <div class="panel-body">
			    <?php if($offline_fields) { ?>
			      <?php foreach($offline_fields as $offline_field) { ?>
			        <div class="form-group">
				      <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_field'); ?></label>
			          <div class="col-sm-10"><input name="offline_field[]" value="<?php echo $offline_field; ?>" class="form-control" readonly></div>
				    </div>
				    <div class="hr-line-dashed"></div>
				  <?php } ?>
				<?php } ?>
			  </div>
		    </div>
		    <div id="setting" class="tab-pane">
			  <div class="panel-body">
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
			  </div>
		    </div>
		  </div>
	    </div>
	  </form>
    </div>
  </div>
</div> 
		
		