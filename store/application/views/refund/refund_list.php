<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/refund/refund_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>refund/refund"><?php echo $this->lang->line('text_return'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_return_list'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>refund/refund/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
	</div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_return_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <div id="detail" style="display:none;"></div>
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <tr>
				  <?php if($sort == 'id') { ?>
				  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_return_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_return_id'); ?></a>
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
			    <?php if($refunds) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($refunds as $refund) { ?>
					<tr>
					  <td>
					    <span>#<?php echo $refund['refund_id']; ?></span>
					    <div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_name'); ?></th>
							  <th style="width: 20%;"><?php echo $this->lang->line('column_loc'); ?></th>
							  <th style="width: 30%;"><?php echo $this->lang->line('column_qty'); ?></th>
							</thead>
							<tbody>
							  <?php foreach($refund['refund_products'] as $refund_product) { ?>
							  <tr>
							    <td><?php echo $refund_product['name']; ?></td>
							    <td><?php echo $refund_product['location']; ?></td>
							    <td><?php echo $refund_product['quantity']; ?></td>
							  </tr>
							  <?php } ?>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><span class="tracking"><?php echo $refund['tracking']; ?></span></td>
					  <?php if($refund['status'] == 1) { ?>
					  <td><span class="pending"><?php echo $this->lang->line('text_pending'); ?></span></td>
					  <?php } else if($refund['status'] == 2) { ?>
					  <td><span class="damaged"><?php echo $this->lang->line('text_completed_damage'); ?></span></td>
					  <?php } else { ?>
					  <td><span class="completed"><?php echo $this->lang->line('text_completed_inventory'); ?></span></td>
					  <?php } ?>
					  <td><?php echo $refund['date_added']; ?></td>
					   <td class="text-center">
						<a href="<?php echo base_url(); ?>refund/refund/edit?refund_id=<?php echo $refund['refund_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button data-toggle="tooltip" class="btn btn-danger btn-delete" data="<?php echo $refund['refund_id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
			    <?php } ?>
			  </tbody>
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="return_id" placeholder="<?php echo $this->lang->line('column_return_id'); ?>" value="<?php echo $filter_refund_id; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="tracking" placeholder="<?php echo $this->lang->line('column_tracking'); ?>" value="<?php echo $filter_tracking; ?>" /></th>
				  <th>
					<select class="filter-select" name="status" onchange="javascript:location.href = this.value;">
					  <?php if($filter_status == 1) { ?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed_damage'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=3"><?php echo $this->lang->line('text_completed_inventory'); ?></option>
					  <?php } else if($filter_status == 2) {?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2" selected><?php echo $this->lang->line('text_completed_damage'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=3"><?php echo $this->lang->line('text_completed_inventory'); ?></option>
					  <?php } else if($filter_status == 3) {?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed_damage'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=3" selected><?php echo $this->lang->line('text_completed_inventory'); ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed_damage'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=3"><?php echo $this->lang->line('text_completed_inventory'); ?></option>
					  <?php } ?>
					</select>
				  </th>
				  <th class="filter-td"><input type="text" class="filter-input" name="date_added" placeholder="<?php echo $this->lang->line('column_date_added'); ?>" value="<?php echo $filter_date_added; ?>" /></th>
				  <th></th>
				</tr>
			  </tfoot>
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
<script>
$(document).ready(function() {
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			refund_id   = $('input[name=\'refund_id\']').val();
			tracking    = $('input[name=\'tracking\']').val();
			date_added  = $('input[name=\'date_added\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(refund_id)
				url += '&filter_return_id=' + refund_id;
		
			if(tracking)
				url += '&filter_tracking=' + tracking;
			
			if(date_added)
				url += '&filter_date_added=' + date_added;
			
			window.location.href = url;
		}
	});
	
	//date picker
	$("input[name='date_added']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
});
</script>
<script>
$(document).ready(function() {
	$('.btn-delete').click(function() {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			refund_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>refund/refund/delete?refund_id=' + refund_id,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				beforeSend: function() {
					handler.html('<i class="fa fa-circle-o-notch fa-spin"></i>');
				},
				success: function(json) {					
					if(json.success) 
						handler.closest('tr').remove();
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$('td:first-child').hover(function() {
		$(this).find('.detail').show();
	}, function() {
		$(this).find('.detail').hide();
	});
});
</script>
		
		