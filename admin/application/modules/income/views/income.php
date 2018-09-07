<a href="<?php echo base_url(); ?>report/sale/product">
  <div class="ibox float-e-margins">
    <div class="ibox-title">
	  <span class="label label-success pull-right"><?php echo $this->lang->line('text_monthly'); ?></span>
	  <h5><?php echo $this->lang->line('text_income'); ?></h5> 
    </div>
    <div class="ibox-content">
	  <h1 class="no-margins"><?php echo $income; ?></h1>
	  <div class="stat-percent font-bold text-success"><?php echo $income_trend; ?>%
	  <?php if($income_trend >= 0) { ?>
	  <i class="fa fa-level-up"></i>
	  <?php } else { ?>
	  <i class="fa fa-level-down"></i>
	  <?php } ?>
	  </div> 
	  <small><?php echo $this->lang->line('text_total_income'); ?></small> 
    </div>
  </div>
</a>