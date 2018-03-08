<link href="<?php echo base_url(); ?>assets/css/app/warehouse/location_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_location'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>warehouse/warehouse"><?php echo $this->lang->line('text_warehouse'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_location'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>warehouse/location_print/batch?page=<?php echo $page; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_print'); ?>" class="btn btn-info btn-print" target="_blank"><i class="fa fa-print"></i></a>
    <a href="<?php echo base_url(); ?>warehouse/location/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	  <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_location_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'location.name') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
			      <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'location.code') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
			      <a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'warehouse.name') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
			      <a href="<?php echo $sort_warehouse; ?>"><?php echo $this->lang->line('column_warehouse'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 25%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($locations) { ?>
				  <?php foreach($locations as $location) { ?>
					<tr>
					  <td><?php echo $location['name']; ?></td>
					  <td><?php echo $location['code']; ?></td>
					  <td><?php echo $location['warehouse']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url(); ?>warehouse/location/edit?location_id=<?php echo $location['location_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $location['location_id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="code" placeholder="<?php echo $this->lang->line('column_code'); ?>" value="<?php echo $filter_code; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="warehouse" placeholder="<?php echo $this->lang->line('column_warehouse'); ?>" value="<?php echo $filter_warehouse; ?>" /></th>
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
			name       = $('input[name=\'name\']').val();
			code       = $('input[name=\'code\']').val();
			warehouse  = $('input[name=\'warehouse\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
			
			if(code)
				url += '&filter_code=' + code;
		
			if(warehouse)
				url += '&filter_warehouse=' + warehouse;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
$(document).ready(function() {
	$('.btn-delete').click(function() {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			location_id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>warehouse/location/delete?location_id=' + location_id,
				cache: false,
				contentType: false,
				processData: false,
				dataType: "json",
				beforeSend: function() {
					handler.html('<i class="fa fa-circle-o-notch fa-spin"></i>');
				},
				success: function(json) {					
					if(json.success) 
					{
						handler.closest('tr').remove();
					}
					else 
					{
						$('.alert-danger span').html(json.message);		
						$('.alert-danger').show();
						
						handler.html('<i class="fa fa-trash"></i>');
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	});
});
</script>
		
		