<a href="<?php echo base_url(); ?>inventory/inventory_alert">
  <div class="ibox float-e-margins">
    <div class="ibox-title"> <span class="label label-danger pull-right"><?php echo $this->lang->line('text_real_time'); ?></span>
	  <h5><?php echo $this->lang->line('text_alert'); ?></h5> 
     </div>
    <div class="ibox-content">
	  <h1 class="no-margins"><?php echo $alert_quantity; ?></h1>
	  <small><?php echo $this->lang->line('text_items_need_attention'); ?></small> 
    </div>
  </div>
</a>