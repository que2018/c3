<link href="<?php echo base_url(); ?>assets/css/app/catalog/product_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_product_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_catalog'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_product_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>catalog/product/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
	<button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_export'); ?>" class="btn btn-info btn-download" onclick="to_excel()"><i class="fa fa-download"></i></button>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	  <div class="alert alert-success"><?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
	  <?php } ?>
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_product_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'name') { ?>
				<th style="width: 32%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 32%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'upc') { ?>
				<th style="width: 17%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 17%;" class="sorting">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'sku') { ?>
				<th style="width: 17%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 17%;" class="sorting">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'quantity') { ?>
				<th class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th class="sorting">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 17%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($products) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($products as $product) { ?>
					<tr>
					  <td>
					    <span><?php echo $product['name']; ?></span>
					    <div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_length_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_width_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_height_short'); ?></th>
							  <th style="width: 25%;"><?php echo $this->lang->line('column_weight_short'); ?></th>
						    </thead>
						    <tbody>
							  <tr>
							    <td><?php echo $product['length']; ?>&nbsp;<?php echo $product['length_class']; ?></td>
								<td><?php echo $product['width']; ?>&nbsp;<?php echo $product['length_class']; ?></td>
								<td><?php echo $product['height']; ?>&nbsp;<?php echo $product['length_class']; ?></td>
								<td><?php echo $product['weight']; ?>&nbsp;<?php echo $product['weight_class']; ?></td>
							  </tr>
							  <?php if($product['shipping_provider']) { ?>
							  <tr><td colspan=4 class="text-right"><span class="shipping"><?php echo $product['shipping_provider']; ?></span></td></tr>
							  <?php } ?>
						    </tbody>
						  </table>
					    </div>
					  </td>
					  <td><?php echo $product['upc']; ?></td>
					  <td><?php echo $product['sku']; ?></td>
					  <td><?php echo $product['quantity']; ?></td>
					  <td class="text-center">
						<a href="<?php echo base_url().'catalog/product/edit?product_id='.$product['product_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<a href="<?php echo base_url() . 'catalog/product/view?product_id=' . $product['product_id']; ?>" class="btn btn-primary btn-success"><i class="fa fa-eye"></i></a>
					  </td>
					  <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="upc" placeholder="<?php echo $this->lang->line('column_upc'); ?>" value="<?php echo $filter_upc; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="sku" placeholder="<?php echo $this->lang->line('column_sku'); ?>" value="<?php echo $filter_sku; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="quantity" placeholder="<?php echo $this->lang->line('column_quantity'); ?>" value="<?php echo $filter_quantity; ?>" /></th>
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

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
			
			if(upc)
				url += '&filter_upc=' + upc;
			
			if(sku)
				url += '&filter_sku=' + sku;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
function to_excel() {
	$.ajax({
		url: '<?php echo base_url(); ?>catalog/product_download/products',
		dataType: 'json',
		beforeSend: function() {
			$('.btn-download').html('<i class="fa fa-spinner fa-spin"></i>');
		},
		complete: function() {
			$('.btn-download').html('<i class="fa fa-download"></i>');
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
<script>
$(document).ready(function() {
	$('td:first-child').hover(function() {
		$(this).find('.detail').show();
	}, function() {
		$(this).find('.detail').hide();
	});
});
</script>
		
		