<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/inventory/transfer_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_transfer'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/inventory"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_transfer'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
     <a href="<?php echo base_url(); ?>inventory/transfer/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
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
		  <h5><?php echo $this->lang->line('text_transfer_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'from_warehouse') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_from_warehouse; ?>"><?php echo $this->lang->line('column_from_warehouse'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_from_warehouse; ?>"><?php echo $this->lang->line('column_from_warehouse'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'from_location') { ?>
				<th style="width: 18%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_from_location; ?>"><?php echo $this->lang->line('column_from_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 18%;" class="sorting">
			      <a href="<?php echo $sort_from_location; ?>"><?php echo $this->lang->line('column_from_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'to_warehouse') { ?>
				<th style="width: 18%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_to_warehouse; ?>"><?php echo $this->lang->line('column_to_warehouse'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 18%;" class="sorting">
			      <a href="<?php echo $sort_to_warehouse; ?>"><?php echo $this->lang->line('column_to_warehouse'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'to_location') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_to_location; ?>"><?php echo $this->lang->line('column_to_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_to_location; ?>"><?php echo $this->lang->line('column_to_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 't.date_added') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 10%;" class="sorting">
				  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 10%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($transfers) { ?>
				  <?php foreach($transfers as $transfer) { ?>
					<tr>
					  <td><?php echo $transfer['from_warehouse']; ?></td>
					  <td><?php echo $transfer['from_location']; ?></td>
					  <td><?php echo $transfer['to_warehouse']; ?></td>
					  <td><?php echo $transfer['to_location']; ?></td>
					  <td><?php echo $transfer['date_added']; ?></td>
					  <td class="text-center">
					    <a href="<?php echo base_url(); ?>inventory/transfer/edit?transfer_id=<?php echo $transfer['transfer_id']; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_edit'); ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
					  	<button data-toggle="tooltip" class="btn btn-danger btn-delete" data="<?php echo $transfer['transfer_id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="product" placeholder="<?php echo $this->lang->line('column_from_warehouse'); ?>" value="<?php echo $filter_from_warehouse; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="location" placeholder="<?php echo $this->lang->line('column_from_location'); ?>" value="<?php echo $filter_from_location; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="warehouse" placeholder="<?php echo $this->lang->line('column_to_warehouse'); ?>" value="<?php echo $filter_to_warehouse; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="quantity" placeholder="<?php echo $this->lang->line('column_to_location'); ?>" value="<?php echo $filter_to_location; ?>" /></th>
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
			from_warehouse  = $('input[name=\'from_warehouse\']').val();	
			from_location   = $('input[name=\'from_location\']').val();
			to_warehouse    = $('input[name=\'to_warehouse\']').val();
			to_location     = $('input[name=\'to_location\']').val();
			date_added      = $('input[name=\'date_added\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(product)
				url += '&filter_from_warehouse=' + from_warehouse;
			
			if(loaction)
				url += '&filter_from_location=' + from_location;
		
			if(warehouse)
				url += '&filter_to_warehouse=' + to_warehouse;
			
			if(quantity)
				url += '&filter_to_location=' + to_location;
			
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
			transfer_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>inventory/transfer/delete?transfer_id=' + transfer_id,
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
	$(document).keypress(function (e) {
		if(e.which == 13) {
			$('.form-horizontal').submit();
			return false;    
		}
	});
});
</script>
		