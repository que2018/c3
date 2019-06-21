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
  </div>
</div>
<div id="table-content">
  <div class="table-responsive">
    <table class="table table-striped table-bordered table-hover table-non-batch table-inventory">
      <thead>
	    <?php if($sort == 'product.name') { ?>
	    <th style="width: 24%;" class="sorting_<?php echo strtolower($order); ?>">
	      <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 24%;" class="sorting">
	      <a href="<?php echo $sort_product; ?>"><?php echo $this->lang->line('column_product'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'product.upc') { ?>
	    <th style="width: 17%;" class="sorting_<?php echo strtolower($order); ?>">
	      <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 17%;" class="sorting">
	      <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'product.sku') { ?>
	    <th style="width: 17%;" class="sorting_<?php echo strtolower($order); ?>">
	      <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 17%;" class="sorting">
	      <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
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
	    <?php if($sort == 'inventory.quantity') { ?>
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
		      <td><a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?><?php echo $inventory['upc']; ?></a></td>
		      <td><a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $inventory['product_id']; ?>" target="_blank"><?php echo $inventory['product']; ?><?php echo $inventory['sku']; ?></a></td>
		      <td><?php echo $inventory['location']; ?></td>
		      <td><?php echo $inventory['quantity']; ?></td>			
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
	   