<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_user_group_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>user/user_group"><?php echo $this->lang->line('text_user_group'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_user_group_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save_user_group'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>user/user_group" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div id="alert-error" class="alert alert-danger"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	</div>
  </div>
  <div class="row">
    <div class="col-lg-12">
	  <form method="post" class="form-horizontal">
	    <div class="tabs-container">
		  <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
			<li><a data-toggle="tab" href="#permission"><?php echo $this->lang->line('tab_permission'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
				  <div class="col-sm-10"><input name="name" value="<?php echo $name; ?>" class="form-control" ></div>
			    </div>
			    <div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_description'); ?></label>
				  <div class="col-sm-10"><textarea name="description" rows="6" cols="50" class="form-control" ><?php echo $description; ?></textarea></div>
			    </div>
			    <div class="hr-line-dashed"></div>
			  </div>
		    </div>
			<div id="permission" class="tab-pane">
			  <div class="panel-body">
			    <div class="row">
				  <div class="col-md-6">
				    <div class="ibox">
					  <h4><?php echo $this->lang->line('text_access'); ?></h4>
					  <div class="ibox-content">
					    <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="check"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_check'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="catalog"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_catalog'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="inventory"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_inventory'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="warehouse"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_warehouse'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="sale"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_sale'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="store"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_store'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="extension"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_extension'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="report"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_report'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="user"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_user'); ?></label></div>
						<div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="setting"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_system'); ?></label></div>
					    <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="log"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_log'); ?></label></div>
					 </div>
				    </div>
				  </div>
				  <div class="col-md-6">
					<h4><?php echo $this->lang->line('text_modify'); ?></h4>
					<div class="ibox-content">
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="check"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_check'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="catalog"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_catalog'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="inventory"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_inventory'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="warehouse"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_warehouse'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="sale"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_sale'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="store"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_store'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="extension"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_extension'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="report"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_report'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="user"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_user'); ?></label></div>
					  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="setting"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_system'); ?></label></div>
	    			  <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="log"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_log'); ?></label></div>
					</div>
				  </div>
				</div>
			  </div>
		    </div>
		  </div> 
	    </div>			  
	  </form>
	</div>
  </div>  
</div>
<script>
$(document).ready(function () {
	$('.i-checks').iCheck({
		checkboxClass: 'icheckbox_square-green',
		radioClass: 'iradio_square-green',
	});
});
</script>
<?php echo $footer; ?>
		
		
		