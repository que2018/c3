<!DOCTYPE html>
<html>
<head>
<title><?php echo $title; ?></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/common.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/pace/pace.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/inspinia.js"></script>
<?php if($scripts) { ?>
<?php foreach($scripts as $script) { ?>
  <script src="<?php echo $script; ?>"></script>
<?php } ?>
<?php } ?>
<link rel="icon" href="<?php echo base_url(); ?>favicon.ico" type="image/gif">
<link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="screen" />
<link href="<?php echo base_url(); ?>assets/css/style.css" type="text/css" rel="stylesheet" media="screen" />
<link href="<?php echo base_url(); ?>assets/css/animate.css" type="text/css" rel="stylesheet" media="screen" />
<?php if($styles) { ?>
<?php foreach($styles as $style) { ?>
  <link href="<?php echo $style; ?>" type="text/css" rel="stylesheet" />
<?php } ?>
<?php } ?>
</head>
<body>
  <div id="wrapper">
    <?php if($success) { ?>
      <div class="alert-wrapper">
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  </div>
    <?php } ?>
	<nav class="navbar-default navbar-static-side" role="navigation">
	  <div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu">
		  <li class="nav-header">
			<div class="dropdown profile-element">
			  <!--<span><img alt="image" class="img-circle" src="<?php echo base_url(); ?>img/profile_small.jpg" /></span>-->
			</div>
		  </li>
		  <li>
			<a><i class="fa fa-arrow-circle-o-right"></i><span class="nav-label"><?php echo $this->lang->line('menu_checkin'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>check/checkin"><?php echo $this->lang->line('menu_checkin_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkin_import"><?php echo $this->lang->line('menu_checkin_import'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-dropbox"></i><span class="nav-label"><?php echo $this->lang->line('menu_fba'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>fba/fba/add"><?php echo $this->lang->line('menu_fba_add'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>fba/fba"><?php echo $this->lang->line('menu_fba_list'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-product-hunt"></i><span class="nav-label"><?php echo $this->lang->line('menu_product'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>catalog/product"><?php echo $this->lang->line('menu_product_list'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-bars"></i><span class="nav-label"><?php echo $this->lang->line('menu_inventory'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>inventory/inventory_batch"><?php echo $this->lang->line('menu_inventory_list'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-shopping-cart"></i><span class="nav-label"><?php echo $this->lang->line('menu_order'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('menu_order_list'); ?></a></li>			  
			  <li><a href="<?php echo base_url(); ?>sale/import"><?php echo $this->lang->line('menu_order_import'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>sale/label"><?php echo $this->lang->line('menu_label'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-university"></i><span class="nav-label"><?php echo $this->lang->line('menu_store'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>store/store"><?php echo $this->lang->line('menu_store'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-usd"></i><span class="nav-label"><?php echo $this->lang->line('menu_finance'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
		      <li><a href="<?php echo base_url(); ?>finance/balance"><?php echo $this->lang->line('menu_balance'); ?></a></li>	
			  <li><a href="<?php echo base_url(); ?>finance/recharge"><?php echo $this->lang->line('menu_recharge'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>finance/transaction"><?php echo $this->lang->line('menu_transaction'); ?></a></li>
			</ul>
		  </li>
		</ul>
	  </div>
	</nav>
    <div id="page-wrapper" class="gray-bg dashbard-1">
      <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
          <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
              <div class="form-group">
                <input type="text" placeholder="<?php echo $this->lang->line('text_search_something'); ?>" class="form-control" name="top-search" id="top-search">
              </div>
            </form>
          </div>
          <ul class="nav navbar-top-links navbar-right">
			<li>
			  <span class="m-r-sm text-muted welcome-message"><?php echo $this->lang->line('text_welcome'); ?></span>
			</li>
			<li>
			  <a href="<?php echo base_url(); ?>common/logout">
				<i class="fa fa-sign-out"></i><?php echo $this->lang->line('text_logout'); ?>
			  </a>
			</li>
			<li>
			  <a class="right-sidebar-toggle">
				<i class="fa fa-tasks"></i>
			  </a>
			</li>
          </ul>
        </nav>
      </div>