<a href="<?php echo base_url(); ?>setting/log/activity_log">
  <div class="ibox float-e-margins">
    <div class="ibox-title"><span class="label label-primary pull-right"><?php echo $this->lang->line('text_today'); ?></span>
	  <h5><?php echo $this->lang->line('text_visits'); ?></h5> 
    </div>
    <div class="ibox-content">
	  <h1 class="no-margins"><?php echo $total_activity; ?></h1>
	  <div class="stat-percent font-bold text-navy">44%<i class="fa fa-level-up"></i></div> 
	  <small><?php echo $this->lang->line('text_new_activities'); ?></small> 
    </div>
  </div>
</a>