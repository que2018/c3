<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_category_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/category"><?php echo $this->lang->line('text_catalog'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_category_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>catalog/category/add" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
      <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" data-dismiss="alert">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_category_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'category.name') { ?>
				<th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 40%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'category.sort_order') { ?>
				<th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sort_order; ?>"><?php echo $this->lang->line('column_sort_order'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 40%;" class="sorting">
				  <a href="<?php echo $sort_sort_order; ?>"><?php echo $this->lang->line('column_sort_order'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 20%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($categories) { ?>
				  <?php foreach($categories as $category) { ?>
					<tr>
					  <td><?php echo $category['name']; ?></td>
					  <td><?php echo $category['sort_order']; ?></td>
					  <td style="text-align: center">
						<a href="<?php echo base_url().'catalog/category/edit?category_id='.$category['category_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_category(this, <?php echo $category['category_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>
					  <input type="hidden" title="category_id" value="<?php echo $category['category_id']; ?>">
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" title="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th></th>				  
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
			name = $('input[title=\'name\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
function delete_category(handle, category_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>catalog/category/delete?category_id=' + category_id,
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
					html = '';
					
					$.each(json.messages, function(i, message) {				
						html += message + '<br>';
					});
					
					$('#alert-error span').html(html);
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
		