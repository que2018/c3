<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $this->lang->line('text_title'); ?></title>
<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/animate.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/app/common/login.css" rel="stylesheet"> 
<script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
</head>
<body class="gray-bg">
  <div class="middle-box text-center loginscreen animated fadeInDown">
	<div>
	  <div><h1 class="logo-name"><?php echo $this->lang->line('text_logo_name'); ?></h1></div>
	  <h3><?php echo $this->lang->line('text_welcome'); ?></h3>
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <form class="m-t" role="form" action="<?php echo base_url(); ?>common/login" method="post" enctype="multipart/form-data">
		<div class="form-group">
		  <input type="text" name="email" value="<?php echo $email; ?>" class="form-control" placeholder="<?php echo $this->lang->line('text_email'); ?>">
		</div>
		<div class="form-group">
		  <input type="password" name="password" value="<?php echo $password; ?>" class="form-control" placeholder="<?php echo $this->lang->line('text_password'); ?>">
		</div>
	    <div class="form-group">
		  <select name="idiom" class="form-control">
			<?php foreach($languages as $language) { ?>
			<?php if($language['code'] == $idiom) { ?>
			<option value="<?php echo $language['code']; ?>" selected><?php echo $language['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></option>					
			<?php } ?>
			<?php } ?>
		  </select>
		</div>
		<button type="submit" class="btn btn-primary block full-width m-b"><?php echo $this->lang->line('button_login'); ?></button>
		<a href="#"><small><?php echo $this->lang->line('text_password_forget'); ?></small></a>
		<?php if($redirect) { ?>
		  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		<?php } ?>
	  </form>
	  <p class="m-t"><small><?php echo $this->lang->line('text_pround_product'); ?></small> </p>
	</div>
  </div>
</body>
</html>