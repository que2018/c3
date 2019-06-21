<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover table-location">
    <thead>
	  <?php if($sort == 'location.name') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'location.code') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
	    <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'warehouse.name') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
	    <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
	  </th>
	  <?php } ?>
	  <th style="width: 25%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($locations) { ?>
	    <?php foreach($locations as $location) { ?>
		  <tr>
		    <td><?php echo $location['name']; ?></td>
		    <td><?php echo $location['code']; ?></td>
		    <td><?php echo $location['warehouse']; ?></td>
		    <td style="text-align: center">
			  <a href="<?php echo base_url(); ?>warehouse/location/edit?location_id=<?php echo $location['location_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_location(this, <?php echo $location['location_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>				
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="code" placeholder="<?php echo $this->lang->line('column_code'); ?>" value="<?php echo $filter_code; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="warehouse" placeholder="<?php echo $this->lang->line('column_warehouse'); ?>" value="<?php echo $filter_warehouse; ?>" /></th>
	    <th></th>
	  </tr>
    </tfoot>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>

	  