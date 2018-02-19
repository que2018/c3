<link href="<?php echo base_url(); ?>assets/css/app/setting/information_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_information'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/information"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_information'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>setting/information/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
	</div>
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
		  <h5><?php echo $this->lang->line('text_information_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <tr>
				  <?php if($sort == 'inforamtion_content.title') { ?>
				  <th style="width: 28%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_title; ?>"><?php echo $this->lang->line('column_title'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 28%;" class="sorting">
					<a href="<?php echo $sort_title; ?>"><?php echo $this->lang->line('column_title'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'information.front') { ?>
				  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_front; ?>"><?php echo $this->lang->line('column_front'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 25%;" class="sorting">
					<a href="<?php echo $sort_front; ?>"><?php echo $this->lang->line('column_front'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'information.status') { ?>
				  <th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 25%;" class="sorting">
					<a href="<?php echo $sort_status; ?>"><?php echo $this->lang->line('column_status'); ?></a>
				  </th>
				  <?php } ?>
				  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			    </tr>
			  </thead>
			  <tbody>
			    <?php if($informations) { ?>
				  <?php foreach($informations as $information) { ?>
					<tr>
					  <td><?php echo $information['title']; ?></td>
					  <td><?php echo $information['front']; ?></td>
					  <td><?php echo $information['status']; ?></td>
					  <td>
					    <center>
						  <a href="<?php echo base_url(); ?>setting/information/edit?information_id=<?php echo $information['information_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>					    
						  <button class="btn btn-danger btn-delete" onclick="delete_information(this, <?php echo $information['information_id']; ?>)"><i class="fa fa-trash"></i></button>
						</center>
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
function delete_information(handle, information_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>setting/information/delete?information_id=' + information_id,
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

		
		