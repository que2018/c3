<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/check/checkout_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkout"><?php echo $this->lang->line('text_checkout'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkout_list'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>check/checkout/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
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
		  <h5><?php echo $this->lang->line('text_checkout_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <tr>
				  <?php if($sort == 'id') { ?>
				  <th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkout_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 15%;" class="sorting">
					<a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkout_id'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'sale_id') { ?>
				  <th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_sale_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 15%;" class="sorting">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_sale_id'); ?></a>
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
				  <th style="width: 12%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 12%;" class="sorting">
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
			    <?php if($checkouts) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($checkouts as $checkout) { ?>
					<tr>
					  <td>
					    <span>#<?php echo $checkout['checkout_id']; ?></span>
						<div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_name'); ?></th>
							  <th style="width: 20%;"><?php echo $this->lang->line('column_loc'); ?></th>
							  <th style="width: 30%;"><?php echo $this->lang->line('column_qty'); ?></th>
							</thead>
							<tbody>
							  <?php foreach($checkout['checkout_products'] as $checkout_product) { ?>
							  <tr>
							    <td><?php echo $checkout_product['name']; ?></td>
							    <td><?php echo $checkout_product['location']; ?></td>
							    <td><?php echo $checkout_product['quantity']; ?></td>
							  </tr>
							  <?php } ?>
							  <tr>
							    <td colspan=3 class="text-right">
							      <?php if($checkout['shipping_provider']) { ?>
							        <span class="shipping"><?php echo $checkout['shipping_provider']; ?></span>
								  <?php } ?>
							    </td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td>
					    <?php if($checkout['sale_id']) { ?>
						<a href="<?php echo base_url()?>/sale/sale/edit?sale_id=<?php echo $checkout['sale_id']; ?>">#<?php echo $checkout['sale_id']; ?></a>
						<?php } ?>
					  </td>	  
					  <td>
					    <?php if($checkout['tracking']) { ?>
					      <span class="tracking"><?php echo $checkout['tracking']; ?></span>
						<?php } ?>
					  </td>	  
					  <?php if($checkout['status'] == 1) { ?>
					  <td><span class="pending"><?php echo $this->lang->line('text_pending'); ?></span></td>
					  <?php } else { ?>
					  <td><span class="completed"><?php echo $this->lang->line('text_completed'); ?></span></td>
					  <?php } ?>
					  <td><?php echo $checkout['date_added']; ?></td>
					  <td class="text-center">
					    <button onclick="print_label(this)" class="btn btn-info btn-print"><i class="fa fa-print"></i></button>
						<a href="<?php echo base_url(); ?>check/checkout/edit?checkout_id=<?php echo $checkout['checkout_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $checkout['checkout_id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>
					  <input type="hidden" name="checkout_id" value="<?php echo $checkout['checkout_id']; ?>" >
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
			    <?php } ?>
			  </tbody>
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="id" placeholder="<?php echo $this->lang->line('column_checkout_id'); ?>" value="<?php echo $filter_id; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="sale_id" placeholder="<?php echo $this->lang->line('column_sale_id'); ?>" value="<?php echo $filter_sale_id; ?>" /></th>				 
				  <th class="filter-td"><input type="text" class="filter-input" name="tracking" placeholder="<?php echo $this->lang->line('column_tracking'); ?>" value="<?php echo $filter_tracking; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="status" placeholder="<?php echo $this->lang->line('column_note'); ?>" value="<?php echo $filter_status; ?>" /></th>
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
			id          = $('input[name=\'id\']').val();
			sale_id     = $('input[name=\'sale_id\']').val();
			tracking    = $('input[name=\'tracking\']').val();
			status      = $('select[name=\'status\']').val();
			date_added  = $('input[name=\'date_added\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(id)
				url += '&filter_id=' + id;
			
			if(sale_id)
				url += '&filter_sale_id=' + sale_id;
			
			if(tracking)
				url += '&filter_id=' + tracking;
		
			if(status)
				url += '&filter_note=' + status;
			
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
			checkout_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>check/checkout/delete?checkout_id=' + checkout_id,
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
function print_label(handle) {
	h = $(handle);
	
	checkout_id = h.closest('tr').find("input[name='checkout_id']").val();
	
	url = '<?php echo base_url();?>check/checkout_label?checkout_id=' + checkout_id;
			
	window.open(url, 'print_label', 'width=580, height=750, left=50, top=50');
}
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
		
		