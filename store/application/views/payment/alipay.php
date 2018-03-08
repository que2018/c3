<link href="<?php echo base_url(); ?>assets/css/app/platform/wish.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line("text_wish"); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/platform"><?php echo $this->lang->line('text_payment'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_alipay'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <form method="post" class="form-horizontal">
	    <div class="tabs-container">
	      <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#fields"><?php echo $this->lang->line('tab_fields'); ?></a></li>
		    <li class=""><a data-toggle="tab" href="#setting"><?php echo $this->lang->line('tab_setting'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="fields" class="tab-pane active">
			  <div class="panel-body">
			    <div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_service'); ?></label>
			      <div class="col-sm-10">
				    <select name="alipay_service" class="form-control">
					  <option value=""></option>
					  <?php foreach($alipay_services as $code => $name) { ?>
					  <?php if($code == $alipay_service) { ?>
				      <option value="<?php echo $code; ?>" selected><?php echo $name; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $code; ?>"><?php echo $name; ?></option>
				      <?php } ?>
					  <?php } ?>
					</select>
				  </div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_partner'); ?></label>
			      <div class="col-sm-10"><input name="alipay_partner" value="<?php echo $alipay_partner; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_seller_id'); ?></label>
			      <div class="col-sm-10"><input name="alipay_seller_id" value="<?php echo $alipay_seller_id; ?>" class="form-control"></div>
				</div>
				<div class="hr-line-dashed"></div>
				<div class="form-group">
				  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_key'); ?></label>
			      <div class="col-sm-10"><input name="alipay_key" value="<?php echo $alipay_key; ?>" class="form-control"></div>
				</div>
			  </div>
		    </div>
		    <div id="setting" class="tab-pane">
			  <div class="panel-body">
			    <div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="alipay_status" class="form-control">
					  <?php if($alipay_status) { ?>
					    <option value="1" selected><?php echo $this->lang->line('text_enabled'); ?></option>
						<option value="0"><?php echo $this->lang->line('text_disabled'); ?></option>
					  <?php } else { ?>
					    <option value="1"><?php echo $this->lang->line('text_enabled'); ?></option>
						<option value="0" selected><?php echo $this->lang->line('text_disabled'); ?></option>
					  <?php } ?>
					</select>
				  </div>
                </div>
                <div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sort_order'); ?></label>
				  <div class="col-sm-10"><input name="alipay_sort_order" value="<?php echo $alipay_sort_order; ?>" class="form-control"></div>	  
			    </div>				
			  </div>
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary btn-submit"><i class="fa fa-save"></i></a>
	    </div>
	  </form>
    </div>
  </div>
</div> 
		
		