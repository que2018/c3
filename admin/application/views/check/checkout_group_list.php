<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkout"><?php echo $this->lang->line('text_checkout'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkout_group_list'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>check/checkout/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div id="alerts">
	    <div id="alert-error" class="alert alert-danger" style="display:none;"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><span></span></div>
	  </div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_checkout_group_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <input name="id" class="form-control" value="<?php echo $filter_id; ?>" placeholder="<?php echo $this->lang->line('text_checkout_id'); ?>">
				  </div>
				</div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <select name="status" class="form-control">
					  <option value=""><?php echo $this->lang->line('text_Status'); ?></option>
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
				    <input name="date_added" class="form-control" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $this->lang->line('text_date_added'); ?>">
				  </div>
			    </div>
			  </div>
		    </div>
		  </div>
		  <div id="table-content">
		    <div class="table-responsive">
		      <table class="table table-striped table-bordered table-hover table-checkout">
			    <thead>
			      <tr>
			        <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
				    <?php if($sort == 'id') { ?>
				    <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					  <a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkout_id'); ?></a>
				    </th>
				    <?php } else { ?>
				    <th style="width: 25%;" class="sorting">
					  <a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkout_id'); ?></a>
				    </th>
				    <?php } ?>
				    <?php if($sort == 'status') { ?>
				    <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				    </th>
				    <?php } else { ?>
				    <th style="width: 25%;" class="sorting">
					  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				    </th>
				    <?php } ?>
				    <?php if($sort == 'date_added') { ?>
				    <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				    </th>
				    <?php } else { ?>
				    <th style="width: 25%;" class="sorting">
					  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				    </th>
				    <?php } ?>
				    <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			      </tr>
			    </thead>
			    <tbody>
			      <?php if($checkouts) { ?>
				    <?php $offset = 0; ?>
				    <?php foreach($checkouts as $checkout) { ?>
					  <tr>
					    <td class="text-center">
					      <input type="checkbox" name="selected[]" value="<?php echo $checkout['checkout_id']; ?>" />
					    </td>
					    <td>
					      <span><?php echo $checkout['checkout_id']; ?></span>
					    </td> 
					    <?php if($checkout['status'] == 1) { ?>
					    <td>
					      <div class="input-group">
						    <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>				        
						    <span class="btn-checkout" onclick="change_checkout_status(this, <?php echo $checkout['checkout_id']; ?>)"><i class="fa fa-refresh"></i></span>
						  </div>
					    </td>
					    <?php } else { ?>
					    <td>
					      <div class="input-group">
						    <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>				        
						    <span class="btn-checkout" onclick="change_checkout_status(this, <?php echo $checkout['checkout_id']; ?>)"><i class="fa fa-refresh"></i></span>
						  </div>
					    </td>
					    <?php } ?>
					    <td><?php echo $checkout['date_added']; ?></td>
					    <td class="text-center">
						  <a href="<?php echo base_url(); ?>check/checkout/edit?checkout_id=<?php echo $checkout['checkout_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						  <button class="btn btn-danger btn-delete" onclick="delete_checkout(this, <?php echo $checkout['checkout_id']; ?>)"><i class="fa fa-trash"></i></button>
					    </td>
					    <input type="hidden" name="checkout_id" value="<?php echo $checkout['checkout_id']; ?>" >
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
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
		