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
	  <?php if($sort == 'sale.id') { ?>
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
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 16.6%;" class="sorting">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
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
	    <?php foreach($sales as $sale) { ?>
		  <tr>
		    <td>#<?php echo $sale['id']; ?></td>
		    <td><?php echo $sale['store_sale_id']; ?></td>
		    <td><?php echo $sale['tracking']; ?></td>
		    <td><?php echo $sale['name']; ?></td>
		    <td><?php echo $sale['date_added']; ?></td>
		    <td style="text-align: center">
			  <button onclick="print_label(this)" class="btn btn-primary btn-print"><i class="fa fa-print"></i></button>
			  <a href="<?php echo base_url(); ?>sale/sale/edit?unsolved=1&id=<?php echo $sale['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
		    </td>
		    <input type="hidden" name="id" value="<?php echo $sale['id']; ?>" >
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="sale_id" placeholder="<?php echo $this->lang->line('column_order_id'); ?>" value="<?php echo $filter_sale_id; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="store_order_id" placeholder="<?php echo $this->lang->line('column_store_order_id'); ?>" value="<?php echo $filter_store_sale_id; ?>" /></th>
	    <th></th>
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
		  