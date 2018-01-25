<link href="<?php echo base_url(); ?>assets/css/app/setting/weight_class_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/weight_class"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/lweight_class"><?php echo $this->lang->line('text_localization'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_weight_class'); ?></strong></li>
	</ol>
	<a href="<?php echo base_url(); ?>setting/weight_class/add" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
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
		  <h5><?php echo $this->lang->line('text_weight_class_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <tr>
				  <?php if($sort == 'unit') { ?>
				  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 40%;" class="sorting">
					<a href="<?php echo $sort_unit; ?>"><?php echo $this->lang->line('column_unit'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'value') { ?>
				  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_value; ?>"><?php echo $this->lang->line('column_value'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 40%;" class="sorting">
					<a href="<?php echo $sort_value; ?>"><?php echo $this->lang->line('column_value'); ?></a>
				  </th>
				  <?php } ?>
				  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			    </tr>
			  </thead>
			  <tbody>
			    <?php if($weight_classes) { ?>
				  <?php foreach($weight_classes as $weight_class) { ?>
					<tr>
					  <td><?php echo $weight_class['unit']; ?></td>
					  <td><?php echo $weight_class['value']; ?></td>
					  <td>
					    <center>
						  <a href="<?php echo base_url(); ?>setting/weight_class/edit?id=<?php echo $weight_class['id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						  <button class="btn btn-danger btn-delete" data="<?php echo $weight_class['id']; ?>"><i class="fa fa-trash"></i></button>
					    </center>
					  </td>
					</tr>
				  <?php } ?>
			    <?php } ?>
			  </tbody>
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="location" placeholder="<?php echo $this->lang->line('column_unit'); ?>" value="<?php echo $filter_unit; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="tracking" placeholder="<?php echo $this->lang->line('column_value'); ?>" value="<?php echo $filter_value; ?>" /></th>
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
			unit     = $('input[name=\'unit\']').val();
			value    = $('input[name=\'value\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(unit)
				unit += '&filter_unit=' + unit;
		
			if(value)
				value += '&filter_value=' + value;
			
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
			id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>setting/localization/weight_class/delete?id=' + id,
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
		
		