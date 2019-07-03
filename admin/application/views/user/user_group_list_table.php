<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover table-user-group">
    <thead>
	  <?php if($sort == 'user_group.name') { ?>
	  <th style="width: 60%;" class="sorting_<?php echo strtolower($order); ?>">
	  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 60%;" class="sorting">
	  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <th style="width: 40%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($user_groups) { ?>
	    <?php foreach($user_groups as $user_group) { ?>
		  <tr>
		    <td><?php echo $user_group['name']; ?></td>
		    <td style="text-align: center">
			  <a href="<?php echo base_url(); ?>user/user_group/edit?user_group_id=<?php echo $user_group['user_group_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_user_group(this, <?php echo $user_group['user_group_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>				
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
	    <th></th>
	  </tr>
    </tfoot>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>
	   