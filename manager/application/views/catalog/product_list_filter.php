<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
      <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
	  <th class="text-center" style="width: 8%;"><?php echo $this->lang->line('column_image'); ?></th>
	  <?php if($sort == 'product.name') { ?>
	  <th style="width: 22%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 22%;" class="sorting">
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
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
	  </th>
	  <?php } ?>
	  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($products) { ?>
	    <?php $offset = 0; ?>
	    <?php foreach($products as $product) { ?>
		  <tr>
		    <td class="text-center">
			  <input type="checkbox" name="selected[]" value="<?php echo $product['product_id']; ?>" />
		    </td>
			<td class="text-center">
			  <img src="<?php echo $product['image']; ?>" class="img-thumbnail" />
			  <div class="detail" style="top: <?php echo $offset * 67 + 170; ?>px;">
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
		    <td><?php echo $product['name']; ?></td>
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
			  <button class="btn btn-danger btn-delete" onclick="delete_product(this, <?php echo $product['product_id']; ?>)"><i class="fa fa-trash"></i></button>
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
	   