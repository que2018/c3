<div id="label"><img src="<?php echo $label_img; ?>"></div>
<div id="packing-slip">
  <table class="table table-packing">
    <thead>
	  <tr>
	    <th><?php echo $this->lang->line('text_sku'); ?></th>
		<th><?php echo $this->lang->line('text_quantity'); ?></th>
	  </tr>
	</thead>
	<tbody>
	  <?php foreach($sale_products as $sale_product) { ?>
	    <tr>
		  <td><?php echo $sale_product['sku']; ?></td>
		  <td><?php echo $sale_product['quantity']; ?></td>
		</tr>
	  <?php } ?>
	</tbody>
  </table>
</div>

		
		