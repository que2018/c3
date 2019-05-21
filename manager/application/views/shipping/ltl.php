<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_ltl'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/shipping"><?php echo $this->lang->line('text_shipping'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_ltl'); ?></strong></li>
	</ol>
	<button type="button" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></a>
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
		    <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		    <li><a data-toggle="tab" href="#service"><?php echo $this->lang->line('tab_service'); ?></a></li>
		  </ul>
		  <div class="tab-content">
		    <div id="general" class="tab-pane active">
			  <div class="panel-body">
				<div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
				  <div class="col-sm-10">
				    <select name="ltl_status" class="form-control">
					  <?php if($ltl_status) { ?>
					    <option value="1" selected><?php echo $this->lang->line('text_enabled'); ?></option>
						<option value="0"><?php echo $this->lang->line('text_disabled'); ?></option>
					  <?php } else { ?>
					    <option value="1"><?php echo $this->lang->line('text_enabled'); ?></option>
						<option value="0" selected><?php echo $this->lang->line('text_disabled'); ?></option>
					  <?php } ?>
					</select>
				  </div>
                </div>
				<div class="hr-line-dashed"></div>
                <div class="form-group">
		          <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_sort_order'); ?></label>
				  <div class="col-sm-10"><input name="ltl_sort_order" value="<?php echo $ltl_sort_order; ?>" class="form-control"></div>	  
			    </div>		
			  </div>
		    </div>
			<div id="service" class="tab-pane">
			  <div class="panel-body">
			   	<div class="table-responsive">
                  <table id="ltl_services" class="table table-striped table-bordered table-hover">
					<thead>
					  <tr>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_name') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_code') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_method') ?></th>
						<th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_package') ?></th>
						<th></th>
					  </tr>
					</thead>
					<tbody>
					  <?php $ltl_service_row = 0; ?>
					  <?php if($ltl_services) { ?>
						<?php foreach ($ltl_services as $ltl_service) { ?>
						<tr id="ltl-service-row<?php echo $ltl_service_row; ?>">
						  <td class="text-right"><input type="text" name="ltl_service[<?php echo $ltl_service_row; ?>][name]" value="<?php echo $ltl_service['name']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="ltl_service[<?php echo $ltl_service_row; ?>][code]" value="<?php echo $ltl_service['code']; ?>" class="form-control text" /></td>
						  <td class="text-right"><input type="text" name="ltl_service[<?php echo $ltl_service_row; ?>][method]" value="<?php echo $ltl_service['method']; ?>" class="form-control" /></td>
						  <td class="text-right"><input type="text" name="ltl_service[<?php echo $ltl_service_row; ?>][package]" value="<?php echo $ltl_service['package']; ?>" class="form-control text" /></td>
						  <td class="text-center"><button type="button" onclick="$('#ltl-service-row<?php echo $ltl_service_row; ?>').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
						</tr>
						<?php $ltl_service_row++; ?>
						<?php } ?>
					  <?php } ?>
					</tbody>
					<tfoot>
					  <tr>
						<td colspan="4"></td>
						<td class="text-center"><button type="button" onclick="addService();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
					  </tr>
					</tfoot>
                  </table>
				</div>	
			  </div>
		    </div>
		  </div>
	    </div>
	  </form>
    </div>
  </div>
</div> 
<script>
var ltl_service_row = <?php echo $ltl_service_row; ?>;

function addService() {
	html  = '<tr id="ltl-service-row' + ltl_service_row + '">';
	html += '  <td class="text-right"><input type="text" name="ltl_service[' + ltl_service_row + '][name]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="ltl_service[' + ltl_service_row + '][code]" value="" class="form-control text" /></td>';
	html += '  <td class="text-right"><input type="text" name="ltl_service[' + ltl_service_row + '][method]" value="" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="ltl_service[' + ltl_service_row + '][package]" value="" class="form-control text" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#ltl-service-row' + ltl_service_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#ltl_services tbody').append(html);

	ltl_service_row++;
}
</script> 
<?php echo $footer; ?>		
		