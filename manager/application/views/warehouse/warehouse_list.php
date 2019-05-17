<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_warehouse'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/warehouse/warehouse"><?php echo $this->lang->line('text_warehouse'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_warehouse'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>warehouse/warehouse/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
	</div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><span></span></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_warehouse_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'street') { ?>
				<th style="width: 18%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_street; ?>"><?php echo $this->lang->line('column_street'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 18%;" class="sorting">
			      <a href="<?php echo $sort_street; ?>"><?php echo $this->lang->line('column_street'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'city') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_city; ?>"><?php echo $this->lang->line('column_city'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_city; ?>"><?php echo $this->lang->line('column_city'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'state') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_state; ?>"><?php echo $this->lang->line('column_state'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_state; ?>"><?php echo $this->lang->line('column_state'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'country') { ?>
				<th class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_country; ?>"><?php echo $this->lang->line('column_country'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
				  <a href="<?php echo $sort_country; ?>"><?php echo $this->lang->line('column_country'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'zipcode') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_zipcode; ?>"><?php echo $this->lang->line('column_zipcode'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 10%;" class="sorting">
				  <a href="<?php echo $sort_zipcode; ?>"><?php echo $this->lang->line('column_zipcode'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 10%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($warehouses) { ?>
				  <?php foreach($warehouses as $warehouse) { ?>
					<tr>
					  <td><?php echo $warehouse['name']; ?></td>
					  <td><?php echo $warehouse['street']; ?></td>
					  <td><?php echo $warehouse['city']; ?></td>
					  <td><?php echo $warehouse['state']; ?></td>
					  <td><?php echo $warehouse['country']; ?></td>
					  <td><?php echo $warehouse['zipcode']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url(); ?>warehouse/warehouse/edit?warehouse_id=<?php echo $warehouse['warehouse_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_warehouse(this, <?php echo $warehouse['warehouse_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
		    </table>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
function delete_warehouse(handle, warehouse_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>warehouse/warehouse/delete?warehouse_id=' + warehouse_id,
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
		