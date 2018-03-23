<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'name') { ?>
	  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 40%;" class="sorting">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'amount') { ?>
	  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 40%;" class="sorting">
		<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
	  </th>
	  <?php } ?>
	  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($fees) { ?>
	    <?php foreach($fees as $fee) { ?>
		  <tr>
		    <td><?php echo $fee['name']; ?></td>
		    <td><?php echo $fee['amount']; ?></td>
		    <td>
			  <center>
			    <a href="<?php echo base_url(); ?>finance/fee/edit?fee_id=<?php echo $fee['fee_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			    <button class="btn btn-danger btn-delete" onclick="delete_fee(this, <?php echo $fee['fee_id']; ?>)"><i class="fa fa-trash"></i></button>
			  </center>
		    </td>
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="amount" placeholder="<?php echo $this->lang->line('column_amount'); ?>" value="<?php echo $filter_amount; ?>" /></th>
	    <th></th>
	  </tr>
    </tfoot>
 </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>

		  
	 