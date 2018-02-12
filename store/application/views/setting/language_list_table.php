<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <tr>
	    <?php if($sort == 'name') { ?>
	    <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 40%;" class="sorting">
		  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'code') { ?>
	    <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 40%;" class="sorting">
		  <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
	    </th>
	    <?php } ?>
	    <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
	  </tr>
    </thead>
    <tbody>
	  <?php if($languages) { ?>
	    <?php foreach($languages as $language) { ?>
		  <tr>
		    <td><?php echo $language['name']; ?></td>
		    <td><?php echo $language['code']; ?></td>
		    <td>
			  <center>
			    <a href="<?php echo base_url(); ?>setting/language/edit?language_id=<?php echo $language['language_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
		        <button class="btn btn-danger btn-delete" onclick="delete_language(this, <?php echo $language['language_id']; ?>)"><i class="fa fa-trash"></i></button>
			  </center>
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
	    