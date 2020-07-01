<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/sale/sale_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_unsolved_order'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('text_order'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_unsolved_order'); ?></strong></li>
	</ol>
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
		  <h5><?php echo $this->lang->line('text_unsolved_order_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <?php if($sort == 'sale.id') { ?>
				<th style="width: 8%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 8%;" class="sorting">
					<a href="<?php echo $sort_sale_id; ?>"><?php echo $this->lang->line('column_order_id'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'sale.store_sale_id') { ?>
				<th style="width: 20.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_store_sale_id; ?>"><?php echo $this->lang->line('column_store_order_id'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20.6%;" class="sorting">
					<a href="<?php echo $sort_store_sale_id; ?>"><?php echo $this->lang->line('column_store_order_id'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'sale.tracking') { ?>
				<th style="width: 20.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20.6%;" class="sorting">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'sale.name') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_customer'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_customer'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'sale.date_added') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } ?>
				<th></th>
			  </thead>
			  <tbody>
				<?php if($sales) { ?>
				  <?php foreach($sales as $sale) { ?>
					<tr>
					  <td>#<?php echo $sale['id']; ?></td>
					  <td><?php echo $sale['store_sale_id']; ?></td>
					  <td><?php echo $sale['tracking']; ?></td>
					  <td><?php echo $sale['name']; ?></td>
					  <td><?php echo $sale['date_added']; ?></td>
					  <td style="text-align: center">
						<button onclick="print_label(this)" class="btn btn-primary btn-print"><i class="fa fa-print"></i></button>
						<a href="<?php echo base_url(); ?>sale/sale/edit?unsolved=1&id=<?php echo $sale['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
					  </td>
				      <input type="hidden" name="id" value="<?php echo $sale['id']; ?>" >
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="sale_id" placeholder="<?php echo $this->lang->line('column_order_id'); ?>" value="<?php echo $filter_sale_id; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="store_order_id" placeholder="<?php echo $this->lang->line('column_store_order_id'); ?>" value="<?php echo $filter_store_sale_id; ?>" /></th>
				  <th></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
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
	setInterval(function(){ 
		$.ajax({
			url: '<?php echo base_url(); ?>sale/sale_unsolved/reload',
			cache: false,
			contentType: false,
			processData: false,
			dataType: "html",
			success: function(html) {					
				$('.ibox-content').html(html);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}, 2500);
});
</script>
<script>
$(document).ready(function() {
	
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			store_order_id   = $("input[name='store_sale_id']").val();	
			name             = $("input[name='name']").val();
			date_added       = $("input[name='date_added']").val();

			url = '<?php echo $filter_url; ?>';
			
			if(store_order_id)
				url += '&filter_store_order_id=' + store_order_id;
			
			if(name)
				url += '&filter_name=' + name;
			
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
		handler = $(this);
		sale_id = $(this).attr('data');
		
		$.ajax({
			url: '<?php echo base_url(); ?>sale/sale/delete?sale_id=' + sale_id,
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
	});
});
</script>
<script>
function print_label(handle) 
{
	h = $(handle);
	
	id = h.closest('tr').find("input[name='id']").val();
	
	url = '<?php echo base_url();?>sale/label?unsolved=0&id=' + id;
			
	window.open(url, 'print_label', 'width=580, height=750, left=50, top=50');
}
</script>
		
		