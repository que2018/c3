<link href="<?php echo base_url(); ?>assets/css/app/report/sale/product/product_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_product_sale'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="#"><?php echo $this->lang->line('text_report'); ?></a></li>
	  <li><a href="#"><?php echo $this->lang->line('text_sale'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_product_sale'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>catalog/product/add" class="btn btn-primary btn-add"><i class="fa fa-download"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	  <div class="alert alert-success"><i class="fa fa-check-circle-o" aria-hidden="true"></i>&nbsp;<?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
	  <?php } ?>
      <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" data-dismiss="alert">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_sale_product_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'products.name') { ?>
				<th style="width: 30%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 30%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'products.upc') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'products.sku') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'total_quantity') { ?>
				<th class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th class="sorting">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'total_income') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_income; ?>"><?php echo $this->lang->line('column_income'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_income; ?>"><?php echo $this->lang->line('column_income'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 15%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($products) { ?>
				  <?php foreach($products as $product) { ?>
					<tr>
					  <td><?php echo $product['name']; ?></td>
					  <td><?php echo $product['upc']; ?></td>
					  <td><?php echo $product['sku']; ?></td>
					  <td><?php echo $product['total_quantity']; ?></td>
					  <td><?php echo $product['total_income']; ?></td>
					  <td style="text-align: center">
						<a href="<?php echo base_url().'report/sale/product/detail?product_id='.$product['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-eye"></i></a>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="upc" placeholder="<?php echo $this->lang->line('column_upc'); ?>" value="<?php echo $filter_upc; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="sku" placeholder="<?php echo $this->lang->line('column_sku'); ?>" value="<?php echo $filter_sku; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="quantity" placeholder="<?php echo $this->lang->line('column_quantity'); ?>" value="<?php echo $filter_quantity; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="income" placeholder="<?php echo $this->lang->line('column_income'); ?>" value="<?php echo $filter_income; ?>" /></th>
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
			name     = $('input[name=\'name\']').val();
			upc      = $('input[name=\'upc\']').val();
			sku      = $('input[name=\'sku\']').val();
			quantity = $('input[name=\'quantity\']').val();
			income   = $('input[name=\'income\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
		
			if(upc)
				url += '&filter_upc=' + upc;
			
			if(sku)
				url += '&filter_sku=' + sku;
			
			if(quantity)
				url += '&filter_quantity=' + quantity;
			
			if(income)
				url += '&filter_income=' + income;
			
			window.location.href = url;
		}
	});
});
</script>
		
		