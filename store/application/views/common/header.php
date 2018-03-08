<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/common.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/pace/pace.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/inspinia.js"></script>
<link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="screen" />
<link href="<?php echo base_url(); ?>assets/css/style.css" type="text/css" rel="stylesheet" media="screen" />
<link href="<?php echo base_url(); ?>assets/css/animate.css" type="text/css" rel="stylesheet" media="screen" />
</head>
<body>
  <div id="wrapper">
	<nav class="navbar-default navbar-static-side" role="navigation">
	  <div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu">
		  <li class="nav-header">
			<div class="dropdown profile-element">
			  <span><img alt="image" class="img-circle" src="<?php echo base_url(); ?>img/profile_small.jpg" /></span>
			</div>
		  </li>
		  <li>
			<a href="<?php echo base_url(); ?>common/dashboard"><i class="fa fa-tachometer"></i><span class="nav-label"><?php echo $this->lang->line('menu_dashboard'); ?></span></a>
		  </li>
		  <li>
			<a><i class="fa fa-arrow-circle-o-right"></i><span class="nav-label"><?php echo $this->lang->line('menu_checkin'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>check/checkin"><?php echo $this->lang->line('menu_checkin_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkin/add"><?php echo $this->lang->line('menu_checkin_add'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkin_scan"><?php echo $this->lang->line('menu_checkin_scan'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkin_rapid"><?php echo $this->lang->line('menu_checkin_rapid'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-arrow-circle-o-left"></i><span class="nav-label"><?php echo $this->lang->line('menu_checkout'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>check/checkout"><?php echo $this->lang->line('menu_checkout_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkout_scan"><?php echo $this->lang->line('menu_checkout_scan'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkout_sale"><?php echo $this->lang->line('menu_checkout_order'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>check/checkout_complete"><?php echo $this->lang->line('menu_checkout_complete'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-shopping-cart"></i><span class="nav-label"><?php echo $this->lang->line('menu_order'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>sale/sale_unsolved"><?php echo $this->lang->line('menu_unsolved_order'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('menu_all_orders'); ?></a></li>			  
			  <li><a href="<?php echo base_url(); ?>sale/import"><?php echo $this->lang->line('menu_order_import'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>sale/customer"><?php echo $this->lang->line('menu_customer'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-product-hunt"></i><span class="nav-label"><?php echo $this->lang->line('menu_product'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>catalog/product"><?php echo $this->lang->line('menu_product_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>catalog/product/add"><?php echo $this->lang->line('menu_product_add'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>catalog/product_import"><?php echo $this->lang->line('menu_product_import'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-bars"></i><span class="nav-label"><?php echo $this->lang->line('menu_inventory'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>inventory/inventory"><?php echo $this->lang->line('menu_inventory_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>inventory/inventory_alert"><?php echo $this->lang->line('menu_inventory_alert'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>inventory/inventory_import"><?php echo $this->lang->line('menu_import_inventory'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>inventory/transfer"><?php echo $this->lang->line('menu_transfer_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>inventory/damage"><?php echo $this->lang->line('menu_damage_list'); ?></a></li>
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
            <form role="search" class="navbar-form-custom" action="<?php echo base_url(); ?>search/search">
              <div class="form-group">
                <input type="text" placeholder="<?php echo $this->lang->line('text_search_something'); ?>" class="form-control" name="key" id="key">
              </div>
            </form>
          </div>
          <ul class="nav navbar-top-links navbar-right">
			<li>
			  <span class="m-r-sm text-muted welcome-message"><?php echo $this->lang->line('text_welcome'); ?></span>
			</li>
			<li class="dropdown" style="display:none;">
			  <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
				<i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
			  </a>
			  <ul class="dropdown-menu dropdown-alerts">
				<li>
				  <a href="mailbox.html">
					<div>
				      <i class="fa fa-envelope fa-fw"></i> You have 16 messages
					  <span class="pull-right text-muted small">4 minutes ago</span>
					</div>
				  </a>
				</li>
				<li class="divider"></li>
				<li>
				<a href="profile.html">
				  <div>
					<i class="fa fa-twitter fa-fw"></i> 3 New Followers
					<span class="pull-right text-muted small">12 minutes ago</span>
				  </div>
				</a>
				</li>
				<li class="divider"></li>
				<li>
				  <a href="grid_options.html">
					<div>
					  <i class="fa fa-upload fa-fw"></i> Server Rebooted
					  <span class="pull-right text-muted small">4 minutes ago</span>
					</div>
				 </a>
				</li>
				<li class="divider"></li>
				<li>
				  <div class="text-center link-block">
					<a href="notifications.html">
					  <strong>See All Alerts</strong>
					  <i class="fa fa-angle-right"></i>
					</a>
				  </div>
				</li>
			  </ul>
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