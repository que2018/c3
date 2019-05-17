<p style="margin-top: 0px; margin-bottom: 20px; font-size: 25px;"><?php echo $title; ?></p>
<table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
  <thead>
    <tr>
	  <td style="width: 20%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_product_name'); ?></th>
	  <td style="width: 20%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_upc'); ?></th>
	  <td style="width: 20%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_sku'); ?></th>
	  <td style="width: 20%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_quantity'); ?></th>
	  <td style="width: 20%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_checkout_location'); ?></th>
    </tr>
  </thead>
  <tbody>
    <?php if($sale_products) { ?>
	  <?php foreach($sale_products as $sale_product) { ?>
	    <tr>
	      <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $sale_product['name']; ?></div></td>
	      <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $sale_product['upc']; ?></td>
	      <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $sale_product['sku']; ?></td>
	      <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $sale_product['quantity']; ?></td>
	      <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $sale_product['location']; ?></td>
		</tr>
      <?php } ?>
	<?php } ?>
</tbody>
</table> 

