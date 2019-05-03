<?php echo $header; ?>
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
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_checkin_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				     <input name="id" class="form-control" value="<?php echo $filter_id; ?>" placeholder="<?php echo $this->lang->line('entry_checkin_id'); ?>">
				  </div>
				</div>
			  </div>
			  <div class="col-md-2">
				<div class="form-group">
				  <div class="col-sm-12">
				    <input name="tracking" class="form-control" value="<?php echo $filter_tracking; ?>" placeholder="<?php echo $this->lang->line('entry_tracking'); ?>">
				  </div>
				</div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <div class="col-sm-12">
				    <select name="status" class="form-control">
					  <option value=""><?php echo $this->lang->line('entry_status'); ?></option>
					  <?php if($filter_status == 1) { ?>
					  <option value="1" selected><?php echo $this->lang->line('text_pending'); ?></option>
					  <option value="2"><?php echo $this->lang->line('text_completed'); ?></option>
					  <?php } else if($filter_status == 2) { ?>
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
			    <div class="form-group">
			      <div class="col-sm-12">
				    <input name="date_added" class="form-control" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $this->lang->line('entry_date_added'); ?>">
				  </div>
			    </div>
			  </div>
			  <div class="col-md-2">
                <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <div id="detail" style="display:none;"></div>
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
				  <?php $offset = 0; ?>
				  <?php foreach($checkins as $checkin) { ?>
					<tr>
					  <td>
					    <span>#<?php echo $checkin['checkin_id']; ?></span>
					    <div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 24%;"><?php echo $this->lang->line('column_name'); ?></th>
							  <th style="width: 24%;"><?php echo $this->lang->line('column_loc'); ?></th>
					          <th style="width: 24%;"><?php echo $this->lang->line('column_batch'); ?></th>
				              <th style="width: 18%;"><?php echo $this->lang->line('column_qty'); ?></th>
							</thead>
							<tbody>
							  <?php foreach($checkin['checkin_products'] as $checkin_product) { ?>
							  <tr>
							    <td><?php echo $checkin_product['name']; ?></td>
								<td><?php echo $checkin_product['location']; ?></td>
								<td><?php echo $checkin_product['batch']; ?></td>
								<td><?php echo $checkin_product['quantity']; ?></td>
							  </tr>
							  <?php } ?>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td>
					    <?php if($checkin['tracking']) { ?>
						  <span class="tracking"><?php echo $checkin['tracking']; ?></span></td>
						<?php } ?>
					  </td>
					  <?php if($checkin['status'] == 1) { ?>
					  <td>
					    <div class="input-group">
						  <span class="pending"><?php echo $this->lang->line('text_pending'); ?></span>				        
						  <span class="btn-checkin" onclick="change_checkin_status(this, <?php echo $checkin['checkin_id']; ?>)"><i class="fa fa-refresh"></i></span>
						</div>
					  </td>
					  <?php } else { ?>
					  <td>
					    <div class="input-group">
						  <span class="completed"><?php echo $this->lang->line('text_completed'); ?></span>				        
						  <span class="btn-checkin" onclick="change_checkin_status(this, <?php echo $checkin['checkin_id']; ?>)"><i class="fa fa-refresh"></i></span>
						</div>
					  </td>
					  <?php } ?>
					  <td><?php echo $checkin['date_added']; ?></td>
					  <td class="text-center">
						<a href="<?php echo base_url(); ?>check/checkin/edit?checkin_id=<?php echo $checkin['checkin_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_checkin(this, <?php echo $checkin['checkin_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>
					</tr>
					<?php $offset++; ?>
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
function change_checkin_status(handle, checkin_id) {
	$.ajax({
		url: '<?php echo base_url(); ?>check/checkin_ajax/change_status?checkin_id=' + checkin_id,
		cache: false,
		contentType: false,
		processData: false,
		dataType: 'json',
		beforeSend: function() {
			$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		success: function(json) {
			if(json.success) {
				label = $(handle).closest('.input-group').find('span').eq(0);
				
				label.removeClass();
				
				if(json.status == 1) {
					label.addClass('pending');
					label.text('<?php echo $this->lang->line('text_pending'); ?>');
				} else {
					label.addClass('completed');
					label.text('<?php echo $this->lang->line('text_completed'); ?>');
				}
				
				$(handle).html('<i class="fa fa fa-refresh"></i>');
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function delete_checkin(handle, checkin_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>check/checkin/delete?checkin_id=' + checkin_id,
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
	//filter
	$(document).on('click', '#btn-search', function() {
		id          = $('input[name=\'id\']').val();
		tracking    = $('input[name=\'tracking\']').val();
		status      = $('select[name=\'status\']').val();
		date_added  = $('input[name=\'date_added\']').val();
				
		url = '<?php echo $filter_url; ?>';
			
		if(id)
			url += '&filter_id=' + id;
	
		if(tracking)
			url += '&filter_tracking=' + tracking;
		
		if(status)
			url += '&filter_status=' + status;
		
		if(date_added)
			url += '&filter_date_added=' + date_added;
		
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
});
</script>
<script>
$(document).ready(function() {
	$('td:first-child').hover(function() {
		$(this).find('.detail').show();
	}, function() {
		$(this).find('.detail').hide();
	});
});
</script>
<?php echo $footer; ?>
		
		