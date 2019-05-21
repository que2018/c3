<div class="ibox float-e-margins">
  <div class="ibox-title">
	<h5><?php echo $this->lang->line('text_recent_store_sync'); ?></h5>
	<div class="ibox-tools"> <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> <a class="close-link"><i class="fa fa-times"></i></a> </div>
  </div>
  <div class="ibox-content recent-activity-content">
	<div class="row">
	  <div class="col-lg-12">
		<table class="table table-hover margin bottom">
		  <thead>
			<tr>
			  <th class="text-center"><?php echo $this->lang->line('column_store'); ?></th>
			  <th class="text-center"><?php echo $this->lang->line('column_type'); ?></th>
			  <th class="text-center"><?php echo $this->lang->line('column_status'); ?></th>
			  <th class="text-center"><?php echo $this->lang->line('column_date'); ?></th>
			  <th class="text-center"><?php echo $this->lang->line('column_view'); ?></th>
			</tr>
		  </thead>
		  <tbody>
			<?php if($recent_store_sync_histories) { ?>
			  <?php foreach($recent_store_sync_histories as $recent_store_sync_history) { ?>
				<tr>
				  <td><a href="<?php echo base_url(); ?>store/store/edit?id=<?php echo $recent_store_sync_history['store_id']; ?>" target="_blank"><?php echo $recent_store_sync_history['store']; ?></a></td>
				  <td class="text-center small">
					<?php if($recent_store_sync_history['type'] == 0) { ?>
					  <span class="label label-download"><i class="fa fa-cloud-download"></i> <?php echo $this->lang->line('text_download'); ?></span>
					<?php } else { ?>
					  <span class="label label-success"><i class="fa fa-cloud-upload"></i> <?php echo $this->lang->line('text_upload'); ?></span>
					<?php } ?>
				  </td>
				  <td class="text-center small">
					<?php if($recent_store_sync_history['status'] == 1) { ?>
					  <span class="label label-primary"><?php echo $this->lang->line('text_success'); ?></span>
					<?php } else if($recent_store_sync_history['status'] == 2) { ?>
					  <span class="label label-danger"><?php echo $this->lang->line('text_fail'); ?></span>
					<?php } else { ?>
					  <span class="label label-warning"><?php echo $this->lang->line('text_warning'); ?></span>
					<?php } ?>
				  </td>
				  <td class="text-center"><?php echo $recent_store_sync_history['date_added']; ?></td>
				  <td class="text-center"><a href="<?php echo $recent_store_sync_history['link']; ?>"><button class="btn btn-info btn-xs"><?php echo $this->lang->line('button_detail'); ?></button></a></td>
				</tr>
			  <?php } ?>
			<?php } ?>
		  </tbody>
		</table>
	  </div>
	</div>
  </div>
</div>