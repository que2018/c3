<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'store.name') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
	    <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'store.platform') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
	    <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'client') { ?>
	  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
	    <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
	  </th>
	  <?php } ?>
	  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
    </thead>
    <tbody>
	  <?php if($stores) { ?>
	    <?php foreach($stores as $store) { ?>
		  <tr>
		    <td><?php echo $store['name']; ?></td>
		    <td><?php echo $store['platform']; ?></td>
		    <td><?php echo $store['client']; ?></td>
		    <td style="text-align: center">
			  <a href="<?php echo base_url('store/store/edit?store_id=' . $store['store_id']); ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_store(this, <?php echo $store['store_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>				
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>			  
    <tfoot>
	  <tr>
	    <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="platform" placeholder="<?php echo $this->lang->line('column_platform'); ?>" value="<?php echo $filter_platform; ?>" /></th>
	    <th class="filter-td"><input type="text" class="filter-input" name="client" placeholder="<?php echo $this->lang->line('column_client'); ?>" value="<?php echo $filter_client; ?>" /></th>
	    <th></th>
	  </tr>
    </tfoot>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>

		  
	   