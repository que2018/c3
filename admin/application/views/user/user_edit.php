<link href="<?php echo base_url(); ?>assets/css/app/user/user_edit.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_user_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>user/user"><?php echo $this->lang->line('text_user'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_user_edit'); ?></strong></li>
	</ol>
	<div class="button-group">
      <button class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
      <a href="<?php echo base_url(); ?>user/user" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div id="alert-error" class="alert alert-danger"><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button><?php echo $error; ?></div>
    <?php } ?>
	<div class="ibox">
	  <div class="ibox-content">
		<form method="post" action="<?php echo base_url(); ?>user/user/edit?user_id=<?php echo $user_id; ?>" class="form-horizontal">
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_username'); ?></label>
			<div class="col-sm-10"><input type="text" name="username" value="<?php echo $username; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_user_group'); ?></label>
			<div class="col-sm-10">
			  <select name="user_group_id" class="form-control">
			    <option value=""></option>
				<?php foreach($user_groups as $user_group) { ?>
				<?php if($user_group['id'] == $user_group_id) { ?>
				<option value="<?php echo $user_group['id']; ?>" selected><?php echo $user_group['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $user_group['id']; ?>"><?php echo $user_group['name']; ?></option>
				<?php } ?>
				<?php } ?>
			  </select>
			</div>
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
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_email'); ?></label>
			<div class="col-sm-10"><input type="text" name="email" value="<?php echo $email; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_password'); ?></label>
			<div class="col-sm-10"><input type="password" name="password" value="<?php echo $password; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_confirm'); ?></label>
			<div class="col-sm-10"><input type="password" name="confirm" value="<?php echo $confirm; ?>" class="form-control"></div>
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
				<option value="0"selected><?php echo $this->lang->line('text_disabled'); ?></option>
				<?php } ?>
			  </select>
			</div>
		  </div>
		</form>
	  </div>
    </div>
  </div>
</div>
		
		