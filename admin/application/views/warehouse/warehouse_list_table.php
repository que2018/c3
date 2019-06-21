<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover table-warehouse">
    <thead>
	  <?php if($sort == 'name') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'street') { ?>
	  <th style="width: 18%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_street; ?>"><?php echo $this->lang->line('column_street'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 18%;" class="sorting">
	    <a href="<?php echo $sort_street; ?>"><?php echo $this->lang->line('column_street'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'city') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_city; ?>"><?php echo $this->lang->line('column_city'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_city; ?>"><?php echo $this->lang->line('column_city'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'state') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_state; ?>"><?php echo $this->lang->line('column_state'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_state; ?>"><?php echo $this->lang->line('column_state'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'country') { ?>
	  <th class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_country; ?>"><?php echo $this->lang->line('column_country'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 14%;" class="sorting">
	    <a href="<?php echo $sort_country; ?>"><?php echo $this->lang->line('column_country'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'zipcode') { ?>
	  <th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_zipcode; ?>"><?php echo $this->lang->line('column_zipcode'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 10%;" class="sorting">
	    <a href="<?php echo $sort_zipcode; ?>"><?php echo $this->lang->line('column_zipcode'); ?></a>
	  </th>
	  <?php } ?>
	  <th style="width: 10%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($warehouses) { ?>
	    <?php foreach($warehouses as $warehouse) { ?>
		  <tr>
		    <td><?php echo $warehouse['name']; ?></td>
		    <td><?php echo $warehouse['street']; ?></td>
		    <td><?php echo $warehouse['city']; ?></td>
		    <td><?php echo $warehouse['state']; ?></td>
		    <td><?php echo $warehouse['country']; ?></td>
		    <td><?php echo $warehouse['zipcode']; ?></td>
		    <td style="text-align: center">
			  <a href="<?php echo base_url(); ?>warehouse/warehouse/edit?warehouse_id=<?php echo $warehouse['warehouse_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_warehouse(this, <?php echo $warehouse['warehouse_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>				
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>
		  
		  
	   