<link href="<?php echo base_url(); ?>assets/css/app/user/user_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_user'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>user/user"><?php echo $this->lang->line('text_user'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_user'); ?></strong></li>
	</ol>
  </div>
  <a href="<?php echo base_url(); ?>user/user/add" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
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
		  <h5><?php echo $this->lang->line('text_user_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'user.username') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_username; ?>"><?php echo $this->lang->line('column_username'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_username; ?>"><?php echo $this->lang->line('column_username'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'user_group.name') { ?>
				<th style="width: 18%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_group_name; ?>"><?php echo $this->lang->line('column_group_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 18%;" class="sorting">
			      <a href="<?php echo $sort_group_name; ?>"><?php echo $this->lang->line('column_group_name'); ?></a>
				</th>
				<?php } ?>
				<th style="width: 10%;" style="width: 10%;"><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($users) { ?>
				  <?php foreach($users as $user) { ?>
					<tr>
					  <td><?php echo $user['username']; ?></td>
					  <td><?php echo $user['group_name']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url(); ?>user/user/edit?id=<?php echo $user['id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $user['id']; ?>"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="username" placeholder="<?php echo $this->lang->line('column_username'); ?>" value="<?php echo $filter_username; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="group_name" placeholder="<?php echo $this->lang->line('column_group_name'); ?>" value="<?php echo $filter_group_name; ?>" /></th>
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
				url: '<?php echo base_url(); ?>user/user/delete?id=' + id,
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
		
		