<link href="<?php echo base_url(); ?>assets/css/app/finance/recharge_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_recharge'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_finance'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_recharge'); ?></strong></li>
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
	      <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_client'); ?></label>
			      <div class="col-sm-9">
				    <select name="client_id" class="form-control">
				      <?php if($clients) { ?>
					    <option value=""></option>
					    <?php foreach($clients as $client) { ?>
					      <?php if($client['client_id'] == $filter_client_id) { ?>
						  <option value="<?php echo $client['client_id']; ?>" selected><?php echo $client['name']; ?></option>
						  <?php } else { ?>
						  <option value="<?php echo $client['client_id']; ?>"><?php echo $client['name']; ?></option>
						  <?php } ?>
					    <?php } ?>
					  <?php } ?>
				    </select>
				  </div>
				</div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_method'); ?></label>
			      <div class="col-sm-9">
				    <select name="client_id" class="form-control">
				      <?php if($payment_methods) { ?>
					    <option value=""></option>
					    <?php foreach($payment_methods as $payment_method) { ?>
					      <?php if($payment_method['code'] == $filter_payment_method) { ?>
						  <option value="<?php echo $payment_method['code']; ?>" selected><?php echo $payment_method['name']; ?></option>
						  <?php } else { ?>
						  <option value="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['name']; ?></option>
						  <?php } ?>
					    <?php } ?>
					  <?php } ?>
				    </select>
				  </div>
			    </div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_status'); ?></label>
			      <div class="col-sm-9">
				    <select name="status" class="form-control">
					  <option value=""></option>
				      <?php if($filter_status == 1) { ?>
					  <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 1) { ?>
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
                <button id="btn-search" class="btn btn-success" onclick="filter()"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
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
					  <td>
						<?php if($recharge['status'] == 1) { ?>
						<span class="pending"><?php echo $this->lang->line('text_pending'); ?></span></td>
						<?php } else { ?>
						<span class="completed"><?php echo $this->lang->line('text_completed'); ?></span></td>
						<?php } ?>
					  </td>
					  <td><?php echo $recharge['date_added']; ?></td>
					  <td>
					    <center>
						  <a href="<?php echo base_url(); ?>finance/recharge/edit?recharge_id=<?php echo $recharge['recharge_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						  <button class="btn btn-danger btn-delete" onclick="delete_recharge(this, <?php echo $recharge['recharge_id']; ?>)"><i class="fa fa-trash"></i></button>
					    </center>
					  </td>
					</tr>
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
<script>
function delete_recharge(handle, recharge_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>finance/recharge/delete?recharge_id=' + recharge_id,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			success: function(json) {					
				if(json.success) {
					$.ajax({
						url: '<?php echo $reload; ?>',
						dataType: 'html',
						success: function(html) {					
							$('.ibox-content').html(html);
						},
					});
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>
<script>
function filter() {
	client_id       = $('select[name=\'client_id\']').val();
	payment_method  = $('select[name=\'payment_method\']').val();
	status          = $('select[name=\'status\']').val();

	url = '<?php echo $filter_url; ?>';

	if(client_id)
		url += '&filter_client_id=' + client_id;

	if(payment_method)
		url += '&filter_payment_method=' + payment_method;
	
	if(status)
		url += '&filter_status=' + status;
	
	window.location.href = url;
}
</script>
<script>
$(document).ready(function() {
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('#btn-search').trigger('click');
		}
	});
});
</script>








