<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/finance/recharge_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line("text_title"); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_finance'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_recharge'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_recharge_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'payment') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_payment; ?>"><?php echo $this->lang->line('column_payment_method'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
					<a href="<?php echo $sort_payment; ?>"><?php echo $this->lang->line('column_payment_method'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'amount') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
					<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
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
			  </thead>
			  <tbody>
				<?php if($recharges) { ?>
				  <?php foreach($recharges as $recharge) { ?>
					<tr>
					  <td><?php echo $recharge['payment_method']; ?></td>
					  <td><?php echo $recharge['amount']; ?></td>
					  <td><?php echo $recharge['status']; ?></td>
					  <td><?php echo $recharge['date_added']; ?></td>
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="method" placeholder="<?php echo $this->lang->line('column_payment_method'); ?>" value="<?php echo $filter_payment_method; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="amount" placeholder="<?php echo $this->lang->line('column_amount'); ?>" value="<?php echo $filter_amount; ?>" /></th>
				  <th class="filter-td">
				    <select class="filter-select" name="status" onchange="javascript:location.href = this.value;">
					  <?php if($filter_status == 1) { ?>
					  <option value=""></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 2) {?>
					  <option value=""></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2" selected><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else { ?>
					  <option value=""></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } ?>
					</select>
				  </th>
				  <th class="filter-td"><input type="text" class="filter-input" name="date" placeholder="<?php echo $this->lang->line('column_date_added'); ?>" value="<?php echo $filter_date_added; ?>" /></th>
				</tr>
			  </tfoot>
		    </table>
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
			method    = $('input[name=\'method\']').val();
			amount    = $('input[name=\'amount\']').val();
			status    = $('select[name=\'status\']').val();
			date      = $('input[name=\'date\']').val();

			url = '<?php echo $filter_url; ?>';
		
			if(method)
				url += '&filter_payment_method=' + method;			
			
			if(amount)
				url += '&filter_amount=' + amount;
			
			if(status)
				url += '&filter_status=' + status;
			
			if(date)
				url += '&filter_date_added=' + date;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
$(document).ready(function() {
	//filter
	$("select[name='status']").change(function()
	{
		status = $("select[name='status']").val();
		url = '<?php echo $filter_url; ?>';

		url += '&filter_status=' + status;
		window.location.href = url;
    });
});
</script>
<script>
$(document).ready(function() {
	$('.btn-delete').click(function() {
		handler = $(this);
		id = $(this).attr('data');
		
		$.ajax({
			url: '<?php echo base_url(); ?>finance/recharge/delete?id=' + id,
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
$(document).ready(function() {	
	//date picker
	$("input[name='date']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
});
</script>
		
		