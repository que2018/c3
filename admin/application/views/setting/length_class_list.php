<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/length_class"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/length_class"><?php echo $this->lang->line('text_localization'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_length_class'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>setting/length_class/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
	</div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_length_class_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover table-length">
			  <thead>
			    <tr>
				  <?php if($sort == 'unit') { ?>
				  <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 28%;" class="sorting">
					<a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'unit_short') { ?>
				  <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit_short'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 28%;" class="sorting">
					<a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit_short'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'value') { ?>
				  <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_value; ?>"><?php echo $this->lang->line('column_value'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 28%;" class="sorting">
					<a href="<?php echo $sort_value; ?>"><?php echo $this->lang->line('column_value'); ?></a>
				  </th>
				  <?php } ?>
				  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			    </tr>
			  </thead>
			  <tbody>
			    <?php if($length_classes) { ?>
				  <?php foreach($length_classes as $length_class) { ?>
					<tr>
					  <td><?php echo $length_class['unit']; ?></td>
					  <td><?php echo $length_class['unit_short']; ?></td>
					  <td><?php echo $length_class['value']; ?></td>
					  <td>
					    <center>
						  <a href="<?php echo base_url(); ?>setting/length_class/edit?length_class_id=<?php echo $length_class['length_class_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						  <button class="btn btn-danger btn-delete" onclick="delete_length_class(this, <?php echo $length_class['length_class_id']; ?>)"><i class="fa fa-trash"></i></button>
					    </center>
					  </td>
					</tr>
				  <?php } ?>
			    <?php } ?>
			  </tbody>
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="unit" placeholder="<?php echo $this->lang->line('column_unit'); ?>" value="<?php echo $filter_unit; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="unit_short" placeholder="<?php echo $this->lang->line('column_unit_short'); ?>" value="<?php echo $filter_unit_short; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="value" placeholder="<?php echo $this->lang->line('column_value'); ?>" value="<?php echo $filter_value; ?>" /></th>
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
			unit       = $('input[name=\'unit\']').val();
			unit_short = $('input[name=\'unit_short\']').val();
			value      = $('input[name=\'value\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(unit)
				url += '&filter_unit=' + unit;
			
			if(unit_short)
				url += '&filter_unit_short=' + unit_short;
		
			if(value)
				url += '&filter_value=' + value;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
function delete_length_class(handle, length_class_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>setting/length_class/delete?length_class_id=' + length_class_id,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			complete: function() {
				$(handle).html('<i class="fa fa-trash"></i>');
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
				} else {
					$('#alert-error span').html(json.message);		
					$('#alert-error').show();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>
<?php echo $footer; ?>		
		