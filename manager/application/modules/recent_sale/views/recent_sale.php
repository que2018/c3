<div class="ibox float-e-margins">
  <div class="ibox-title">
	<h5><?php echo $this->lang->line('text_recent_orders'); ?></h5>
	<div class="ibox-tools"> 
	  <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
	  <a class="close-link"><i class="fa fa-times"></i></a> 
	</div>
  </div>
  <div class="ibox-content recent-order-content">
	<table class="table table-hover no-margins">
	  <thead>
		<tr>
		  <th><?php echo $this->lang->line('column_product'); ?></th>
		  <th><?php echo $this->lang->line('column_date'); ?></th>
		  <th><?php echo $this->lang->line('column_store'); ?></th>
		  <th><?php echo $this->lang->line('column_total'); ?></th>
		</tr>
	  </thead>
	  <tbody>
		<?php foreach($recent_sale_products as $recent_sale_product) { ?>
		  <tr>
			<td><a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $recent_sale_product['product_id']; ?>" target="_blank"><?php echo $recent_sale_product['name']; ?></a></td>
			<td><i class="fa fa-clock-o"></i> <?php echo $recent_sale_product['date']; ?></td>
			<td><?php echo $recent_sale_product['store']; ?></td>
			<td class="text-navy"><?php echo $recent_sale_product['total']; ?></td> 
		  </tr>
		<?php } ?>
	  </tbody>
	</table>
  </div>
</div>