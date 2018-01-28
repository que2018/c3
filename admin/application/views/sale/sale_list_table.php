<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'sale.id') { ?>
	  <th style="width: 8%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 8%;" class="sorting">
		<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'sale.store_sale_id') { ?>
	  <th style="width: 20.6%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_store_sale_id; ?>"><?php echo $this->lang->line('column_store_order_id'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20.6%;" class="sorting">
		<a href="<?php echo $sort_store_sale_id; ?>"><?php echo $this->lang->line('column_store_order_id'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'sale.tracking') { ?>
	  <th style="width: 20.6%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20.6%;" class="sorting">
		<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'sale.name') { ?>
	  <th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_customer'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 16.6%;" class="sorting">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_customer'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'sale.date_added') { ?>
	  <th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 16.6%;" class="sorting">
		<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
	  </th>
	  <?php } ?>
	  <th></th>
    </thead>
    <tbody>
	  <?php if($sales) { ?>
	    <?php $offset = 0; ?>
	    <?php foreach($sales as $sale) { ?>
		  <tr>
		    <td>
			  <span>#<?php echo $sale['sale_id']; ?></span>
			  <div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
			    <table class="table table-product">
				  <thead>
				    <th style="width: 70%;"><?php echo $this->lang->line('column_name'); ?></th>
				    <th style="width: 30%;"><?php echo $this->lang->line('column_qty'); ?></th>
				  </thead>
				  <tbody>
				    <?php foreach($sale['sale_products'] as $sale_product) { ?>
				    <tr>
					  <td><?php echo $sale_product['name']; ?></td>
					  <td><?php echo $sale_product['quantity']; ?></td>
				    </tr>
				    <?php } ?>
				  </tbody>
			    </table>
			    <table class="table table-vw">
				  <thead>
				    <th style="width: 25%;"><?php echo $this->lang->line('column_length_short'); ?></th>
				    <th style="width: 25%;"><?php echo $this->lang->line('column_width_short'); ?></th>
				    <th style="width: 25%;"><?php echo $this->lang->line('column_height_short'); ?></th>
				    <th style="width: 25%;"><?php echo $this->lang->line('column_weight_short'); ?></th>
				  </thead>
				  <tbody>
				    <tr>
					  <td><?php echo $sale['length']; ?>&nbsp;<?php echo $sale['length_class']; ?></td>
					  <td><?php echo $sale['width']; ?>&nbsp;<?php echo $sale['length_class']; ?></td>
					  <td><?php echo $sale['height']; ?>&nbsp;<?php echo $sale['length_class']; ?></td>
					  <td><?php echo $sale['weight']; ?>&nbsp;<?php echo $sale['weight_class']; ?></td>
				    </tr>
				  </tbody>
			    </table>
			    <table class="table table-shipping">
				  <tbody>
				    <tr>
					  <td colspan=4 class="text-right">
					    <?php if($sale['shipping_provider']) { ?>
						  <span class="shipping"><?php echo $sale['shipping_provider']; ?></span>
					    <?php } ?>
					    <?php if($sale['store_name']) { ?>
						  <span class="store"><?php echo $sale['store_name']; ?></span>
					    <?php } ?>
					    <?php if($sale['status_id'] == 1) { ?>
					    <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>
					    <?php } else { ?>
					    <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>
					    <?php } ?>
					  </td>
				    </tr>
				  </tbody>
			    </table>
			  </div>
		    </td>
		    <td><?php echo $sale['store_sale_id']; ?></td>
		    <td>
			  <?php if($sale['tracking']) { ?>
			    <span class="tracking"><?php echo $sale['tracking']; ?></span>
			  <?php } ?>
		    </td>
		    <td><?php echo $sale['name']; ?></td>
		    <td><?php echo $sale['date_added']; ?></td>
		    <td class="text-center">
			  <button onclick="print_label(this)" class="btn btn-info btn-print"><i class="fa fa-print"></i></button>
			  <a href="<?php echo $sale['edit']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" data="<?php echo $sale['sale_id']; ?>"><i class="fa fa-trash"></i></button>
		    </td>
		    <input type="hidden" name="sale_id" value="<?php echo $sale['sale_id']; ?>" >
		  </tr>
		  <?php $offset++; ?>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="id" placeholder="<?php echo $this->lang->line('column_order_id'); ?>" value="<?php echo $filter_sale_id; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="store_sale_id" placeholder="<?php echo $this->lang->line('column_store_order_id'); ?>" value="<?php echo $filter_store_sale_id; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="tracking" placeholder="<?php echo $this->lang->line('column_tracking'); ?>" value="<?php echo $filter_tracking; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="date_added" placeholder="<?php echo $this->lang->line('column_date_added'); ?>" value="<?php echo $filter_date_added; ?>" /></th>
	    <th></th>
	  </tr>
    </tfoot>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>
<script>
/* $(document).ready(function() {
	Pace.options.ajax = false;
	
	setInterval(function(){ 
		$.ajax({
			url: '<?php echo base_url(); ?>sale/sale/reload<?php echo $url; ?>',
			cache: false,
			contentType: false,
			processData: false,
			dataType: "html",
			success: function(html) {					
				$('.ibox-content').html(html);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}, 4000); 
}); */
</script>
	    