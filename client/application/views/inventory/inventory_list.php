<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/inventory/inventory_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_inventory'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/inventory"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_inventory'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_inventory_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'product.name') { ?>
				<th style="width: 22%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 22%;" class="sorting">
			      <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'location.name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'warehouse.name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'inventory.quantity') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'inventory.date_modified') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_date_modified; ?>"><?php echo $this->lang->line('column_date_modified'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_date_modified; ?>"><?php echo $this->lang->line('column_date_modified'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 10%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($inventories) { ?>
				  <?php foreach($inventories as $inventory) { ?>
					<tr>
					  <td><a href="<?php echo base_url(); ?>catalog/product/edit?id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?></a></td>
					  <td><?php echo $inventory['location']; ?></td>
					  <td><?php echo $inventory['warehouse']; ?></td>
					  <td><?php echo $inventory['quantity']; ?></td>
					  <td><?php echo $inventory['date_modified']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url(); ?>inventory/inventory/view?id=<?php echo $inventory['id']; ?>" class="btn btn-primary"><i class="fa fa-eye"></i></a>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="product" placeholder="<?php echo $this->lang->line('column_product'); ?>" value="<?php echo $filter_product; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="location" placeholder="<?php echo $this->lang->line('column_location'); ?>" value="<?php echo $filter_location; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="warehouse" placeholder="<?php echo $this->lang->line('column_warehouse'); ?>" value="<?php echo $filter_warehouse; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="quantity" placeholder="<?php echo $this->lang->line('column_quantity'); ?>" value="<?php echo $filter_quantity; ?>" ondblclick="active_quantity(this)" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="date_modified" placeholder="<?php echo $this->lang->line('column_date_modified'); ?>" value="<?php echo $filter_date_modified; ?>" /></th>
				  <th></th>
				</tr>
			  </tfoot>
		    </table>
		  </div>
		  <div class="pagination-block">
			<div class="pull-left"><?php echo $results; ?></div>
		    <div class="pull-right"><?php echo $pagination; ?></div>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			product        = $('input[name=\'product\']').val();	
			loaction       = $('input[name=\'location\']').val();
			warehouse      = $('input[name=\'warehouse\']').val();
			quantity       = $('input[name=\'quantity\']').val();
			date_modified  = $('input[name=\'date_modified\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(product)
				url += '&filter_product=' + product;
			
			if(loaction)
				url += '&filter_location=' + loaction;
		
			if(warehouse)
				url += '&filter_warehouse=' + warehouse;
			
			if(quantity)
				url += '&filter_quantity=' + quantity;
			
			if(date_modified)
				url += '&filter_date_modified=' + date_modified;
			
			window.location.href = url;
		}
	});
	
	//date picker
	$("input[name='date_modified']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
});
</script>
		