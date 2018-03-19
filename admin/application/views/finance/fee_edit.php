<link href="<?php echo base_url(); ?>assets/css/app/finance/fee_add.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_edit_fee'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>finance/fee"><?php echo $this->lang->line('text_finance'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>finance/fee"><?php echo $this->lang->line('text_fee'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_edit_fee'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>finance/fee" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	</div>
  </div>
  <div class="row">
    <div class="col-lg-12">
	  <div class="ibox-content">
	    <form method="post" action="<?php echo base_url(); ?>finance/fee/edit?fee_id=<?php echo $fee_id; ?>" class="form-horizontal">
		  <div class="row">
			<div class="col-lg-12">
			   <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
				<div class="col-sm-10"><input type="text" name="name" value="<?php echo $name; ?>" class="form-control"> </div>				  
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_amount'); ?></label>
				<div class="col-sm-10">	
				  <div class="input-group">
				    <span class="input-group-addon">$</span> 
					<input type="text" name="amount" value="<?php echo $amount; ?>" class="form-control"> 
				  </div>
                </div>				  
			  </div>
		    </div>
		  </div>
		</form>
	  </div>
	</div>
  </div>  
</div>
		
		