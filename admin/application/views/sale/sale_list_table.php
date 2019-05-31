<div class="form-horizontal">
  <div class="row">
    <div class="col-md-2">
	  <div class="form-group">
	    <label class="col-sm-5 control-label"><?php echo $this->lang->line('entry_order_id'); ?></label>
	    <div class="col-sm-7"><input name="sale_id" class="form-control" value="<?php echo $filter_sale_id; ?>"></div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-6 control-label"><?php echo $this->lang->line('entry_store_order_id'); ?></label>
	    <div class="col-sm-6"><input name="store_sale_id" class="form-control" value="<?php echo $filter_store_sale_id; ?>"></div>
	  </div>
    </div>
    <div class="col-md-2">
	  <div class="form-group">
	    <label class="col-sm-5 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
	    <div class="col-sm-7">
		  <select name="status" class="form-control">
		    <option value=""></option>
		    <?php if($filter_status == 1) { ?>
		    <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
		    <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
		    <?php } else if($filter_status == 2) { ?>
		    <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
		    <option value="2" selected><?php echo $this->lang->line('text_completed'); ?></option>
		    <?php } else { ?>
		    <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
		    <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
		    <?php } ?>
		  </select>
	    </div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
	    <div class="col-sm-9"><input name="tracking" class="form-control" value="<?php echo $filter_tracking; ?>"></div>
	  </div>
    </div>
    <div class="col-md-2">
	  <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
    </div>
  </div>
</div>
<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
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
	  <?php if($sort == 'sale.status_id') { ?>
	  <th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 16.6%;" class="sorting">
		<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
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
		    <td class="text-center">
			  <input type="checkbox" name="selected[]" value="<?php echo $sale['sale_id']; ?>" />
		    </td>
		    <td>
			  <span>#<?php echo $sale['sale_id']; ?></span>
			  <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
			    <table class="table table-product">
				  <thead>
				    <th style="width: 35%;"><?php echo $this->lang->line('column_name'); ?></th>
					<th style="width: 35%;"><?php echo $this->lang->line('column_sku'); ?></th>
				    <th style="width: 30%;"><?php echo $this->lang->line('column_qty'); ?></th>
				  </thead>
				  <tbody>
				    <?php foreach($sale['sale_products'] as $sale_product) { ?>
				    <tr>
					  <td><?php echo $sale_product['name']; ?></td>
					  <td><?php echo $sale_product['sku']; ?></td>
					  <td><?php echo $sale_product['quantity']; ?></td>
				    </tr>
				    <?php } ?>
				  </tbody>
			    </table>
			    <table class="table table-shipping">
				  <tbody>
				    <tr>
					  <td colspan=4 class="text-right">
					  	<?php if($sale['name']) { ?>
						<span class="name"><?php echo $sale['name']; ?></span>
						<?php } ?>
						<?php if($sale['shipping']) { ?>
						<span class="shipping"><?php echo $sale['shipping']; ?></span>
						<?php } ?>
						<?php if($sale['store_name']) { ?>
						<span class="store"><?php echo $sale['store_name']; ?></span>
						<?php } ?>
						<?php if($sale['checkout']) { ?>
						<?php if($sale['checkout']['status'] == 1) { ?>
						<span class="checkout-pending"><?php echo $this->lang->line('text_checkout_pending'); ?></span>
						<?php } else { ?>
						<span class="checkout-complete"><?php echo $this->lang->line('text_checkout_complete'); ?></span>
						<?php } ?>
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
		    <td class="tracking-td">
			  <?php if($sale['tracking']) { ?>
			    <span class="tracking"><?php echo $sale['tracking']; ?></span>
			  <?php } ?>
		    </td>
			<td class="status">
			  <?php if($sale['status_id'] == 1) { ?>
			    <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>
			  <?php } else { ?>
			    <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>
			  <?php } ?>
			  &nbsp;
			  <?php if($sale['checkout']) { ?>      
			  <?php if($sale['checkout']['status'] == 1) { ?>
			  <span class="checkout-pending">
			    <a href="<?php echo base_url(); ?>check/checkout/edit?checkout_id=<?php echo $sale['checkout']['id']?>">
				  <?php echo $this->lang->line('text_checkout_pending'); ?>
			    </a>
			  </span>
			  <?php } else { ?>
			  <span class="checkout-complete">
			    <a href="<?php echo base_url(); ?>check/checkout/edit?checkout_id=<?php echo $sale['checkout']['id']?>">
				  <?php echo $this->lang->line('text_checkout_complete'); ?>
			    </a>
			  </span>
			  <?php } ?>
			  <?php } ?>
		    </td>
		    <td><?php echo $sale['date_added']; ?></td>
		    <td class="text-center">
			  <button onclick="print_label_d(this, <?php echo $sale['sale_id']; ?>)" class="btn btn-success btn-print-d"><i class="fa fa-print"></i></button>
			  <?php if(!$sale['checkout']) { ?>
			  <button onclick="checkout(this, <?php echo $sale['sale_id']; ?>)" class="btn btn-info btn-checkout"><i class="fa fa-refresh"></i></button>
			  <?php } else { ?>
			  <button class="btn btn-info btn-checkout-disable"><i class="fa fa-refresh"></i></button>
			  <?php } ?>
			  <a href="<?php echo $sale['edit']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_sale(this, <?php echo $sale['sale_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>
		    <input type="hidden" name="sale_id" value="<?php echo $sale['sale_id']; ?>" >
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
	    