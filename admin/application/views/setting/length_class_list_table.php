<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover table-length">
    <thead>
	  <tr>
	    <?php if($sort == 'unit') { ?>
	    <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 28%;" class="sorting">
		  <a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'unit_short') { ?>
	    <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit_short'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 28%;" class="sorting">
		  <a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit_short'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'value') { ?>
	    <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_value; ?>"><?php echo $this->lang->line('column_value'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 28%;" class="sorting">
		  <a href="<?php echo $sort_value; ?>"><?php echo $this->lang->line('column_value'); ?></a>
	    </th>
	    <?php } ?>
	    <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
	  </tr>
    </thead>
    <tbody>
	  <?php if($length_classes) { ?>
	    <?php foreach($length_classes as $length_class) { ?>
		  <tr>
		    <td><?php echo $length_class['unit']; ?></td>
		    <td><?php echo $length_class['unit_short']; ?></td>
		    <td><?php echo $length_class['value']; ?></td>
		    <td>
			  <center>
			    <a href="<?php echo base_url(); ?>setting/length_class/edit?length_class_id=<?php echo $length_class['length_class_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			    <button class="btn btn-danger btn-delete" onclick="delete_length_class(this, <?php echo $length_class['length_class_id']; ?>)"><i class="fa fa-trash"></i></button>
			  </center>
		    </td>
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="unit" placeholder="<?php echo $this->lang->line('column_unit'); ?>" value="<?php echo $filter_unit; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="unit_short" placeholder="<?php echo $this->lang->line('column_unit_short'); ?>" value="<?php echo $filter_unit_short; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="value" placeholder="<?php echo $this->lang->line('column_value'); ?>" value="<?php echo $filter_value; ?>" /></th>
	    <th></th>
	  </tr>
    </tfoot>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>
	    