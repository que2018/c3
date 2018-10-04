<div id="table-content">
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
		      <td class="text-center">
			    <input type="checkbox" name="selected[]" value="<?php echo $inventory['inventory_id']; ?>" />
		      </td>
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
			  <td><?php echo $inventory['batch']; ?></td>
		      <?php if($modifiable) { ?>
		      <td ondblclick="active_quantity(this)"><?php echo $inventory['quantity']; ?></td>
		      <?php } else { ?>
		      <td><?php echo $inventory['quantity']; ?></td>
		      <?php } ?>
		      <td class="text-center">
			    <a href="<?php echo base_url(); ?>inventory/inventory_batch/edit?inventory_id=<?php echo $inventory['inventory_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
			    <button class="btn btn-danger btn-delete" onclick="delete_inventory(this, <?php echo $inventory['inventory_id']; ?>)"><i class="fa fa-trash"></i></button>
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
	   