<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_balance'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_balance'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_balance'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content">
  <div class="middle-box text-center animated fadeInDown">
	<h2 class="font-bold amount"><?php echo $amount; ?></h2>
	<div class="balance-desc"><?php echo $this->lang->line('text_current_balance'); ?></div>
	</div>
</div>
<?php echo $footer; ?>