<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/report/sale/order/order_list.css" rel="stylesheet"> 
<script src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<link href="<?php echo base_url(); ?>assets/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_order_report'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="#"><?php echo $this->lang->line('text_report'); ?></a></li>
	  <li><a href="#"><?php echo $this->lang->line('text_order'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_order_report'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
	<button class="btn btn-info btn-download" onclick="to_excel()"><i class="fa fa-download"></i></button>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
	<div class="col-lg-12">
	  <div class="ibox">
		<div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_search_condition'); ?></h5>
		</div>
		<div class="ibox-content">
		<div method="get" class="form-horizontal">
		  <div class="row">
			<div class="col-md-5">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
			    <div class="col-sm-10"><input type="text" name="search_client" value="" class="form-control"></div>
			  </div>
	        </div>
		    <div class="col-md-5">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_date_from'); ?></label>
			    <div class="col-sm-10"><input type="text" name="search_date_from" value="" class="form-control"></div>
			  </div>
			  <div class="hr-line-space"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_date_to'); ?></label>
			    <div class="col-sm-10"><input type="text" name="search_date_to" value="" class="form-control"></div>
			  </div>
		    </div>
		    <div class="col-md-2">
			  <button class="btn btn-primary btn-search"><i class="fa fa-search"></i></button>
		    </div>
		  </div>
		</div>
	    </div>
	  </div>
    <div class="ibox">
	    <div class="ibox-title">
	      <h5><?php echo $this->lang->line('text_search_condition'); ?></h5>
	    </div>
	  <div class="ibox-content">
	    <div class="table-responsive">
		    <table id="search_results" class="table table-striped table-bordered table-hover dataTables-example" >
		    <thead>
			    <th class="sorting_asc" style="width: 8%;"><a id="id" value="<?php echo $this->lang->line('column_order_id'); ?>"><?php echo $this->lang->line('column_order_id'); ?></a></th>
				<th style="width: 20.6%;"><a id="store_sale_id" onclick="sort(<?php echo $this->lang->line('column_store_order_id'); ?>)"><?php echo $this->lang->line('column_store_order_id'); ?></th>
			    <th style="width: 20.6%;"><a id="tracking" onclick="sort(<?php echo $this->lang->line('column_tracking'); ?>)"><?php echo $this->lang->line('column_tracking'); ?></th>
			    <th style="width: 16.6%;"><a id="name" onclick="sort(<?php echo $this->lang->line('column_customer'); ?>)"><?php echo $this->lang->line('column_customer'); ?></th>
			    <th style="width: 16.6%;"><a id="date_added" onclick="sort(<?php echo $this->lang->line('column_date_added'); ?>)"><?php echo $this->lang->line('column_date_added'); ?></th>
		    </thead>
		    <tbody>
		    </tbody>			  
		    <tfoot>
			  <tr>
			    <th class="filter-td"><input type="text" class="filter-input" name="id" placeholder="<?php echo $this->lang->line('column_order_id'); ?>" value="" /></th>
			    <th class="filter-td"><input type="text" class="filter-input" name="store_sale_id" placeholder="<?php echo $this->lang->line('column_store_order_id'); ?>" value="" /></th>
			    <th class="filter-td"><input type="text" class="filter-input" name="tracking" placeholder="<?php echo $this->lang->line('column_tracking'); ?>" value="" /></th>
			    <th class="filter-td"><input type="text" class="filter-input" name="customer" placeholder="<?php echo $this->lang->line('column_customer'); ?>" value="" /></th>
			    <th class="filter-td"><input type="text" class="filter-input" name="date_added" placeholder="<?php echo $this->lang->line('column_date_added'); ?>" value="" /></th>
			  </tr>
		    </tfoot>
		  </table>
	    </div>
	    <div class="pagination-block">
		  <div class="pull-left"></div>
		  <div class="pull-right"></div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	$('.btn-search').click(function() {
		if($("input[name='search_client']").val() != '' || $("input[name='search_date_from']").val() != '' || $("input[name='search_date_to']").val() != '')
		{
			$("#search_results tfoot input").val('');
			$('tbody').empty();
			
			search_client 		= $("input[name='search_client']").attr('value');
			search_date_from	= $("input[name='search_date_from']").val();
			search_date_to	= $("input[name='search_date_to']").val();
					
			data = new FormData();
			
			if(search_client)
			{
				data.append('search_client', search_client);
			}			
			if(search_date_from)
			{
				data.append('search_date_from', search_date_from);
			}			
			if(search_date_to)
			{
				data.append('search_date_to', search_date_to);
			}
			
			$.ajax({
				url: '<?php echo base_url(); ?>report/sale/order/get_sales',
				type: 'post',
				data: data,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				success: function(json) {
					if(json.success)
					{
						$('tbody').empty();
						$.each(json.sales, function(index, sale) {
							new_tr = $('<tr></tr>');
						
							html  = '<td>' + sale.id + '</td>';
							html += '<td>' + sale.store_sale_id + '</div></td>';
							html += '<td>' + sale.tracking + '</div></td>';
							html += '<td>' + sale.customer + '</td>';
							html += '<td>' + sale.date_added + '</td>';
							
							new_tr.html(html);
							$("#search_results").append(new_tr);
						});
						$('div.pull-left').html(json.results);
						$('div.pull-right').html(json.pagination);
					}
				}
			});
		}
		else
		{
			alert('<?php echo $this->lang->line('text_confirm_delete'); ?>');
		}
	});
	
	//sort
	$('thead a').click(function() {
		if($("input[name='search_client']").val() != '' || $("input[name='search_date_from']").val() != '' || $("input[name='search_date_to']").val() != '')
		{
			search_client 		= $("input[name='search_client']").attr('value');
			search_date_from	= $("input[name='search_date_from']").val();
			search_date_to	    = $("input[name='search_date_to']").val();
			sort_data			= $(this).attr('id');

			if($(this).parent().attr('class') == 'sorting_asc')
			{
				order= 'DESC';
				$(this).parent().attr("class", "sorting_desc");
			}
			else if($(this).parent().attr('class') == 'sorting_desc')
			{
				order= 'ASC';
				$(this).parent().attr("class", "sorting_asc");
			}
			else
			{
				if($("#search_results thead th.sorting_desc").length == 1)
				{
					$("#search_results thead th.sorting_desc").removeAttr("class");
				}
				else if($("#search_results thead th.sorting_asc").length == 1)
				{
					$("#search_results thead th.sorting_asc").removeAttr("class");
				}
						
				order= 'ASC';
				$(this).parent().attr("class", "sorting_asc");
			}
					
			data = new FormData();
			
			if(search_client)
			{
				data.append('search_client', search_client);
			}			
			if(search_date_from)
			{
				data.append('search_date_from', search_date_from);
			}			
			if(search_date_to)
			{
				data.append('search_date_to', search_date_to);
			}
			if(sort_data)
			{
				data.append('sort_data', sort_data);
			}
			if(order)
			{
				data.append('order', order);
			}
			
			
			$.ajax({
				url: '<?php echo base_url(); ?>report/sale/order/get_sales',
				type: 'post',
				data: data,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				success: function(json) {
					if(json.success)
					{
						$('tbody').empty();
						$.each(json.sales, function(index, sale) {
							new_tr = $('<tr></tr>');
						
							html  = '<td>' + sale.id + '</td>';
							html += '<td>' + sale.store_sale_id + '</div></td>';
							html += '<td>' + sale.tracking + '</div></td>';
							html += '<td>' + sale.customer + '</td>';
							html += '<td>' + sale.date_added + '</td>';
							
							new_tr.html(html);
							$("#search_results").append(new_tr);
						});
					}
				}
			});
		}
	});
	
	//auto complate
	$("input[name='search_client']").autocomplete({  
		'source': function(request, response) {
			name = $("input[name='search_client']").val();
					
			data = new FormData();
			data.append('name', name);
			
			$.ajax({
				url: '<?php echo base_url(); ?>report/sale/order/get_id_from_name',
				type: 'post',
				data: data,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				success: function(json) {
					if(json.success)
					{
						response($.map(json.names, function(name) {					
							return {
								label:	name['client_name'],
								id: 			name['id']
							}
						}));
					}
				}
			});
		},
		'select': function(event, ui) {
			names = ui.item;
			
			$(this).val(names.label);
			$(this).attr('value', names.id);
			
			return false;
		}
	});
	
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			if($("input[name='search_client']").val() != '' || $("input[name='search_date_from']").val() != '' || $("input[name='search_date_to']").val() != '')
			{
				search_client 		= $("input[name='search_client']").attr('value');
				search_date_from	= $("input[name='search_date_from']").val();
				search_date_to	    = $("input[name='search_date_to']").val();
			
				id = $("input[name='id']").val();
				store_sale_id = $("input[name='store_sale_id']").val();
				tracking = $("input[name='tracking']").val();
				customer = $("input[name='customer']").val();
				date_added = $("input[name='date_added']").val();
				
				var filter_data = {};
				filter_data['id'] = id;
				filter_data['store_sale_id'] = store_sale_id;
				filter_data['tracking'] = tracking;
				filter_data['customer'] = customer;
				filter_data['date_added'] = date_added;
				
				data = new FormData();
				
				if(search_client)
				{
					data.append('search_client', search_client);
				}			
				if(search_date_from)
				{
					data.append('search_date_from', search_date_from);
				}			
				if(search_date_to)
				{
					data.append('search_date_to', search_date_to);
				}
				if(filter_data)
				{
					data.append('filter_data', JSON.stringify(filter_data));
				}
				
				$.ajax({
					url: '<?php echo base_url(); ?>report/sale/order/get_sales',
					type: 'post',
					data: data,
					cache: false,
					contentType: false,
					processData: false,
					dataType: "json",
					success: function(json) {
						if(json.success)
						{
							$('tbody').empty();
							$.each(json.sales, function(index, sale) {
								new_tr = $('<tr></tr>');
							
								html  = '<td>' + sale.id + '</td>';
								html += '<td>' + sale.store_sale_id + '</div></td>';
								html += '<td>' + sale.tracking + '</div></td>';
								html += '<td>' + sale.customer + '</td>';
								html += '<td>' + sale.date_added + '</td>';
								
								new_tr.html(html);
								$("#search_results").append(new_tr);
							});
							
							$('div.pull-left').html(json.results);
							$('div.pull-right').html(json.pagination);
						}
					}
				});
			}
		}
	});
});
</script>
<script>
function goPage($page)
{
	search_client 		= $("input[name='search_client']").attr('value');
	search_date_from	= $("input[name='search_date_from']").val();
	search_date_to	    = $("input[name='search_date_to']").val();
	
	start = ($page - 1) * 10;
	
	var filter_data = {};
	filter_data['id'] = id;
	filter_data['store_sale_id'] = store_sale_id;
	filter_data['tracking'] = tracking;
	filter_data['customer'] = customer;
	filter_data['date_added'] = date_added;
			
	data = new FormData();
	
	if(search_client)
	{
		data.append('search_client', search_client);
	}			
	if(search_date_from)
	{
		data.append('search_date_from', search_date_from);
	}			
	if(search_date_to)
	{
		data.append('search_date_to', search_date_to);
	}
	if(start)
	{
		data.append('start', start);
	}
	if(filter_data)
	{
		data.append('filter_data', JSON.stringify(filter_data));
	}
	
	$.ajax({
		url: '<?php echo base_url(); ?>report/sale/order/get_sales',
		type: 'post',
		data: data,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(json) {
			if(json.success)
			{
				$('tbody').empty();
				$.each(json.sales, function(index, sale) {
					new_tr = $('<tr></tr>');
				
					html  = '<td>' + sale.id + '</td>';
					html += '<td>' + sale.store_sale_id + '</div></td>';
					html += '<td>' + sale.tracking + '</div></td>';
					html += '<td>' + sale.name + '</td>';
					html += '<td>' + sale.date_added + '</td>';
					
					new_tr.html(html);
					$("#search_results").append(new_tr);
				});
				
				$('div.pull-left').html(json.results);
				$('div.pull-right').html(json.pagination);
			}
		}
	});
	
}
</script>
<script>
$(document).ready(function() {
	
	//date picker
	$("input[name='search_date_from']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});	
	$("input[name='search_date_to']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
});
</script>
<script>
function to_excel() 
{
	if($('#search_results tbody tr').length > 0)
	{
		search_client 		= $("input[name='search_client']").attr('value');
		search_date_from	= $("input[name='search_date_from']").val();
		search_date_to	    = $("input[name='search_date_to']").val();

		id = $("input[name='id']").val();
		store_sale_id = $("input[name='store_sale_id']").val();
		tracking = $("input[name='tracking']").val();
		customer = $("input[name='customer']").val();
		date_added = $("input[name='date_added']").val();
		
		var filter_data = {};
		filter_data['id'] = id;
		filter_data['store_sale_id'] = store_sale_id;
		filter_data['tracking'] = tracking;
		filter_data['customer'] = customer;
		filter_data['date_added'] = date_added;
		
		data = new FormData();
		
		if(search_client)
		{
			data.append('search_client', search_client);
		}			
		if(search_date_from)
		{
			data.append('search_date_from', search_date_from);
		}			
		if(search_date_to)
		{
			data.append('search_date_to', search_date_to);
		}
		if(filter_data)
		{
			data.append('filter_data', JSON.stringify(filter_data));
		}
		
		$.ajax({
			url: '<?php echo base_url(); ?>report/sale/order/export_excel',

			type: 'post',
			data: data,
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			beforeSend: function() {
				$('.btn-download').html('<i class="fa fa-spinner fa-spin"></i>');
			},
			complete: function() {
				$('.btn-download').html('<i class="fa fa-download"></i>');
			},
			success: function(json) {					
				if(json.success) 
				{	
					window.location = json.link;
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>