<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_edit_customer'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/customer"><?php echo $this->lang->line('text_customer'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_edit_customer'); ?></strong></li>
	</ol>
	 <div class="button-group tooltip-demo">
	  <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
      <a href="<?php echo base_url(); ?>sale/customer" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
	<div class="ibox">
	  <div class="ibox-content">
		<form method="post" action="<?php echo base_url(); ?>sale/customer/edit?customer_id=<?php echo $customer_id; ?>" class="form-horizontal">
		  <div class="form-group">
			<label class="col-sm-2 control-label label-client"><?php echo $this->lang->line('entry_client'); ?></label>
			<div class="col-sm-10">
			  <input name="client_name" value="<?php echo $client_name; ?>" class="form-control">
			  <input type="hidden" name="client_id" value="<?php echo $client_id; ?>">
			</div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
			<div class="col-sm-10"><input type="text" name="name" value="<?php echo $name; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
			<div class="col-sm-10"><input type="text" name="street" value="<?php echo $street; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
			<div class="col-sm-10"><input type="text" name="street2" value="<?php echo $street2; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
			<div class="col-sm-10"><input type="text" name="city" value="<?php echo $city; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
			<div class="col-sm-10"><input type="text" name="state" value="<?php echo $state; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
			<div class="col-sm-10"><input type="text" name="country" value="<?php echo $country; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		  <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_zipcode'); ?></label>
			<div class="col-sm-10"><input type="text" name="zipcode" value="<?php echo $zipcode; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_company'); ?></label>
			<div class="col-sm-10"><input type="text" name="company" value="<?php echo $company; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_email'); ?></label>
			<div class="col-sm-10"><input type="text" name="email" value="<?php echo $email; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		   <div class="form-group">
			<label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
			<div class="col-sm-10"><input type="text" name="phone" value="<?php echo $phone; ?>" class="form-control"></div>
		  </div>
		  <div class="hr-line-dashed"></div>
		</form>
	  </div>
    </div>
  </div>
</div>
<script>
$('input[name=\'client_name\']').autocomplete({
	'source': function(request, response) {
		client_name = $('input[name=\'client_name\']').val();
				
		data = new FormData();
		data.append('client_name', client_name);
		
		$.ajax({
			url: '<?php echo base_url(); ?>client/client/autocomplete',
			type: 'post',
			data: data,
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			success: function(json) {
				if(json.success)
				{
					response($.map(json.clients, function(item) {					
						return {
							label:     item['name'],
							client_id: item['client_id'],
							name:      item['name']
						}
					}));
				}
			}
		});
	},
	'select': function(event, ui) {		
		$('input[name=\'client_name\']').val(ui.item.name);
		$('input[name=\'client_id\']').val(ui.item.client_id);
	}
});
</script>
<?php echo $footer; ?>	
		