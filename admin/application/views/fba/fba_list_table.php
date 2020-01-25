<div class="form-horizontal">
<div class="row">
  <div class="col-md-2">
	<div class="form-group">
	  <div class="col-sm-12">
		 <input name="id" class="form-control" value="<?php echo $filter_fba_id; ?>" placeholder="<?php echo $this->lang->line('entry_fba_id'); ?>">
	  </div>
	</div>
  </div>
  <div class="col-md-2">
	<div class="form-group">
	  <div class="col-sm-12">
		<input name="tracking" class="form-control" value="<?php echo $filter_tracking; ?>" placeholder="<?php echo $this->lang->line('entry_tracking'); ?>">
	  </div>
	</div>
  </div>
  <div class="col-md-2">
	<div class="form-group">
	  <div class="col-sm-12">
		<select name="status" class="form-control">
		  <option value=""><?php echo $this->lang->line('entry_status'); ?></option>
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
  <div class="col-md-2">
	<div class="form-group">
	  <div class="col-sm-12">
		<input name="date_added" class="form-control" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $this->lang->line('entry_date_added'); ?>">
	  </div>
	</div>
  </div>
</div>
</div>
<div id="table-content">
<div class="table-responsive">
  <div id="detail" style="display:none;"></div>
	<table class="table table-striped table-bordered table-hover table-fba">
	  <thead>
		<tr>
		<?php if($sort == 'id') { ?>
		<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		  <a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_fba_id'); ?></a>
		</th>
		<?php } else { ?>
		<th style="width: 20%;" class="sorting">
		  <a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_fba_id'); ?></a>
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
	  <?php if($fbas) { ?>
		<?php $offset = 0; ?>
		<?php foreach($fbas as $fba) { ?>
		  <tr>
			<td>
			  <span>#<?php echo $fba['fba_id']; ?></span>
			  <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
				<table class="table">
				  <thead>
					<th style="width: 50%;"><?php echo $this->lang->line('column_reference_number'); ?></th>
					<th style="width: 30%;"><?php echo $this->lang->line('column_loc'); ?></th>
					<th style="width: 20%;"><?php echo $this->lang->line('column_qty'); ?></th>
				  </thead>
				  <tbody>
					<?php foreach($fba['fba_products'] as $fba_product) { ?>
					<tr>
					  <td><?php echo $fba_product['reference_number']; ?></td>
					  <td><?php echo $fba_product['location']; ?></td>
					  <td><?php echo $fba_product['quantity']; ?></td>
					</tr>
					<?php } ?>
				  </tbody>
				</table>
			  </div>
			</td>
			<td>
			  <?php if($fba['tracking']) { ?>
				<span class="tracking"><?php echo $fba['tracking']; ?></span>
			  <?php } ?>
			</td>
			<?php if($fba['status'] == 1) { ?>
			<td>
			  <div class="input-group">
				<span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>
				<?php if($fba['enable_toggle']) { ?>
				<span class="btn-fba" onclick="change_fba_status(this, <?php echo $fba['fba_id']; ?>)"><i class="fa fa-refresh"></i></span>
				<?php } else { ?>
				<span class="btn-fba-disable"><i class="fa fa-refresh"></i></span>
				<?php } ?>
			  </div>
			</td>
			<?php } else { ?>
			<td>
			  <div class="input-group">
				<span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>				        
				<span class="btn-fba" onclick="change_fba_status(this, <?php echo $fba['fba_id']; ?>)"><i class="fa fa-refresh"></i></span>
			  </div>
			</td>
			<?php } ?>
			<td><?php echo $fba['date_added']; ?></td>
			<td class="text-center">
			  <a href="<?php echo base_url(); ?>fba/fba/edit?fba_id=<?php echo $fba['fba_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
			  <button class="btn btn-danger btn-delete" onclick="delete_fba(this, <?php echo $fba['fba_id']; ?>)"><i class="fa fa-trash"></i></button>
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