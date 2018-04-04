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
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/export/inventory.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download'); ?>" class="btn btn-success btn-download" download><i class="fa fa-download"></i></a>
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
		  <div class="btn-group batch-options">
			<a href="#" class="btn btn-batch btn-batch-select btn-secondary"><?php echo $this->lang->line('button_batch'); ?></a>	 
		    <a href="<?php echo $non_batch_url; ?>" class="btn btn-batch btn-secondary"><?php echo $this->lang->line('button_non_batch'); ?></a>
		  </div>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
			      <div class="col-sm-8">
				    <select name="warehouse_id" class="form-control">
				      <?php if($warehouses) { ?>
					    <option value=""></option>
					    <?php foreach($warehouses as $warehouse) { ?>
					      <?php if($warehouse['warehouse_id'] == $filter_warehouse_id) { ?>
						  <option value="<?php echo $warehouse['warehouse_id']; ?>" selected><?php echo $warehouse['name']; ?></option>
						  <?php } else { ?>
						  <option value="<?php echo $warehouse['warehouse_id']; ?>"><?php echo $warehouse['name']; ?></option>
						  <?php } ?>
					    <?php } ?>
					  <?php } ?>
				    </select>
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			      <div class="col-sm-8"><input name="location" class="form-control" value="<?php echo $filter_location; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_sku'); ?></label>
			      <div class="col-sm-9"><input name="sku" class="form-control" value="<?php echo $filter_sku; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_upc'); ?></label>
			      <div class="col-sm-9"><input name="upc" class="form-control" value="<?php echo $filter_upc; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_batch'); ?></label>
			      <div class="col-sm-8"><input name="batch" class="form-control" value="<?php echo $filter_batch; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
                <button id="btn-search" class="btn btn-success" onclick="filter()"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'product.name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.upc') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.sku') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'location.name') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'warehouse.name') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'inventory.batch') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
				  <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'inventory.quantity') { ?>
				<th style="width: 10%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 10%;" class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($inventories) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($inventories as $inventory) { ?>
					<tr>
					  <td>
					    <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?></a>
						<div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_upc'); ?></th>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_sku'); ?></th>
							</thead>
							<tbody>
							  <tr>
							    <td><?php echo $inventory['upc']; ?></td>
							    <td><?php echo $inventory['sku']; ?></td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><?php echo $inventory['upc']; ?></td>
					  <td><?php echo $inventory['sku']; ?></td>
					  <td><?php echo $inventory['location']; ?></td>
					  <td><?php echo $inventory['warehouse']; ?></td>
					  <td><?php echo $inventory['batch']; ?></td>
					  <td><?php echo $inventory['quantity']; ?></td>
					  <td class="text-center">
					    <a href="<?php echo base_url(); ?>inventory/inventory/view?inventory_id=<?php echo $inventory['inventory_id']; ?>" class="btn btn-primary"><i class="fa fa-eye"></i></a>
					  </td>				
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
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
function filter() {	
	warehouse_id  = $('select[name=\'warehouse_id\']').val();
	loaction      = $('input[name=\'location\']').val();
	sku           = $('input[name=\'sku\']').val();	
	upc           = $('input[name=\'upc\']').val();	
	batch         = $('input[name=\'batch\']').val();	

	url = '<?php echo $filter_url; ?>';
	
	if(warehouse_id)
		url += '&filter_warehouse_id=' + warehouse_id;
	
	if(loaction)
		url += '&filter_location=' + loaction;

	if(sku)
		url += '&filter_sku=' + sku;
	
	if(upc)
		url += '&filter_upc=' + upc;
	
	if(batch)
		url += '&filter_batch=' + batch;
	
	window.location.href = url;
}
</script>
<script>
$(document).ready(function() {
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('#btn-search').trigger('click');
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$('td:first-child').hover(function() {
		$(this).find('.detail').show();
	}, function() {
		$(this).find('.detail').hide();
	});
});
</script>
		