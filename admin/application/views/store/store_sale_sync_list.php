<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_order_sync'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/store/store"><?php echo $this->lang->line('text_store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_order_sync'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	  <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div id="alert-loading" class="alert alert-warning" style="display:none;"><?php echo $this->lang->line('text_syncing'); ?></div>
	  <div id="alert-success" class="alert alert-success" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('.alert').hide()">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_store_sale_sync_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'store.name') { ?>
				<th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 40%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'store.platform') { ?>
				<th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 40%;" class="sorting">
			      <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
				</th>
				<?php } ?>
				<th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($stores) { ?>
				  <?php foreach($stores as $store) { ?>
					<tr>
					  <td><?php echo $store['name']; ?></td>
					  <td><?php echo $store['platform_title']; ?></td>
					  <td style="text-align: center">
					    <?php if($store['platform'] != 'offline') { ?>
					      <button class="btn btn-primary btn-download"><i class="fa fa-cloud-download"></i></button>
					      <button class="btn btn-primary btn-upload"><i class="fa fa-cloud-upload"></i></button>
						<?php } else { ?>
						  <button class="btn btn-download-disabled"><i class="fa fa-cloud-download"></i></button>
					      <button class="btn btn-upload-disabled"><i class="fa fa-cloud-upload"></i></button>
						<?php } ?>
					  </td>
					  <input type="hidden" name="store_id" value="<?php echo $store['id']; ?>">
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="platform" placeholder="<?php echo $this->lang->line('column_platform'); ?>" value="<?php echo $filter_platform; ?>" /></th>
				  <th></th>
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
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			name      = $('input[name=\'name\']').val();
			platform  = $('input[name=\'platform\']').val();
			
			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
		
			if(platform)
				url += '&filter_platform=' + platform;
		
			window.location.href = url;
		}
	});
});
</script>
<script>
$(document).ready(function() {	
	$('.btn-download').click(function(e) {		
		store_id = $(this).closest('tr').find('input[name=\'store_id\']').val();
					
		$.ajax({
			url: '<?php echo base_url(); ?>store/store_sale_sync_download/download_ajax?store_id=' + store_id,
			type: 'post',
			dataType: "json",
			beforeSend: function() {
				$('.alert-danger').hide();
				$('.alert-warning').show();
			},
			complete: function() {
				$('.alert-warning').hide();
			},
			success: function(json) {					
				if(json.success) 
				{
					html = '';
					
					$.each(json.messages, function(i, message) {
						if(message.level == 0)
							html += '<div class="text-primary">' + message.content + '</div>';
						
						if(message.level == 1)
							html += '<div class="text-warning">' + message.content + '</div>';
						
						if(message.level == 2)
							html += '<div class="text-danger">' + message.content + '</div>';
					});
					
					$('#alert-success span').html(html);		
					$('#alert-success').show();
				}
				else 
				{
					html = '';
					
					$.each(json.messages, function(i, message) {
						if(message.level == 0)
							html += '<div class="text-primary">' + message.content + '</div>';
						
						if(message.level == 1)
							html += '<div class="text-warning">' + message.content + '</div>';
						
						if(message.level == 2)
							html += '<div class="text-danger">' + message.content + '</div>';
					});
					
					$('#alert-error span').html(html);		
					$('#alert-error').show();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	});
});
</script>
<script>
$(document).ready(function() {	
	$('.btn-upload').click(function(e) {		
		store_id = $(this).closest('tr').find('input[name=\'store_id\']').val();
					
		$.ajax({
			url: '<?php echo base_url(); ?>store/store_sale_sync_upload/upload_ajax?store_id=' + store_id,
			type: 'post',
			dataType: 'json',
			beforeSend: function() {
				$('.alert-danger').hide();
				$('.alert-warning').show();
			},
			complete: function() {
				$('.alert-warning').hide();
			},
			success: function(json) {					
				if(json.success) 
				{
					html = '';
					
					$.each(json.messages, function(i, message) {						
						if(message.level == 0)
							html += '<div class="text-primary">' + message.content + '</div>';
						
						if(message.level == 1)
							html += '<div class="text-warning">' + message.content + '</div>';
						
						if(message.level == 2)
							html += '<div class="text-danger">' + message.content + '</div>';
					});
					
					$('#alert-success span').html(html);		
					$('#alert-success').show();
				}
				else
				{
					html = '';
					
					$.each(json.messages, function(i, message) {
						if(message.level == 0)
							html += '<div class="text-primary">' + message.content + '</div>';
						
						if(message.level == 1)
							html += '<div class="text-warning">' + message.content + '</div>';
						
						if(message.level == 2)
							html += '<div class="text-danger">' + message.content + '</div>';
					});
					
					$('#alert-error span').html(html);		
					$('#alert-error').show();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	});
});
</script>
<?php echo $footer; ?>
		