<?php echo $header; ?>
<div class="wrapper wrapper-content">
  <div class="row">
    <div class="col-lg-3"><?php echo $income; ?></div>
	<div class="col-lg-3"><?php echo $sale_total; ?></div>
	<div class="col-lg-3"><?php echo $yesterday_activity; ?></div>
	<div class="col-lg-3"><?php echo $total_alert; ?></div>
  </div>
  <div class="row">
  <div class="col-lg-12">
	<?php //echo $sale_trend; ?>
  </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
	  <?php echo $recent_activity; ?>
    </div>
    <div class="col-lg-8">
	  <div class="row">
	    <div class="col-lg-7">
		  <?php echo $recent_sale; ?>
	    </div>
		<div class="col-lg-5">
		  <?php echo $todo_list; ?>
		</div>
	  </div>
	  <div class="row">
	    <div class="col-lg-12">
		  <?php echo $recent_store_sync; ?>
	    </div>
	  </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>