<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_permission'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_error'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_permission'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content">
  <div class="middle-box text-center animated fadeInDown">
	<h3 class="font-bold"><?php echo $this->lang->line('text_no_permission'); ?></h3>
	<div class="error-desc">
	<?php echo $this->lang->line('text_no_permission_access_alert'); ?>
	<br/><a href="<?php echo base_url(); ?>" class="btn btn-primary m-t"><?php echo $this->lang->line('text_dashboard'); ?></a>
	</div>
	</div>
</div>
<?php echo $footer; ?>
		
		