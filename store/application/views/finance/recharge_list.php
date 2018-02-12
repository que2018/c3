<link href="<?php echo base_url(); ?>assets/css/app/finance/recharge_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line("text_title"); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line("text_home"); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line("text_finance"); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line("text_recharge"); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>finance/recharge/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>"  class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line("text_recharge_list_description"); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'client.name') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line("column_client"); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'recharge.payment') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_payment; ?>"><?php echo $this->lang->line('column_payment_method'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_payment; ?>"><?php echo $this->lang->line('column_payment_method'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'recharge.amount') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'recharge.status') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'recharge.date_added') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } ?>
				<th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($recharges) { ?>
				  <?php foreach($recharges as $recharge) { ?>
					<tr>
					  <td><?php echo $recharge['client']; ?></td>
					  <td><?php echo $recharge['payment_method']; ?></td>
					  <td><?php echo $recharge['amount']; ?></td>
					  <td><?php echo $recharge['status']; ?></td>
					  <td><?php echo $recharge['date_added']; ?></td>
					  <td>
					    <center>
						  <a href="<?php echo base_url(); ?>finance/recharge/edit?id=<?php echo $recharge['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						  <button class="btn btn-danger btn-delete" data="<?php echo $recharge['id']; ?>"><i class="fa fa-trash"></i></button>
					    </center>
					  </td>
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_client'); ?>" value="<?php echo $filter_client; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="method" placeholder="<?php echo $this->lang->line('column_payment_method'); ?>" value="<?php echo $filter_payment_method; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="amount" placeholder="<?php echo $this->lang->line('column_amount'); ?>" value="<?php echo $filter_amount; ?>" /></th>
				  <th class="filter-td">
				    <select class="filter-select" name="status" onchange="javascript:location.href = this.value;">
					  <?php if($filter_status == 1) { ?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 2) {?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2" selected><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $filter_url; ?>"></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=1"><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="<?php echo $filter_url; ?>&filter_status=2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } ?>
					</select>
				  </th>
				  <th class="filter-td"><input type="text" class="filter-input" name="date" placeholder="<?php echo $this->lang->line('column_date_added'); ?>" value="<?php echo $filter_date_added; ?>" /></th>
                  <th></th>
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
			name     = $('input[name=\'name\']').val();
			method   = $('input[name=\'method\']').val();
			amount   = $('input[name=\'amount\']').val();
			date     = $('input[name=\'date\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_client=' + name;
		
			if(method)
				url += '&filter_payment_method=' + method;			
			
			if(amount)
				url += '&filter_amount=' + amount;
			
			if(date)
				url += '&filter_date_added=' + date;
			
			window.location.href = url;
		}
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
		
		