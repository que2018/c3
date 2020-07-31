<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover table-sale">
	<thead>
	  <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
	  <?php if($sort == 'sale_id') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
		<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'tracking') { ?>
	  <th style="width: 30%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 30%;" class="sorting">
		<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'status_id') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
		<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	  </th>
	  <?php } ?>
	  <th><?php echo $this->lang->line('column_action'); ?></th>
	</thead>
	<tbody>
	<?php if($sale_labels) { ?>
	  <?php $offset = 0; ?>
	  <?php foreach($sale_labels as $sale_label) { ?>
		<tr>
		  <td class="text-center">
			<input type="checkbox" name="selected[]" value="<?php echo $sale_label['sale_id']; ?>" />
		  </td>
		  <td>#<?php echo $sale_label['sale_id']; ?></span></td>
		  <td class="tracking-td" ondblclick="active_tracking(this)" data-offset="<?php echo $offset; ?>" >
			<?php if($sale_label['tracking']) { ?>
			  <span class="tracking"><?php echo $sale_label['tracking']; ?></span>
			<?php } ?>
		  </td>
		  <td class="status">
			<?php if($sale_label['status_id'] == 1) { ?>
			<span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>				        
			<?php } else if($sale_label['status_id'] == 5) { ?>
			<span class="void"><?php echo $this->lang->line('text_void'); ?></span>				        
			<?php } ?>
		  </td>
		  <td class="text-center">
			<a href="<?php echo base_url().'sale/label/edit?sale_label_id='.$sale_label['sale_label_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
		  </td>
		  <input type="hidden" name="sale_label_id" value="<?php echo $sale_label['sale_label_id']; ?>" >
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
		 