<a href="<?php echo base_url(); ?>sale/sale">
  <div class="ibox float-e-margins">
    <div class="ibox-title"> 
	  <span class="label label-info pull-right"><?php echo $this->lang->line('text_monthly'); ?></span>
	  <h5><?php echo $this->lang->line('text_orders'); ?></h5> 
    </div>
    <div class="ibox-content">
	  <h1 class="no-margins"><?php echo $sale_total; ?></h1>
	  <div class="stat-percent font-bold text-info"><?php echo $sale_total_trend; ?>%
	  <?php if($sale_total_trend >= 0) { ?>
	  <i class="fa fa-level-up"></i>
	  <?php } else { ?>
	  <i class="fa fa-level-down"></i>
	  <?php } ?>
	  </div> 
	  <small><?php echo $this->lang->line('text_new_orders'); ?></small> 
    </div>
  </div>
</a>