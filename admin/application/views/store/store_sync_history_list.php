<link href="<?php echo base_url(); ?>assets/css/app/store/store_sync_history_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_sync_history'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>store/store"><?php echo $this->lang->line('text_store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_sync_history'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>store/store_sync_history/clear" class="btn btn-danger btn-clear"><i class="fa fa-trash"></i></a>
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
		  <h5><?php echo $this->lang->line('text_store_sync_history_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'store.name') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_store; ?>"><?php echo $this->lang->line('column_store'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
				  <a href="<?php echo $sort_store; ?>"><?php echo $this->lang->line('column_store'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'store_sync_history.type') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_type; ?>"><?php echo $this->lang->line('column_type'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
				  <a href="<?php echo $sort_type; ?>"><?php echo $this->lang->line('column_type'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'store_sync_history.status') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
				  <a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'store_sync_history.date_added') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
				  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 20%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($store_sync_histories) { ?>
				  <?php foreach($store_sync_histories as $store_sync_history) { ?>
					<tr>
					  <td><?php echo $store_sync_history['store']; ?></td>
					  <td><?php echo $store_sync_history['type']; ?></td>
					  <td><?php echo $store_sync_history['status']; ?></td>
					  <td><?php echo $store_sync_history['date_added']; ?></td>
					  <td style="text-align: center">
						<a href="<?php echo base_url(); ?>store/store_sync_history/detail?store_sync_history_id=<?php echo $store_sync_history['id']; ?>" class="btn btn-primary" data="<?php echo $store_sync_history['id']; ?>"><i class="fa fa-eye"></i></a>
					  	<button class="btn btn-danger btn-delete" data="<?php echo $store_sync_history['id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="store" placeholder="<?php echo $this->lang->line('column_store'); ?>" value="<?php echo $filter_store; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="type" placeholder="<?php echo $this->lang->line('column_type'); ?>" value="<?php echo $filter_type; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="status" placeholder="<?php echo $this->lang->line('column_status'); ?>" value="<?php echo $filter_status; ?>" /></th>
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
	$('.btn-delete').click(function() {
		handler = $(this);
		id = $(this).attr('data');
		
		$.ajax({
			url: '<?php echo base_url(); ?>store/store_sync_history/delete?id=' + id,
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
	});
});
</script>
		
		