<?php echo $header; ?> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_transaction'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_finance'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_transaction'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/export/transaction.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download'); ?>" class="btn btn-success btn-download" download><i class="fa fa-download"></i></a>
    <a href="<?php echo base_url(); ?>finance/transaction/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_transaction_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		  <div class="row">
		    <div class="col-md-2">
			  <div class="form-group">
			    <div class="col-sm-12">
				  <select name="client_id" class="form-control">
				    <?php if($clients) { ?>
					  <option value=""><?php echo $this->lang->line("text_client"); ?></option>
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
			<div class="col-md-2">
			  <div class="form-group">
			    <div class="col-sm-12">
				  <input name="date_from" class="form-control" value="<?php echo $filter_date_from; ?>" placeholder="<?php echo $this->lang->line('text_date_from'); ?>">
				</div>
			  </div>
			</div>
			<div class="col-md-2">
			  <div class="form-group">
			    <div class="col-sm-12">
				  <input name="date_to" class="form-control" value="<?php echo $filter_date_to; ?>" placeholder="<?php echo $this->lang->line('text_date_from'); ?>">
				</div>
			  </div>
			</div>
		  </div>
		  </div>
		  <div id="table-content">

		    <div class="table-responsive">
		      <table class="table table-striped table-bordered table-hover table-transaction">
			    <thead>
				  <?php if($sort == 'client.name') { ?>
				  <th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
			        <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line("column_client"); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 16%;" class="sorting">
				    <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'transaction.cost') { ?>
				  <th style="width: 5%;" class="sorting_<?php echo strtolower($order); ?>">
				    <a href="<?php echo $sort_cost; ?>"><?php echo $this->lang->line('column_cost'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 5%;" class="sorting">
				    <a href="<?php echo $sort_cost; ?>"><?php echo $this->lang->line('column_cost'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'transaction.markup') { ?>
				  <th style="width: 5%;" class="sorting_<?php echo strtolower($order); ?>">
				    <a href="<?php echo $sort_markup; ?>"><?php echo $this->lang->line('column_markup'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 5%;" class="sorting">
				    <a href="<?php echo $sort_markup; ?>"><?php echo $this->lang->line('column_markup'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'transaction.amount') { ?>
				  <th style="width: 5%;" class="sorting_<?php echo strtolower($order); ?>">
				    <a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 5%;" class="sorting">
				    <a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'transaction.comment') { ?>
				  <th style="width: 30%;" class="sorting_<?php echo strtolower($order); ?>">
				    <a href="<?php echo $sort_comment; ?>"><?php echo $this->lang->line('column_comment'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 30%;" class="sorting">
				    <a href="<?php echo $sort_comment; ?>"><?php echo $this->lang->line('column_comment'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'transaction.date_added') { ?>
				  <th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
				    <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 15%;" class="sorting">
				    <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				  </th>
				  <?php } ?>
				  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			    </thead>
			    <tbody>
				  <?php if($transactions) { ?>
				    <?php foreach($transactions as $transaction) { ?>
					  <tr>
					    <td><?php echo $transaction['client']; ?></td>
					    <td><?php echo $transaction['cost']; ?></td>
					    <td><?php echo $transaction['markup']; ?></td>
					    <td><?php echo $transaction['amount']; ?></td>
					    <td><?php echo $transaction['comment']; ?></td>
					    <td><?php echo $transaction['date_added']; ?></td>
					    <td>
					      <center>
						    <a href="<?php echo base_url(); ?>finance/transaction/edit?transaction_id=<?php echo $transaction['transaction_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						    <button class="btn btn-danger btn-delete" onclick="delete_transaction(this, <?php echo $transaction['transaction_id']; ?>)"><i class="fa fa-trash"></i></button>
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
</div>
<script>
function delete_transaction(handle, transaction_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>finance/transaction/delete?transaction_id=' + transaction_id,
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
						url: '<?php echo $reload_url; ?>',
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
$(document).ready(function() {
	$(document).on('change', 'select[name=\'client_id\']', function () {
		filter_transaction();
	});
	
	$(document).on('change', 'input[name=\'date_from\']', function () {
		filter_transaction();
	});
	
	$(document).on('change', 'input[name=\'date_to\']', function () {
		filter_transaction();
	});
});
</script>
<script>
function filter_transaction() {	
	client_id   = $('select[name=\'client_id\']').val();
	date_from   = $('input[name=\'date_from\']').val();
	date_to     = $('input[name=\'date_to\']').val();
	
	url = '<?php echo $filter_url; ?>';

	if(client_id)
		url += '&filter_client_id=' + client_id;
	
	if(date_from)
		url += '&filter_date_from=' + date_from;
	
	if(date_to)
		url += '&filter_date_to=' + date_to;
		
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
	$("input[name='date_from']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
	
	$("input[name='date_to']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
});
</script>
<?php echo $footer; ?>