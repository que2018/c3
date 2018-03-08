<link href="<?php echo base_url(); ?>assets/css/app/search/search.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_search'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_search'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<?php if($results) { ?>
	  <div class="col-lg-12">
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $text_result; ?></div>
	  </div>
	  <?php foreach($results as $result) { ?>	
	    <div class="col-md-3">
		  <div class="ibox">
		    <div class="ibox-content product-box">
			  <div class="product-desc">
			    <?php if($result['type'] == 'product') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_product'); ?></small>
				  <a href="#" class="product-name"><?php echo $result['name']; ?></a>
				  <div class="small m-t-xs">
				    <strong><?php echo $this->lang->line('text_sku'); ?>:</strong>
				    &nbsp;<?php echo $result['sku']; ?>
				    &nbsp;&nbsp;<strong><?php echo $this->lang->line('text_upc'); ?>:</strong>
				    &nbsp;<?php echo $result['upc']; ?>
				  </div>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $result['product_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
			    <?php if($result['type'] == 'checkin') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_checkin'); ?></small>
				  <a href="#" class="product-name">#<?php echo $result['checkin_id']; ?></a>
				  <div class="small m-t-xs">
				    <strong><?php echo $this->lang->line('text_tracking'); ?>:</strong>
				    &nbsp;<?php echo $result['tracking']; ?>
				    &nbsp;&nbsp;<strong><?php echo $this->lang->line('text_status'); ?>:</strong>&nbsp;
				    <?php if($result['status'] == 1) { ?>
				    <?php echo $this->lang->line('text_pending'); ?>
				    <?php } else { ?>
				    <?php echo $this->lang->line('text_completed'); ?>
				    <?php } ?>
				  </div>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>check/checkin/edit?checkin_id=<?php echo $result['checkin_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
			    <?php if($result['type'] == 'checkout') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_checkout'); ?></small>
				  <a href="#" class="product-name">#<?php echo $result['checkout_id']; ?></a>
				  <div class="small m-t-xs">
				    <strong><?php echo $this->lang->line('text_tracking'); ?>:</strong>
				    &nbsp;<?php echo $result['tracking']; ?>
				    &nbsp;&nbsp;<strong><?php echo $this->lang->line('text_status'); ?>:</strong>&nbsp;
				    <?php if($result['status'] == 1) { ?>
				    <?php echo $this->lang->line('text_pending'); ?>
				    <?php } else { ?>
				    <?php echo $this->lang->line('text_completed'); ?>
				    <?php } ?>
				  </div>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>check/checkout/edit?checkout_id=<?php echo $result['checkout_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
				<?php if($result['type'] == 'inventory') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_inventory'); ?></small>
				  <a href="#" class="product-name"><?php echo $result['product']; ?></a>
				  <div class="small m-t-xs">
				    <strong><?php echo $this->lang->line('text_location'); ?>:</strong>
				    &nbsp;<?php echo $result['location']; ?>
				    &nbsp;&nbsp;<strong><?php echo $this->lang->line('text_quantity'); ?>:</strong>&nbsp;
				    &nbsp;<?php echo $result['quantity']; ?>
				  </div>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>inventory/inventory/edit?inventory_id=<?php echo $result['inventory_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
				<?php if($result['type'] == 'sale') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_sale'); ?></small>
				  <a href="#" class="product-name">#<?php echo $result['sale_id']; ?></a>
				  <div class="small m-t-xs">
				    <strong><?php echo $this->lang->line('text_store_sale_id'); ?>:</strong>
				    &nbsp;<?php echo $result['store_sale_id']; ?>
				    &nbsp;&nbsp;<strong><?php echo $this->lang->line('text_tracking'); ?>:</strong>&nbsp;
				    &nbsp;<?php echo $result['tracking']; ?>
				  </div>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>sale/sale/edit?sale_id=<?php echo $result['sale_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
			    <?php if($result['type'] == 'location') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_location'); ?></small>
				  <a href="#" class="product-name">#<?php echo $result['name']; ?></a>
				  <div class="small m-t-xs">
				    <strong><?php echo $this->lang->line('text_code'); ?>:</strong>
				    &nbsp;<?php echo $result['code']; ?>
				   </div>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>warehouse/location/edit?location_id=<?php echo $result['location_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
			    <?php if($result['type'] == 'warehouse') { ?>
				  <small class="text-muted type"><?php echo $this->lang->line('text_warehouse'); ?></small>
				  <a href="#" class="product-name">#<?php echo $result['name']; ?></a>
				  <div class="m-t text-righ">
				    <a href="<?php echo base_url(); ?>warehouse/warehouse/edit?id=<?php echo $result['warehouse_id']; ?>" class="btn btn-xs btn-outline btn-primary"><?php echo $this->lang->line('text_info'); ?><i class="fa fa-long-arrow-right"></i></a>
				  </div>
			    <?php } ?>
			  </div>
		    </div>
		  </div>
	    </div>
	  <?php } ?>
	  <?php } else { ?>
	  	<div class="col-lg-12">
	      <div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $text_no_result; ?></div>
	    </div>
	  <?php } ?>
    </div>
  </div>
</div>
