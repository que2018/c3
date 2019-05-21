<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <tr>
	    <?php if($sort == 'inforamtion_content.title') { ?>
	    <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_title; ?>"><?php echo $this->lang->line('column_title'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 40%;" class="sorting">
		  <a href="<?php echo $sort_title; ?>"><?php echo $this->lang->line('column_title'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'information.status') { ?>
	    <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 40%;" class="sorting">
		  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	    </th>
	    <?php } ?>
	    <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
	  </tr>
    </thead>
    <tbody>
	  <?php if($informations) { ?>
	    <?php foreach($informations as $information) { ?>
		  <tr>
		    <td><?php echo $information['title']; ?></td>
		    <td><?php echo $information['status']; ?></td>
		    <td>
			  <center>
			    <a href="<?php echo base_url(); ?>setting/information/edit?information_id=<?php echo $information['information_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>					    
			    <button class="btn btn-danger btn-delete" onclick="delete_information(this, <?php echo $information['information_id']; ?>)"><i class="fa fa-trash"></i></button>
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
	    