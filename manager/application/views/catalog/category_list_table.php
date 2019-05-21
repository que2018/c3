<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'category.name') { ?>
	  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 40%;" class="sorting">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'category.sort_order') { ?>
	  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_sort_order; ?>"><?php echo $this->lang->line('column_sort_order'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 40%;" class="sorting">
	    <a href="<?php echo $sort_sort_order; ?>"><?php echo $this->lang->line('column_sort_order'); ?></a>
	  </th>
	  <?php } ?>
	  <th style="width: 20%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($categories) { ?>
	    <?php foreach($categories as $category) { ?>
		  <tr>
		    <td><?php echo $category['name']; ?></td>
		    <td><?php echo $category['sort_order']; ?></td>
		    <td style="text-align: center">
			  <a href="<?php echo base_url().'catalog/category/edit?category_id='.$category['category_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_category(this, <?php echo $category['category_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>
		    <input type="hidden" title="category_id" value="<?php echo $category['category_id']; ?>">
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" title="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
	    <th></th>				  
	    <th></th>
	  </tr>
    </tfoot>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>
	    