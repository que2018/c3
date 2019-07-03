<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/product"><?php echo $this->lang->line('text_finance'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_balance'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_balance_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover table-balance" >
			  <thead>
				<?php if($sort == 'name') { ?>
				<th style="width: 50%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line("column_client"); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 50%;" class="sorting">
					<a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line("column_client"); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'balance.amount') { ?>
				<th style="width: 50%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line("column_amount"); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 50%;" class="sorting">
					<a href="<?php echo $sort_amount; ?>"><?php echo $this->lang->line("column_amount"); ?></a>
				</th>
				<?php } ?>
			  </thead>
			  <tbody>
				<?php if($balances) { ?>
				  <?php foreach($balances as $balance) { ?>
					<tr>
					  <td><?php echo $balance['name']; ?></td>
					  <td><?php echo $balance['amount']; ?></td>		
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line("column_client"); ?>" value="<?php echo $filter_client; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="amount" placeholder="<?php echo $this->lang->line("column_amount"); ?>" value="<?php echo $filter_amount; ?>" /></th>
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
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			name   = $('input[name=\'name\']').val();
			amount = $('input[name=\'amount\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_client=' + name;
		
			if(amount)
				url += '&filter_amount=' + amount;
			
			window.location.href = url;
		}
	});
});
</script>
<?php echo $footer; ?>
		
		