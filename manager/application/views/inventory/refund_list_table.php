<div class="form-horizontal">
  <div class="row">
    <div class="col-md-2">
	  <div class="form-group">
	    <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
	    <div class="col-sm-8">
		  <select name="client_id" class="form-control">
			<?php if($clients) { ?>
			  <option value=""></option>
			  <?php foreach($clients as $client) { ?>
			  <?php if($client['client_id'] == $filter_client_id) { ?>
			  <option value="<?php echo $client['client_id']; ?>" selected><?php echo $client['name']; ?></option>
			  <?php } else { ?>
			  <option value="<?php echo $client['client_id']; ?>"><?php echo $client['name']; ?></option>
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
	  <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
	  <?php if($sort == 'product.name') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
	    <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'product.upc') { ?>
	  <th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 15%;" class="sorting">
	    <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'product.sku') { ?>
	  <th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 15%;" class="sorting">
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
	  <?php if($sort == 'refund.batch') { ?>
	  <th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 12%;" class="sorting">
	    <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'refund.quantity') { ?>
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
	  <?php if($refunds) { ?>
	    <?php $offset = 0; ?>
	    <?php foreach($refunds as $refund) { ?>
		  <tr>
		    <td class="text-center">
			  <input type="checkbox" name="selected[]" value="<?php echo $refund['refund_id']; ?>" />
		    </td>
		    <td>
			  <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $refund['product_id']; ?>" target="_blank"><?php echo $refund['product']; ?></a>
			  <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
			    <table class="table">
				  <thead>
				    <th style="width: 50%;"><?php echo $this->lang->line('column_upc'); ?></th>
				    <th style="width: 50%;"><?php echo $this->lang->line('column_sku'); ?></th>
				  </thead>
				  <tbody>
				    <tr>
					  <td><?php echo $refund['upc']; ?></td>
					  <td><?php echo $refund['sku']; ?></td>
				    </tr>
				  </tbody>
			    </table>
			  </div>
		    </td>
		    <td><?php echo $refund['upc']; ?></td>
		    <td><?php echo $refund['sku']; ?></td>
		    <td><?php echo $refund['location']; ?></td>
			<td><?php echo $refund['batch']; ?></td>
		    <?php if($modifiable) { ?>
		    <td ondblclick="active_quantity(this)"><?php echo $refund['quantity']; ?></td>
		    <?php } else { ?>
		    <td><?php echo $refund['quantity']; ?></td>
		    <?php } ?>
		    <td class="text-center">
			  <a href="<?php echo base_url(); ?>inventory/refund/edit?refund_id=<?php echo $refund['refund_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_refund(this, <?php echo $refund['refund_id']; ?>)"><i class="fa fa-trash"></i></button>
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
	   