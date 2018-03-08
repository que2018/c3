<link href="<?php echo base_url(); ?>assets/css/app/store/employee_edit.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_edit_employee'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>store/store"><?php echo $this->lang->line('text_Store'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>store/employee"><?php echo $this->lang->line('text_employee'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_edit_employee'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>store/employee" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>	
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
    <form method="post" action="<?php echo base_url(); ?>store/employee/edit?employee_id=<?php echo $employee_id; ?>" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li><a data-toggle="tab" href="#location"><?php echo $this->lang->line('tab_store'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
              <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_email'); ?></label>
			    <div class="col-sm-10"><input type="text" name="email" value="<?php echo $email; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_password'); ?></label>
			    <div class="col-sm-10"><input type="password" name="password" value="" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_firstname'); ?></label>
			    <div class="col-sm-10"><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_lastname'); ?></label>
			    <div class="col-sm-10"><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			    <div class="col-sm-10"><input type="text" name="phone" value="<?php echo $phone; ?>" class="form-control"></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			    <div class="col-sm-10">
				  <select name="status" class="form-control">
					<?php if($status) { ?>
					<option value="1" selected><?php echo $this->lang->line('text_enabled'); ?></option>
					<option value="0"><?php echo $this->lang->line('text_disabled'); ?></option>
					<?php } else { ?>
					<option value="1"><?php echo $this->lang->line('text_enabled'); ?></option>
					<option value="0" selected><?php echo $this->lang->line('text_disabled'); ?></option>
					<?php } ?>
				  </select>
				</div>
			  </div>
			</div>
		  </div>
		  <div id="location" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store'); ?></label>
			    <div class="col-sm-10">
				  <select name="store_id" class="form-control">
				    <option value=""></option>
				    <?php if($stores) { ?>
					  <?php foreach($stores as $store) { ?>
					    <?php if($store['store_id'] == $store_id) { ?>
					    <option value="<?php echo $store['store_id']; ?>" selected><?php echo $store['name']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
					   <?php } ?>
					  <?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_warehouse'); ?></label>
			    <div class="col-sm-10">
				  <select name="warehouse_id" class="form-control">
				    <option value=""></option>
				    <?php if($warehouses) { ?>
					  <?php foreach($warehouses as $warehouse) { ?>
					    <?php if($warehouse['warehouse_id'] == $warehouse_id) { ?>
					    <option value="<?php echo $warehouse['warehouse_id']; ?>" selected><?php echo $warehouse['name']; ?></option>
					    <?php } else { ?>
					    <option value="<?php echo $warehouse['warehouse_id']; ?>"><?php echo $warehouse['name']; ?></option>
					    <?php } ?>
					  <?php } ?>
					<?php } ?>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		</div>
	  </div>
	</form>
    </div>
  </div>
</div>


		
		