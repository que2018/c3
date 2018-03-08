<link href="<?php echo base_url(); ?>assets/css/app/store/store_sync_history_detail.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_syn_history_detail'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>store/store_sync_history"><?php echo $this->lang->line('text_store_sync_history'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_syn_history_detail'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>store/store_sync_history" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="form-horizontal">
		<div class="tabs-container">
	      <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#message"><?php echo $this->lang->line('tab_message'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store'); ?></label>
				  <div class="col-sm-10"><div class="text-control"><?php echo $store; ?></div></div>
			    </div>
			    <div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_type'); ?></label>
				  <div class="col-sm-10"><div class="text-control"><?php echo $type; ?></div></div>
			    </div>
			    <div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10"><div class="text-control"><?php echo $status; ?></div></div>
			    </div>
			    <div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_date_added'); ?></label>
				  <div class="col-sm-10"><div class="text-control"><?php echo $date_added; ?></div></div>
			    </div>
			    <div class="hr-line-dashed"></div>
			  </div>
			</div>
			<div id="message" class="tab-pane">
			  <div class="panel-body">
			    <div class="form-group">
				  <div class="col-sm-12">
				    <table class="table">
					  <?php if($messages) { ?>
						<?php foreach($messages as $message) { ?>
						  <?php if($message['level'] == 0) { ?>
						    <tr><td class="text-success"><?php echo $message['content']; ?></td></tr>
						  <?php } ?>
						  <?php if($message['level'] == 1) { ?>
						    <tr><td class="text-warning"><?php echo $message['content']; ?></td></tr>
						  <?php } ?>
						  <?php if($message['level'] == 2) { ?>
						    <tr><td class="text-danger"><?php echo $message['content']; ?></td></tr>
						  <?php } ?>  
						<?php } ?>
					  <?php } ?>
					</table>
				  </div>
			    </div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
    </div>
  </div>
</div>

		