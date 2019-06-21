<div class="form-horizontal">
  <div class="row">
	<div class="col-md-3">
	  <div class="form-group">
		<label class="col-sm-3 control-label"><?php echo $this->lang->line("text_client"); ?></label>
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
  <table class="table table-striped table-bordered table-hover table-transaction">
    <thead>
	  <?php if($sort == 'client.name') { ?>
	  <th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
	    <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
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


