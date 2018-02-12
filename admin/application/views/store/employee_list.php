<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/store/employee_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_employee_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>store/store"><?php echo $this->lang->line('text_Store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_employee_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>store/employee/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><button type="button" class="close" data-dismiss="alert">&times;</button><span></span></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_employee_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
		      <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_Name'); ?></label>
			      <div class="col-sm-9"><input name="name" class="form-control" value="<?php echo $filter_name; ?>"></div>
				</div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('text_Store'); ?></label>
			      <div class="col-sm-9">
				    <select name="store_id" class="form-control">
				      <option value=""></option>
					  <?php if($stores) { ?>
					  <?php foreach($stores as $store) { ?>
						<?php if($store['store_id'] == $filter_store_id) { ?>
						<option value="<?php echo $store['store_id']; ?>" selected><?php echo $store['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
					   <?php } ?>
					  <?php } ?>
					  <?php } ?>
				    </select>
				  </div>
				</div>
			  </div>
			  <div class="col-md-3">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('text_Email'); ?></label>
			      <div class="col-sm-8"><input name="email" class="form-control" value="<?php echo $filter_email; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
                <button id="btn-search" class="btn btn-success"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'name') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
			      <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'employee.store_id') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_store; ?>"><?php echo $this->lang->line('column_store'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
			      <a href="<?php echo $sort_store; ?>"><?php echo $this->lang->line('column_store'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'employee.email') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
			      <a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'employee.phone') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
			      <a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
				</th>
				<?php } ?>
				<th></th>
			  </thead>
			  <tbody>
				<?php if($employees) { ?>
				  <?php foreach($employees as $employee) { ?>
					<tr>
					  <td><?php echo $employee['name']; ?></td>
					  <td><?php echo $employee['store']; ?></td>
				      <td><?php echo $employee['email']; ?></td>
					  <td><?php echo $employee['phone']; ?></td>
					  <td style="text-align: center">
						<a href="<?php echo base_url(); ?>store/employee/edit?employee_id=<?php echo $employee['employee_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
					  	<button class="btn btn-danger btn-delete" onclick="delete_employee(this, <?php echo $employee['employee_id']; ?>)"><i class="fa fa-trash"></i></button>					  
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
function delete_employee(handle, employee_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>store/employee/delete?employee_id=' + employee_id,
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
$(document).ready(function() {
	//filter
	$(document).on('click', '#btn-search', function() {
		name      = $('input[name=\'name\']').val();	
		store_id  = $('select[name=\'store_id\']').val();
		email     = $('input[name=\'email\']').val();

		url = '<?php echo $filter_url; ?>';
		
		if(name)
			url += '&filter_name=' + name;
		
		if(store_id)
			url += '&filter_store_id=' + store_id;
	
		if(email)
			url += '&filter_email=' + email;
		
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

		
		