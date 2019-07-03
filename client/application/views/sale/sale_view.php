<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo sprintf($this->lang->line('text_order_view_id'), $sale_id); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('text_order'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_order_view'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>sale/sale" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_return'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
		  <li class=""><a data-toggle="tab" href="#shipping"><?php echo $this->lang->line('tab_shipping'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#store"><?php echo $this->lang->line('tab_store'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
                <div class="col-sm-10"><input type="text" name="tracking" value="<?php echo $tracking; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
			    <div class="col-sm-10">
				  <select name="status_id" class="form-control" disabled>
				    <?php foreach($statuses as $status) { ?>
					  <?php if($status['id'] == $status_id) { ?>
					  <option value="<?php echo $status['id']; ?>" selected><?php echo $status['name'] ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $status['id']; ?>"><?php echo $status['name'] ?></option>
					  <?php } ?>
				    <?php } ?>
				  </select>
			    </div>
			  </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_note'); ?></label>
                <div class="col-sm-10"><textarea name="note" rows="6" cols="50" class="form-control summernote" disabled><?php echo $note; ?></textarea></div>
              </div>
			  <div class="hr-line-dashed"></div>
              <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_label'); ?></label>
                <div class="col-sm-10">
				  <div class="plabel">
				    <?php if($label) { ?>
					  <img src="<?php echo $label; ?>" class="label-img" />
					  <a href="<?php echo $label; ?>" class="btn btn-primary btn-label" download><i class="fa fa-download"></i></a>
					<?php } ?>
				  </div>  
                </div>				  
              </div> 
			  <div class="hr-line-dashed"></div>			  
			</div>
		  </div>
		  <div id="customer" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10"><input type="text" name="name" value="<?php echo $name; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street'); ?></label>
                <div class="col-sm-10"><input type="text" name="street" value="<?php echo $street; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_street2'); ?></label>
                <div class="col-sm-10"><input type="text" name="street2" value="<?php echo $street2; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_city'); ?></label>
                <div class="col-sm-10"><input type="text" name="city" value="<?php echo $city; ?>" class="form-control" disabled></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_state'); ?></label>
                <div class="col-sm-10"><input type="text" name="state" value="<?php echo $state; ?>" class="form-control" disabled></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_country'); ?></label>
                <div class="col-sm-10"><input type="text" name="country" value="<?php echo $country; ?>" class="form-control" disabled></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_zipcode'); ?></label>
                <div class="col-sm-10"><input type="text" name="zipcode" value="<?php echo $zipcode; ?>" class="form-control" disabled></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_phone'); ?></label>
                <div class="col-sm-10"><input type="text" name="phone" value="<?php echo $phone; ?>" class="form-control" disabled></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		  <div id="product" class="tab-pane">
			<div class="panel-body">
			  <table id="ptable" class="table table-bordered">
			    <thead>
				  <tr>
				    <th style="width: 27%"><?php echo $this->lang->line('column_product_name'); ?></th>
				    <th style="width: 27%"><?php echo $this->lang->line('column_upc'); ?></th>
				    <th style="width: 27%"><?php echo $this->lang->line('column_sku'); ?></th>
				    <th style="width: 19%"><?php echo $this->lang->line('column_quantity'); ?></th>
				  </tr>
			    </thead>
			    <tbody>
				  <?php $count = 0; ?>
				  <?php if($sale_products) { ?>
				    <?php foreach($sale_products as $sale_product) { ?>
				    <tr id="row<?php echo $count; ?>">
				      <td class="text-left"><input name="sale_product[<?php echo $count; ?>][product_id]" type="hidden" value="<?php echo $sale_product['product_id']; ?>"><div style="text-align:left;"><?php echo $sale_product['name']; ?></div></td>
				      <td class="text-left"><?php echo $sale_product['upc']; ?></td>
				      <td class="text-left"><?php echo $sale_product['sku']; ?></td>
				      <td><input class="form-control text-center" name="sale_product[<?php echo $count; ?>][quantity]" value="<?php echo $sale_product['quantity']; ?>" onClick="this.select();" disabled></td>
					</tr>
				    <?php $count++; ?>
				    <?php } ?>
				  <?php } ?>
			    </tbody>
			  </table> 	
			</div>
		  </div>
		  <div id="shipping" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_provider'); ?></label>
                <div class="col-sm-10">
				  <select name="shipping_provider" class="form-control" disabled>
				    <option value=""></option>
				    <?php foreach($shipping_providers as $provider) { ?>
					  <?php if($provider['code'] == $shipping_provider) { ?>
					  <option value="<?php echo $provider['code']; ?>" selected><?php echo $provider['name']; ?></option>
					  <?php } else { ?>
					  <option value="<?php echo $provider['code']; ?>"><?php echo $provider['name']; ?></option>
					  <?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div> 
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_shipping_service'); ?></label>
                <div class="col-sm-10">
				  <select name="shipping_service" class="form-control" disabled>
				    <option value=""></option>
				    <?php foreach($shipping_services as $service) { ?>
					<?php if($service['code'] == $shipping_service) { ?>
					<option value="<?php echo $service['code']; ?>" selected><?php echo $service['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $service['code']; ?>"><?php echo $service['name']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>  	
			</div>
		  </div>
		  <div id="store" class="tab-pane">
			<div class="panel-body">
		      <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store'); ?></label>
                <div class="col-sm-10">
				  <select name="store_id" name="store_id" class="form-control" disabled>
				    <option value=""></option>
				    <?php foreach($stores as $store) { ?>
				    <?php if($store['store_id'] == $store_id) { ?>
				    <option value="<?php echo $store['store_id']; ?>" selected><?php echo $store['name']; ?></option>
				    <?php } else { ?>
				    <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
				    <?php } ?>
				    <?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_store_order_id'); ?></label>
                <div class="col-sm-10"><input type="text" name="store_sale_id" value="<?php echo $store_sale_id; ?>" class="form-control" disabled></div>
              </div> 
			  <div class="hr-line-dashed"></div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	$('.summernote').summernote('disable');
});
</script>
<?php echo $footer; ?>
		