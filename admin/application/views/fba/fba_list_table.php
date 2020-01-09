<div class="form-horizontal">
  <div class="row">
    <div class="col-md-2">
	  <div class="form-group">
	    <label class="col-sm-6 control-label"><?php echo $this->lang->line('entry_checkin_id'); ?></label>
	    <div class="col-sm-6"><input name="id" class="form-control" value="<?php echo $filter_id; ?>"></div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
	    <div class="col-sm-9"><input name="tracking" class="form-control" value="<?php echo $filter_tracking; ?>"></div>
	  </div>
    </div>
    <div class="col-md-2">
	  <div class="form-group">
	    <label class="col-sm-5 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
	    <div class="col-sm-7">
		  <select name="status" class="form-control">
		    <option value=""></option>
		    <?php if($filter_status == 1) { ?>
		    <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
		    <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
		    <?php } else if($filter_status == 2) { ?>
		    <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
		    <option value="2" selected><?php echo $this->lang->line('text_completed'); ?></option>
		    <?php } else { ?>
		    <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
		    <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
		    <?php } ?>
		  </select>
	    </div>
	  </div>
    </div>
    <div class="col-md-3">
	  <div class="form-group">
	    <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_date_added'); ?></label>
	    <div class="col-sm-8"><input name="date_added" class="form-control" value="<?php echo $filter_date_added; ?>"></div>
	  </div>
    </div>
    <div class="col-md-2">
	  <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
    </div>
  </div>
</div>
<div class="table-responsive">
  <div id="detail" style="display:none;"></div>
  <table class="table table-striped table-bordered table-hover table-checkin">
    <thead>
	  <tr>
	    <?php if($sort == 'id') { ?>
	    <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkin_id'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 20%;" class="sorting">
		  <a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkin_id'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'tracking') { ?>
	    <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 20%;" class="sorting">
		  <a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'status') { ?>
	    <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 20%;" class="sorting">
		  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
	    </th>
	    <?php } ?>
	    <?php if($sort == 'date_added') { ?>
	    <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
	    </th>
	    <?php } else { ?>
	    <th style="width: 20%;" class="sorting">
		  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
	    </th>
	    <?php } ?>
	    <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
	  </tr>
    </thead>
    <tbody>
	  <?php if($checkins) { ?>
	    <?php $offset = 0; ?>
	    <?php foreach($checkins as $checkin) { ?>
		  <tr>
		    <td>
			  <span>#<?php echo $checkin['checkin_id']; ?></span>
			  <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
			    <table class="table">
				  <thead>
				    <th style="width: 24%;"><?php echo $this->lang->line('column_name'); ?></th>
				    <th style="width: 24%;"><?php echo $this->lang->line('column_loc'); ?></th>
					<th style="width: 24%;"><?php echo $this->lang->line('column_batch'); ?></th>
				    <th style="width: 18%;"><?php echo $this->lang->line('column_qty'); ?></th>
				  </thead>
				  <tbody>
				    <?php foreach($checkin['checkin_products'] as $checkin_product) { ?>
				    <tr>
					  <td><?php echo $checkin_product['name']; ?></td>
					  <td><?php echo $checkin_product['location']; ?></td>
					  <td><?php echo $checkin_product['batch']; ?></td>
					  <td><?php echo $checkin_product['quantity']; ?></td>
				    </tr>
				    <?php } ?>
				  </tbody>
			    </table>
			  </div>
		    </td>
	        <td>
			  <?php if($checkin['tracking']) { ?>
			    <span class="tracking"><?php echo $checkin['tracking']; ?></span></td>
			  <?php } ?>
		    </td>
		     <?php if($checkin['status'] == 1) { ?>
		    <td>
			  <div class="input-group">
			    <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>				        
			    <span class="btn-checkin"><i class="fa fa-refresh"></i></span>
			  </div>
		    </td>
		    <?php } else { ?>
		    <td>
			  <div class="input-group">
			    <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>				        
			    <span class="btn-checkin"><i class="fa fa-refresh"></i></span>
			  </div>
		    </td>
		    <?php } ?>
		    <td><?php echo $checkin['date_added']; ?></td>
		     <td class="text-center">
			  <a href="<?php echo base_url(); ?>check/checkin/edit?checkin_id=<?php echo $checkin['checkin_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_checkin(this, <?php echo $checkin['checkin_id']; ?>)"><i class="fa fa-trash"></i></button>
		    </td>
		  </tr>
		  <?php $offset++; ?>
	    <?php } ?>
	  <?php } ?>
    </tbody>
  </table>
</div>
<div class="pagination-block">
  <div class="pull-left"><?php echo $results; ?></div>
  <div class="pull-right"><?php echo $pagination; ?></div>
</div>
	    