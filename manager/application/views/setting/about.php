<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_permission'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_about'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content">
  <div class="middle-box text-center animated fadeInDown">
	<h3 class="font-bold"><?php echo $this->lang->line('text_title'); ?></h3>
	<div><?php echo $this->lang->line('text_copy_right'); ?></div>
	<div class="error-desc">
	<?php echo $this->lang->line('text_no_permission_access_alert'); ?>
	<br/><a href="<?php echo base_url(); ?>" class="btn btn-primary"><?php echo $version; ?></a>
	</div>
	</div>
</div>
<?php echo $footer; ?>
		
		