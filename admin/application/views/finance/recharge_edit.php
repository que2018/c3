<link href="<?php echo base_url(); ?>assets/css/app/finance/recharge_edit.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_edit_recharge'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>finance/recharge"><?php echo $this->lang->line('text_finance'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_edit_recharge'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
	<a href="<?php echo base_url(); ?>finance/recharge" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
	    <form method="post" class="form-horizontal">
		  <div class="row">
			<div class="col-lg-12">
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_client'); ?></label>
			    <div class="col-sm-10">
				  <input type="text" value="<?php echo $client_name; ?>" class="form-control" disabled>
				  <input type="hidden" value="<?php echo $client_id; ?>">
			    </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_payment_method'); ?></label>
			    <div class="col-sm-10">
				  <select name="payment_method" class="form-control">
				    <option value=""></option>
				    <?php foreach($payment_methods as $payment) { ?>
					<?php if($payment['code'] == $payment_method) { ?>
					<option value="<?php echo $payment['code']; ?>" selected><?php echo $payment['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $payment['code']; ?>"><?php echo $payment['name']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
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
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			    <div class="col-sm-10">
				  <select name="status" class="form-control">
				    <option value="1"><?php echo $this->lang->line('text_pending'); ?></option>
					<option value="2" selected><?php echo $this->lang->line('text_completed'); ?></option>
				  </select>
				</div>
			  </div>
			  <div class="hr-line-dashed"></div>
		    </div>
		  </div>
		</form>
	  </div>
	</div>
  </div>  
</div>
		
		