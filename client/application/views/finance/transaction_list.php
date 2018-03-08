<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/finance/transaction_list.css" rel="stylesheet"> 
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
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line("text_transaction_list_description"); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		  <div class="row">
			<div class="col-md-3">
			  <div class="form-group">
			    <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_date_from'); ?></label>
			    <div class="col-sm-9"><input name="date_from" class="form-control" value="<?php echo $filter_date_from; ?>"></div>
			  </div>
			</div>
			<div class="col-md-3">
			  <div class="form-group">
			    <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_date_to'); ?></label>
			    <div class="col-sm-9"><input name="date_to" class="form-control" value="<?php echo $filter_date_to; ?>"></div>
			  </div>
			</div>
			<div class="col-md-3">
              <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			</div>
		  </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'transaction.cost') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_cost; ?>"><?php echo $this->lang->line('column_cost'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_cost; ?>"><?php echo $this->lang->line('column_cost'); ?></a>
				</th>
				<?php } ?>
				
				<?php if($sort == 'transaction.markup') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_markup; ?>"><?php echo $this->lang->line('column_markup'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_markup; ?>"><?php echo $this->lang->line('column_markup'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'transaction.amount') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line('column_amount'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'transaction.comment') { ?>
				<th style="width: 36%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_comment; ?>"><?php echo $this->lang->line('column_comment'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 36%;" class="sorting">
				  <a href="<?php echo $sort_comment; ?>"><?php echo $this->lang->line('column_comment'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'transaction.date_added') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } ?>
			  </thead>
			  <tbody>
				<?php if($transactions) { ?>
				  <?php foreach($transactions as $transaction) { ?>
					<tr>
					  <td><?php echo $transaction['cost']; ?></td>
					  <td><?php echo $transaction['markup']; ?></td>
					  <td><?php echo $transaction['amount']; ?></td>
					  <td><?php echo $transaction['comment']; ?></td>
					  <td><?php echo $transaction['date_added']; ?></td>
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="cost" placeholder="<?php echo $this->lang->line('column_cost'); ?>" value="<?php echo $filter_cost; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="markup" placeholder="<?php echo $this->lang->line('column_markup'); ?>" value="<?php echo $filter_markup; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="amount" placeholder="<?php echo $this->lang->line('column_amount'); ?>" value="<?php echo $filter_amount; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="comment" placeholder="<?php echo $this->lang->line('column_comment'); ?>" value="<?php echo $filter_comment; ?>" /></th>
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
	$('#btn-search').click(function() {
		cost        = $('input[name=\'cost\']').val();
		markup      = $('input[name=\'markup\']').val();
		amount      = $('input[name=\'amount\']').val();
		comment     = $('input[name=\'comment\']').val();
		date_from   = $('input[name=\'date_from\']').val();
		date_to     = $('input[name=\'date_to\']').val();

		url = '<?php echo $filter_url; ?>';
	
		if(cost)
			url += '&filter_cost=' + cost;	
		
		if(markup)
			url += '&filter_markup=' + markup;	
	
		if(amount)
			url += '&filter_amount=' + amount;	
		
		if(comment)
			url += '&filter_comment=' + comment;	
	
		if(date_from)
			url += '&filter_date_from=' + date_from;
		
		if(date_to)
			url += '&filter_date_to=' + date_to;
			
		window.location.href = url;
	});
	
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('#btn-search').trigger('click');
		}
	});
});
</script>
<script>
$(document).ready(function() {
	//date picker
	$("input[name='date_added']").datetimepicker({
		pickTime: false,
		format: 'YYYY-MM-DD'
	});
	
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