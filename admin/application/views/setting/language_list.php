<link href="<?php echo base_url(); ?>assets/css/app/setting/language_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_title'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/language"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_language'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <a href="<?php echo base_url(); ?>setting/language/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
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
		  <h5><?php echo $this->lang->line('text_language_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
			    <tr>
				  <?php if($sort == 'name') { ?>
				  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 40%;" class="sorting">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				  </th>
				  <?php } ?>
				  <?php if($sort == 'code') { ?>
				  <th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
				  </th>
				  <?php } else { ?>
				  <th style="width: 40%;" class="sorting">
					<a href="<?php echo $sort_code; ?>"><?php echo $this->lang->line('column_code'); ?></a>
				  </th>
				  <?php } ?>
				  <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			    </tr>
			  </thead>
			  <tbody>
			    <?php if($languages) { ?>
				  <?php foreach($languages as $language) { ?>
					<tr>
					  <td><?php echo $language['name']; ?></td>
					  <td><?php echo $language['code']; ?></td>
					  <td>
					    <center>
						  <a href="<?php echo base_url(); ?>setting/language/edit?language_id=<?php echo $language['language_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
		                  <button class="btn btn-danger btn-delete" onclick="delete_language(this, <?php echo $language['language_id']; ?>)"><i class="fa fa-trash"></i></button>
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
function delete_language(handle, language_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>setting/language/delete?language_id=' + language_id,
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
		
		