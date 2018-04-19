<link href="<?php echo base_url(); ?>assets/css/app/user/user_group_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_user_group'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>user/user_group"><?php echo $this->lang->line('text_user_group'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_user_group'); ?></strong></li>
	</ol>
  </div>
  <a href="<?php echo base_url(); ?>user/user_group/add" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	  <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" data-dismiss="alert">&times;</button></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_user_group_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'user_group.name') { ?>
				<th style="width: 60%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 60%;" class="sorting">
			      <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 40%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($user_groups) { ?>
				  <?php foreach($user_groups as $user_group) { ?>
					<tr>
					  <td><?php echo $user_group['name']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url(); ?>user/user_group/edit?user_group_id=<?php echo $user_group['id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $user_group['id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
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
	$('.btn-delete').click(function() {
		if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
			handler = $(this);
			id = $(this).attr('data');
			
			$.ajax({
				url: '<?php echo base_url(); ?>user/user_group/delete?id=' + id,
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
						$('.alert-danger span').html(json.msg);		
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
		
		