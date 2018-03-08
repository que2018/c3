<link href="<?php echo base_url(); ?>assets/css/app/inventory/inventory_view.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">  
<script src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_inventory_view'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/inventory"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_inventory_view'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>inventory/inventory" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>	
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
    <div class="col-lg-12">
	  <div class="ibox-content">
	    <form method="post" class="form-horizontal">
		  <div class="row">
			<div class="col-lg-12">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_product'); ?></label>
			    <div class="col-sm-10">
				  <input name="product_name" value="<?php echo $product_name; ?>" class="form-control" disabled>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
			    <div class="col-sm-10">
				 <input name="warehouse_name" value="<?php echo $warehouse_name; ?>" class="form-control" disabled>
			    </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			    <div class="col-sm-10">
				  <input name="location_name" value="<?php echo $location_name; ?>" class="form-control" disabled>
			    </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_quantity'); ?></label>
			    <div class="col-sm-10"><input name="quantity" value="<?php echo $quantity; ?>" class="form-control" disabled></div>
			  </div>
		    </div>
		  </div>
		</form>
	  </div>
	</div>
  </div>  
</div>
		
		