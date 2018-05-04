<div class="form-horizontal">
  <div class="row">
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
	    <div class="col-sm-9">
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
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_upc'); ?></label>
	    <div class="col-sm-9"><input name="upc" class="form-control" value="<?php echo $filter_upc; ?>"></div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_sku'); ?></label>
	    <div class="col-sm-9"><input name="sku" class="form-control" value="<?php echo $filter_sku; ?>"></div>
	  </div>
    </div>
    <div class="col-md-3">
	  <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
    </div>
  </div>
</div>
<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'product.name') { ?>
	  <th style="width: 30%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 30%;" class="sorting">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'client.id') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'product.upc') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'product.sku') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'product.quantity') { ?>
	  <th class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th class="sorting">
	    <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
	  </th>
	  <?php } ?>
	  <th style="width: 15%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($products) { ?>
	    <?php $offset = 0; ?>
	    <?php foreach($products as $product) { ?>
		  <tr>
		    <td>
			  <span><?php echo $product['name']; ?></span>
			  <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
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
		    <td><?php echo $product['client']; ?></td>
		    <?php if($editable) { ?>
		    <td ondblclick="active_field('upc', this)"><?php echo $product['upc']; ?></td>
		    <?php } else { ?>
		    <td><?php echo $product['upc']; ?></td>
		    <?php } ?>
		    <?php if($editable) { ?>
		    <td ondblclick="active_field('sku', this)"><?php echo $product['sku']; ?></td>
		    <?php } else { ?>
		    <td><?php echo $product['sku']; ?></td>
		    <?php } ?>
		    <td><?php echo $product['quantity']; ?></td>
		    <td class="text-center">
			  <a href="<?php echo base_url().'catalog/product/edit?product_id='.$product['product_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" data="<?php echo $product['product_id']; ?>"><i class="fa fa-trash"></i></button>
		    </td>
		    <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
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
	   