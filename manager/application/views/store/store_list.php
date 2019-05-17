<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/store/store"><?php echo $this->lang->line('text_store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>store/store/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>"  class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><span></span></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_store_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'store.name') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'store.platform') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
			      <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'client') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
			      <a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } ?>
				<th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($stores) { ?>
				  <?php foreach($stores as $store) { ?>
					<tr>
					  <td><?php echo $store['name']; ?></td>
					  <td><?php echo $store['platform']; ?></td>
					  <td><?php echo $store['client']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url('store/store/edit?store_id=' . $store['store_id']); ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_store(this, <?php echo $store['store_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="platform" placeholder="<?php echo $this->lang->line('column_platform'); ?>" value="<?php echo $filter_platform; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="client" placeholder="<?php echo $this->lang->line('column_client'); ?>" value="<?php echo $filter_client; ?>" /></th>
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
			name      = $('input[name=\'name\']').val();
			platform  = $('input[name=\'platform\']').val();
			client    = $('input[name=\'client\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
		
			if(platform)
				url += '&filter_platform=' + platform;
			
			if(client)
				url += '&filter_client=' + client;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
function delete_store(handle, store_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>store/store/delete?store_id=' + store_id,
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
		
		