<link href="<?php echo base_url(); ?>assets/css/app/setting/activity_log_history.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_activity_log'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/activity_log"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/activity_log"><?php echo $this->lang->line('text_log'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_activity_log'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>setting/activity_Log/clear" class="btn btn-danger btn-clear"><i class="fa fa-trash"></i></a>
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
		  <h5><?php echo $this->lang->line('text_activity_log_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover">
			  <thead>
				<?php if($sort == 'activity_log.user') { ?>
				<th style="width: 16%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_user; ?>"><?php echo $this->lang->line('column_user'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16%;" class="sorting">
				  <a href="<?php echo $sort_user; ?>"><?php echo $this->lang->line('column_user'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'activity_log.ip_address') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_ip_address; ?>"><?php echo $this->lang->line('column_ip_address'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
				  <a href="<?php echo $sort_ip_address; ?>"><?php echo $this->lang->line('column_ip_address'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'activity_log.description') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_description; ?>"><?php echo $this->lang->line('column_description'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
				  <a href="<?php echo $sort_description; ?>"><?php echo $this->lang->line('column_description'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'activity_log.method') { ?>
				<th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_method; ?>"><?php echo $this->lang->line('column_method'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 15%;" class="sorting">
				  <a href="<?php echo $sort_method; ?>"><?php echo $this->lang->line('column_method'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'activity_log.date_added') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
				  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } ?>
			  </thead>
			  <tbody>
				<?php if($activity_logs) { ?>
				  <?php foreach($activity_logs as $activity_log) { ?>
					<tr>
					  <td><?php echo $activity_log['user']; ?></td>
					  <td><?php echo $activity_log['ip_address']; ?></td>
					  <td><?php echo $activity_log['description']; ?></td>
					  <td><?php echo $activity_log['method']; ?></td>
					  <td><?php echo $activity_log['date_added']; ?></td>			
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="user" placeholder="<?php echo $this->lang->line('column_user'); ?>" value="<?php echo $filter_user; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="ip_address" placeholder="<?php echo $this->lang->line('column_ip_address'); ?>" value="<?php echo $filter_ip_address; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="description" placeholder="<?php echo $this->lang->line('column_description'); ?>" value="<?php echo $filter_description; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="method" placeholder="<?php echo $this->lang->line('column_method'); ?>" value="<?php echo $filter_method; ?>" /></th> 
				  <th class="filter-td"><input type="text" class="filter-input" name="date_added" placeholder="<?php echo $this->lang->line('column_date_added'); ?>" value="<?php echo $filter_date_added; ?>" /></th>
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
			user         = $('input[name=\'user\']').val();
			ip_address   = $('input[name=\'ip_address\']').val();
			description  = $('input[name=\'description\']').val();
			method       = $('input[name=\'method\']').val();
			date_added   = $('input[name=\'date_added\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(user)
				url += '&filter_user=' + user;
		
			if(ip_address)
				url += '&filter_ip_address=' + ip_address;
			
			if(description)
				url += '&filter_description=' + description;
			
			if(method)
				url += '&filter_method=' + method;
			
			if(date_added)
				url += '&filter_date_added=' + date_added;
			
			window.location.href = url;
		}
	});
});
</script>


		