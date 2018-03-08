<div class="form-horizontal">
  <div class="row">
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_Name'); ?></label>
	    <div class="col-sm-9"><input name="name" class="form-control" value="<?php echo $filter_name; ?>"></div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_Store'); ?></label>
	    <div class="col-sm-9">
		  <select name="store_id" class="form-control">
		    <option value=""></option>
		    <?php if($stores) { ?>
		    <?php foreach($stores as $store) { ?>
			  <?php if($store['store_id'] == $filter_store_id) { ?>
			  <option value="<?php echo $store['store_id']; ?>" selected><?php echo $store['name']; ?></option>
			  <?php } else { ?>
			  <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
		     <?php } ?>
		    <?php } ?>
		    <?php } ?>
		  </select>
	    </div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-4 control-label"><?php echo $this->lang->line('text_Email'); ?></label>
	    <div class="col-sm-8"><input name="email" class="form-control" value="<?php echo $filter_email; ?>"></div>
	  </div>
    </div>
    <div class="col-md-2">
	  <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
    </div>
  </div>
</div>
<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'name') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'employee.store_id') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_store; ?>"><?php echo $this->lang->line('column_store'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
	    <a href="<?php echo $sort_store; ?>"><?php echo $this->lang->line('column_store'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'employee.email') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
	    <a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'employee.phone') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
	    <a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
	  </th>
	  <?php } ?>
	  <th></th>
    </thead>
    <tbody>
	  <?php if($employees) { ?>
	    <?php foreach($employees as $employee) { ?>
		  <tr>
		    <td><?php echo $employee['name']; ?></td>
		    <td><?php echo $employee['store']; ?></td>
		    <td><?php echo $employee['email']; ?></td>
		    <td><?php echo $employee['phone']; ?></td>
		    <td style="text-align: center">
			  <a href="<?php echo base_url(); ?>store/employee/edit?employee_id=<?php echo $employee['employee_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" data="<?php echo $employee['employee_id']; ?>"><i class="fa fa-trash"></i></button>
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
	   