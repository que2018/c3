<link href="<?php echo base_url(); ?>assets/css/app/contact/contact.css" rel="stylesheet"> 
<div class="container">
  <div class="row">
	<div class="content" class="col-sm-12">
	  <h2 class="title"><?php echo $this->lang->line('text_contact_us'); ?></h2>
	  <form action="<?php echo base_url(); ?>contact/contact" method="post" enctype="multipart/form-data" class="form-horizontal">
	    <div class="container-fluid">
		  <div class="row">
			<div class="col-lg-12">
			  <?php if($error) { ?>
			    <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
			  <?php } ?>
			  <?php if($success) { ?>
			    <div class="alert alert-success"><?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
			  <?php } ?>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-md-6">
			  <div class="form-group required">
			    <div class="col-sm-12">
				  <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $this->lang->line('entry_name'); ?>" class="form-control">
			    </div>
			  </div>
		    </div>
		    <div class="col-md-6">
			  <div class="form-group required">
			    <div class="col-sm-12">
				  <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $this->lang->line('entry_email'); ?>" class="form-control">
			    </div>
			  </div>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-md-12">
			  <div class="form-group required">
			    <div class="col-sm-12">
				  <textarea name="enquiry" rows="10" class="form-control" placeholder="<?php echo $this->lang->line('entry_enquiry'); ?>"><?php echo $enquiry; ?></textarea>
			    </div>
			  </div>
		    </div>
		  </div>
	    </div>
	    <div class="row">
		  <div class="col-md-12">
		    <div class="buttons">
			  <div class="pull-right">
			    <input class="btn btn-primary btn-submit" type="submit" value="<?php echo $this->lang->line('button_submit'); ?>">
			  </div>
		    </div>
		  </div>
	    </div>
	  </form>
    </div>
  </div>
</div>