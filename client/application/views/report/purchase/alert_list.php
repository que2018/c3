<link href="<?php echo base_url(); ?>assets/css/app/report/purchase/alert_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_purchase'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>report/purchase"><?php echo $this->lang->line('text_report'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_purchase'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <button class="btn btn-primary btn-export" onclick="to_excel()"><i class="fa fa-download"></i></button>
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
		  <h5><?php echo $this->lang->line('text_purchase_list_description'); ?></h5>
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
				<?php if($sort == 'report.quantity') { ?>
				<th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12%;" class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
			  </thead>
			  <tbody>
				<?php if($alerts) { ?>
				  <?php foreach($alerts as $alert) { ?>
					<tr>
					  <td><a href="<?php echo base_url(); ?>catalog/product/edit?id=<?php echo $alert['product_id']; ?>" target="_blank"><?php echo $alert['product']; ?></a></td>
					  <td><?php echo $alert['location']; ?></td>
					  <td><?php echo $alert['warehouse']; ?></td>
					  <td><?php echo $alert['quantity']; ?></td>
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="product" placeholder="<?php echo $this->lang->line('column_product'); ?>" value="<?php echo $filter_product; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="location" placeholder="<?php echo $this->lang->line('column_location'); ?>" value="<?php echo $filter_location; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="warehouse" placeholder="<?php echo $this->lang->line('column_warehouse'); ?>" value="<?php echo $filter_warehouse; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="quantity" placeholder="<?php echo $this->lang->line('column_quantity'); ?>" value="<?php echo $filter_quantity; ?>" /></th>
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
			product    = $('input[name=\'product\']').val();
			warehouse  = $('input[name=\'warehouse\']').val();
			quantity   = $('input[name=\'quantity\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(product)
				url += '&filter_product=' + product;
		
			if(warehouse)
				url += '&filter_warehouse=' + warehouse;
			
			if(quantity)
				url += '&filter_quantity=' + quantity;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
function to_excel() {
	$.ajax({
		url: '<?php echo base_url(); ?>report/purchase/alert/export',
		dataType: "json",
		beforeSend: function() {
			$('.btn-export').html('<i class="fa fa-spinner fa-spin"></i>');
		},
		complete: function() {
			$('.btn-export').html('<i class="fa fa-arrow-right"></i>');
		},
		success: function(json) {					
			if(json.success) 
			{	
				window.location = json.link;
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
		