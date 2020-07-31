<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_label'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/label"><?php echo $this->lang->line('text_label'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_label_list'); ?></strong></li>
	</ol>
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
		  <h5><?php echo $this->lang->line('text_label_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12"><input name="sale_id" class="form-control" autocomplete="new-password" value="<?php echo $filter_sale_id; ?>" placeholder="<?php echo $this->lang->line('entry_order_id'); ?>" ></div>
				</div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12"><input name="tracking" class="form-control" autocomplete="new-password" value="<?php echo $filter_tracking; ?>" placeholder="<?php echo $this->lang->line('entry_tracking'); ?>" ></div>
			    </div>
			  </div>
		    </div>
		  </div>
		  <div id="table-content">
		    <div class="table-responsive">
		      <table class="table table-striped table-bordered table-hover table-sale">
			    <thead>
			      <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
			      <?php if($sort == 'sale_id') { ?>
				  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'tracking') { ?>
				  <th style="width: 30%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 30%;" class="sorting">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'status_id') { ?>
				  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 25%;" class="sorting">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } ?>
				  <th><?php echo $this->lang->line('column_action'); ?></th>
			    </thead>
			    <tbody>
				<?php if($sale_labels) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($sale_labels as $sale_label) { ?>
					<tr>
                      <td class="text-center">
					    <input type="checkbox" name="selected[]" value="<?php echo $sale_label['sale_id']; ?>" />
					  </td>
					  <td><a href="<?php echo base_url().'sale/sale/edit?sale_id='.$sale_label['sale_id']; ?>" target="_blank">#<?php echo $sale_label['sale_id']; ?></a></td>
					  <td class="tracking-td" ondblclick="active_tracking(this)" data-offset="<?php echo $offset; ?>" >
					    <?php if($sale_label['tracking']) { ?>
					      <span class="tracking"><?php echo $sale_label['tracking']; ?></span>
					    <?php } ?>
					  </td>
					  <td class="status">
					    <?php if($sale_label['status_id'] == 1) { ?>
						<span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>		
						<?php } else if($sale_label['status_id'] == 3) { ?>
						<span class="request-void"><?php echo $this->lang->line('text_request_void'); ?></span>				        						
						<?php } else if($sale_label['status_id'] == 5) { ?>
						<span class="void"><?php echo $this->lang->line('text_void'); ?></span>				        
						<?php } ?>
					  </td>
					  <td class="text-center">
						<a href="<?php echo base_url().'sale/label/edit?sale_label_id='.$sale_label['sale_label_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
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
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
function filter_label() {	
	sale_id   = $('input[name=\'sale_id\']').val();
	tracking  = $('input[name=\'tracking\']').val();

	url = '<?php echo $filter_url; ?>';

	if(sale_id)
		url += '&filter_sale_id=' + sale_id;

	if(tracking)
		url += '&filter_tracking=' + tracking;
		
	$.ajax({
		url: url,
		dataType: 'html',
		success: function(html) {					
			$('#table-content').html(html);
		}
	});
}
</script>
<script>
$(document).ready(function() {
	$(document).on('input', 'input[name=\'sale_id\']', function () {
		filter_label();
	});
	
	$(document).on('input', 'input[name=\'tracking\']', function () {		
		filter_label();
	});
});
</script>
<?php echo $footer; ?>
