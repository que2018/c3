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
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-recycle"></i><span class="nav-label"><?php echo $this->lang->line('menu_return'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>refund/refund"><?php echo $this->lang->line('menu_return_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>refund/refund/add"><?php echo $this->lang->line('menu_return_add'); ?></a></li>
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
		  <li>
			<a><i class="fa fa-cubes"></i><span class="nav-label"><?php echo $this->lang->line('menu_warehouse'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>warehouse/location"><?php echo $this->lang->line('menu_location'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>warehouse/location_import"><?php echo $this->lang->line('menu_location_import'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>warehouse/warehouse"><?php echo $this->lang->line('menu_warehouse'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-university"></i><span class="nav-label"><?php echo $this->lang->line('menu_store'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>store/store"><?php echo $this->lang->line('menu_store'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>store/employee"><?php echo $this->lang->line('menu_employee'); ?></a></li>
			  <li><a href="#"><?php echo $this->lang->line('menu_store_sync'); ?></a>     
				<ul class="nav nav-third-level">
				  <li><a href="<?php echo base_url(); ?>store/store_sale_sync"><?php echo $this->lang->line('menu_order_sync'); ?></a></li>
				</ul>
              </li>        
			  <li><a href="<?php echo base_url(); ?>store/store_sync_history"><?php echo $this->lang->line('menu_sync_history'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-puzzle-piece"></i><span class="nav-label"><?php echo $this->lang->line('menu_extension'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
		      <li><a href="<?php echo base_url(); ?>extension/platform"><?php echo $this->lang->line('menu_platform'); ?></a></li>	
			  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('menu_shipping'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>extension/payment"><?php echo $this->lang->line('menu_payment'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-usd"></i><span class="nav-label"><?php echo $this->lang->line('menu_finance'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
		      <li><a href="<?php echo base_url(); ?>finance/fee"><?php echo $this->lang->line('menu_fee'); ?></a></li>	
		      <li><a href="<?php echo base_url(); ?>finance/balance"><?php echo $this->lang->line('menu_balance'); ?></a></li>	
			  <li><a href="<?php echo base_url(); ?>finance/recharge"><?php echo $this->lang->line('menu_recharge'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>finance/transaction"><?php echo $this->lang->line('menu_transaction'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-bar-chart"></i><span class="nav-label"><?php echo $this->lang->line('menu_report'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="#"><?php echo $this->lang->line('menu_sale'); ?></a>
			    <ul class="nav nav-third-level">
				  <li><a href="<?php echo base_url(); ?>report/sale/order"><?php echo $this->lang->line('menu_order'); ?></a></li>
				  <li><a href="<?php echo base_url(); ?>report/sale/product"><?php echo $this->lang->line('menu_product'); ?></a></li>
				</ul>
			  </li>	  
			  <li><a href="#"><?php echo $this->lang->line('menu_purchase'); ?></a>     
				<ul class="nav nav-third-level">
				  <li><a href="<?php echo base_url(); ?>report/purchase/alert"><?php echo $this->lang->line('menu_alert_list'); ?></a></li>
				</ul>
              </li>   
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-address-card"></i><span class="nav-label"><?php echo $this->lang->line('menu_client'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>client/client"><?php echo $this->lang->line('menu_client_list'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>client/client/add"><?php echo $this->lang->line('menu_client_add'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa fa-user-circle-o"></i><span class="nav-label"><?php echo $this->lang->line('menu_user'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>user/user"><?php echo $this->lang->line('menu_user'); ?></a></li>
			  <li><a href="<?php echo base_url(); ?>user/user_group"><?php echo $this->lang->line('menu_user_group'); ?></a></li>
			</ul>
		  </li>
		  <li>
			<a><i class="fa fa-cog"></i><span class="nav-label"><?php echo $this->lang->line('menu_system'); ?></span><span class="fa arrow"></span></a>
			<ul class="nav nav-second-level">
			  <li><a href="<?php echo base_url(); ?>setting/setting"><?php echo $this->lang->line('menu_setting'); ?></a></li>
			  <li><a href="#"><?php echo $this->lang->line('menu_log'); ?></a>     
				<ul class="nav nav-third-level">
				  <li><a href="<?php echo base_url(); ?>setting/activity_log"><?php echo $this->lang->line('menu_activity_log'); ?></a></li>
				</ul>
              </li>
			  <li><a href="<?php echo base_url(); ?>setting/information"><?php echo $this->lang->line('menu_information'); ?></a></li>
			  <li><a href="#"><?php echo $this->lang->line('menu_localization'); ?></a>     
				<ul class="nav nav-third-level">
				  <li><a href="<?php echo base_url(); ?>setting/language"><?php echo $this->lang->line('menu_language'); ?></a></li>
				  <li><a href="<?php echo base_url(); ?>setting/length_class"><?php echo $this->lang->line('menu_length_class'); ?></a></li>
			      <li><a href="<?php echo base_url(); ?>setting/weight_class"><?php echo $this->lang->line('menu_weight_class'); ?></a></li>
				</ul>
              </li>			
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