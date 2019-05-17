<div class="ibox float-e-margins">
  <div class="ibox-title">
	<h5><?php echo $this->lang->line('text_activities'); ?></h5>
	<div class="ibox-tools"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a><a class="close-link"><i class="fa fa-times"></i></a></div>
  </div>
  <div class="ibox-content ibox-heading">
	<h3><i class="fa fa-rocket"></i> <?php echo $this->lang->line('text_new_activities'); ?></h3>
	<small><i class="fa fa-tim"></i><?php echo $this->lang->line('text_display_most_recent_activity_log'); ?></small> 
  </div>
  <div class="ibox-content">
	<div class="feed-activity-list">
	  <?php foreach($recent_activity_logs as $recent_activity_log) { ?>
		<div class="feed-element">
		  <div><small class="pull-right text-navy">1m ago</small><strong><?php echo $recent_activity_log['user']; ?></strong>
		  <div><?php echo $recent_activity_log['description']; ?></div> 
		  <small class="text-muted"><?php echo $recent_activity_log['date_added']; ?></small> 
		  </div>
		</div>
	  <?php } ?>
	</div>
  </div>
</div>