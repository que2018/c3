<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/check/checkin_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkin"><?php echo $this->lang->line('text_checkin'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkin_list'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>check/checkin/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
	</div>
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
		  <h5><?php echo $this->lang->line('text_checkin_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <tr>
				  <?php if($sort == 'id') { ?>
				  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkin_id'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_id; ?>"><?php echo $this->lang->line('column_checkin_id'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'tracking') { ?>
				  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_tracking; ?>"><?php echo $this->lang->line('column_tracking'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'status') { ?>
				  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'date_added') { ?>
				  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				  </th>
				  <?php } ?>
				  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			    </tr>
			  </thead>
			  <tbody>
			    <?php if($checkins) { ?>
				  <?php foreach($checkins as $checkin) { ?>
					<tr>
					  <td>#<?php echo $checkin['id']; ?></td>
					  <td><?php echo $checkin['tracking']; ?></td>
					  <td>
					    <?php if($checkin['status'] == 1) { ?>
						  <?php echo $this->lang->line('text_pending'); ?>
						<?php } else { ?>
			              <?php echo $this->lang->line('text_completed'); ?>
						<?php } ?>
					  </td>
					  <td><?php echo $checkin['date_added']; ?></td>
					  <td>
					    <center>
						  <?php if($checkin['status'] == 1) { ?>
						    <a href="<?php echo base_url(); ?>check/checkin/edit?id=<?php echo $checkin['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						    <button class="btn btn-danger btn-delete" data="<?php echo $checkin['id']; ?>"><i class="fa fa-trash"></i></button>
						  <?php } else { ?>
			                <a href="<?php echo base_url(); ?>check/checkin/view?id=<?php echo $checkin['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-eye"></i></a>
						  <?php } ?>
					    </center>
					  </td>
					</tr>
				  <?php } ?>
			    <?php } ?>
			  </tbody>
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="id" placeholder="<?php echo $this->lang->line('column_checkin_id'); ?>" value="<?php echo $filter_id; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="tracking" placeholder="<?php echo $this->lang->line('column_tracking'); ?>" value="<?php echo $filter_tracking; ?>" /></th>
				  <th>
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
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			id          = $('input[name=\'id\']').val();
			tracking    = $('input[name=\'tracking\']').val();
			date_added  = $('input[name=\'date_added\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(id)
				url += '&filter_id=' + id;
		
			if(tracking)
				url += '&filter_tracking=' + tracking;
			
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
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			checkin_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>check/checkin/delete?checkin_id=' + checkin_id,
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
		}
	});
});
</script>
		
		