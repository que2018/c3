<link href="<?php echo base_url(); ?>assets/css/app/platform/square_sale_detail.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_payment_detail'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('text_square'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_payment_detail'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>sale/sale" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>	
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<div class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#customer"><?php echo $this->lang->line('tab_customer'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#product"><?php echo $this->lang->line('tab_product'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_payment_id'); ?></label>
                <div class="col-sm-10"><div class="text-control"><?php echo $payment_id; ?></div></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_device'); ?></label>
                <div class="col-sm-10"><div class="text-control"><?php echo $device; ?></div></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_created_at'); ?></label>
			    <div class="col-sm-10"><div class="text-control"><?php echo $created_at; ?></div></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_total_collected_money'); ?></label>
			    <div class="col-sm-10"><div class="text-control"><?php echo $total_collected_money; ?></div></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_net_total_money'); ?></label>
			    <div class="col-sm-10"><div class="text-control"><?php echo $net_total_money; ?></div></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_discount_money'); ?></label>
			    <div class="col-sm-10"><div class="text-control"><?php echo $discount_money; ?></div></div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_refunded_money'); ?></label>
			    <div class="col-sm-10"><div class="text-control"><?php echo $refunded_money; ?></div></div>
			  </div>
			  <div class="hr-line-dashed"></div>				  
			</div>
		  </div>
		  <div id="customer" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
                <div class="col-sm-10"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
                <div class="col-sm-10"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
                <div class="col-sm-10"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
                <div class="col-sm-10"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
                <div class="col-sm-10"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_zipcode'); ?></label>
                <div class="col-sm-10"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
                <div class="col-sm-10"></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="product" class="tab-pane">
			<div class="panel-body">
			  <table id="ptable" class="table table-bordered">
			    <thead>
				  <tr>
				    <th style="width: 20%"><?php echo $this->lang->line('column_name'); ?></th>
				    <th style="width: 20%"><?php echo $this->lang->line('column_quantity'); ?></th>
				    <th style="width: 20%"><?php echo $this->lang->line('itemization_type'); ?></th>
				    <th style="width: 20%"><?php echo $this->lang->line('total_money'); ?></th>
					<th style="width: 20%"><?php echo $this->lang->line('discount_money'); ?></th>
				  </tr>
			    </thead>
			    <tbody>
				  <?php if($itemizations) { ?>
				    <?php foreach($itemizations as $itemization) { ?>
					<tr>
				      <td class="text-left"><?php echo $itemization['name']; ?></td>
				      <td class="text-left"><?php echo $itemization['quantity']; ?></td>
					  <td class="text-left"><?php echo $itemization['itemization_type']; ?></td>
					  <td class="text-left"><?php echo $itemization['total_money']; ?></td>
					  <td class="text-left"><?php echo $itemization['discount_money']; ?></td>
					</tr>
				    <?php } ?>
				  <?php } ?>
			    </tbody>
			  </table>  
			</div>
		  </div>
		</div>
	  </div>
	</div>
    </div>
  </div>
</div>
		