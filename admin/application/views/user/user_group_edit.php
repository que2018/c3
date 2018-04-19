<link href="<?php echo base_url(); ?>assets/css/app/user/user_group_add.css" rel="stylesheet"> 
<link href="<?php echo base_url(); ?>assets/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<script src="<?php echo base_url(); ?>assets/js/plugins/iCheck/icheck.min.js"></script>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_user_group_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>user/user_group"><?php echo $this->lang->line('text_user_group'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_user_group_edit'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <button class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>user/user_group" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
						<?php if(isset($permission['access']) && in_array('check', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="check" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_check'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="check"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_check'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('catalog', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="catalog" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_catalog'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="catalog"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_catalog'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('inventory', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="inventory" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_inventory'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="inventory"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_inventory'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('warehouse', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="warehouse" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_warehouse'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="warehouse"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_warehouse'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('sale', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="sale" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_sale'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="sale"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_sale'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('store', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="store" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_store'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="store"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_store'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('extension', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="extension" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_extension'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="extension"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_extension'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('finance', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="finance" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_finance'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="finance"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_finance'); ?></label></div>
						<?php } ?>
					    <?php if(isset($permission['access']) && in_array('fee', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="fee" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_fee'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="fee"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_fee'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('platform', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="platform" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_platform'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="platform"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_platform'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('shipping', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="shipping" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_shipping'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="shipping"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_shipping'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('payment', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="payment" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_payment'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="payment"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_payment'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('report', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="report" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_report'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="report"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_report'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('client', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="client" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_client'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="client"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_client'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('user', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="user" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_user'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="user"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_user'); ?></label></div>
						<?php } ?>
						<?php if(isset($permission['access']) && in_array('setting', $permission['access'])) { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="setting" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_system'); ?></label></div>
						<?php } else { ?>
						  <div class="i-checks"><label><input type="checkbox" name="permission[access][]" value="setting"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_access_system'); ?></label></div>
						<?php } ?>
					 </div>
				    </div>
				  </div>
				  <div class="col-md-6">
					<h4><?php echo $this->lang->line('text_modify'); ?></h4>
					<div class="ibox-content">
					  <?php if(isset($permission['modify']) && in_array('check', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="check" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_check'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="check"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_check'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('catalog', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="catalog" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_catalog'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="catalog"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_catalog'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('inventory', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="inventory" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_inventory'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="inventory"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_inventory'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('warehouse', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="warehouse" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_warehouse'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="warehouse"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_warehouse'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('sale', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="sale" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_sale'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="sale"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_sale'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('store', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="store" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_store'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="store"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_store'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('extension', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="extension" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_extension'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="extension"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_extension'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('finance', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="finance" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_finance'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="finance"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_finance'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('fee', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="fee" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_fee'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="fee"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_fee'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('platform', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="platform" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_platform'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="platform"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_platform'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('shipping', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="shipping" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_shipping'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="shipping"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_shipping'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('payment', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="payment" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_payment'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="payment"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_payment'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && isset($permission['modify']) && in_array('report', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="report" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_report'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="report"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_report'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && isset($permission['modify']) && in_array('client', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="client" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_client'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="client"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_client'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && isset($permission['modify']) && in_array('user', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="user" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_user'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="user"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_user'); ?></label></div>
					  <?php } ?>
					  <?php if(isset($permission['modify']) && in_array('setting', $permission['modify'])) { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="setting" checked><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_system'); ?></label></div>
					  <?php } else { ?>
					    <div class="i-checks"><label><input type="checkbox" name="permission[modify][]" value="setting"><i></i>&nbsp;&nbsp;&nbsp;<?php echo $this->lang->line('permission_modify_system'); ?></label></div>
					  <?php } ?>
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
		
		
		