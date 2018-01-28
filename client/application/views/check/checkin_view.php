<link href="<?php echo base_url(); ?>assets/css/app/check/checkin_view.css" rel="stylesheet">
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_checkin_view'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkin"><?php echo $this->lang->line('text_checkin'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_checkin_view'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <a href="<?php echo base_url(); ?>check/checkin_print?id=<?php echo $id; ?>" class="btn btn-info btn-print" target="_blank"><i class="fa fa-print"></i></a>
	<a href="<?php echo base_url(); ?>check/checkin" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>	
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
    <div class="col-lg-12">
	<div class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#fee"><?php echo $this->lang->line('tab_fee'); ?></a></li>
		  <li class=""><a data-toggle="tab" href="#note"><?php echo $this->lang->line('tab_note'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
			  <div class="container-fluid">
			    <div class="row" style="padding-bottom: 10px;">
				  <div class="col-lg-7">
				    <div class="form-group">
					  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_tracking'); ?></label>
					  <div class="col-sm-10"><input name="tracking" value="<?php echo $tracking; ?>" class="form-control" disabled></div>
				    </div>
				    <div class="hr-line-dashed"></div>
				    <div class="form-group">
					  <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
					  <div class="col-sm-10"><input name="status" value="<?php echo $this->lang->line('text_completed'); ?>" class="form-control" disabled></div>
				    </div>
				  </div>
			    </div>
			    <div class="row">
				  <div class="col-lg-12">     
				    <div class="fbox-content">
					  <table id="ptable" class="table table-bordered">
					    <thead>
						  <tr>
						    <th style="width: 30%"><?php echo $this->lang->line('column_product_name'); ?></th>
						    <th style="width: 20%"><?php echo $this->lang->line('column_upc'); ?></th>
						    <th style="width: 20%"><?php echo $this->lang->line('column_sku'); ?></th>
						    <th style="width: 10%"><?php echo $this->lang->line('column_quantity'); ?></th>
						    <th style="width: 20%"><?php echo $this->lang->line('column_location'); ?></th>
						  </tr>
					    </thead>
					    <tbody>
						  <?php $checkin_product_row = 0; ?>
						  <?php if($checkin_products) { ?>
						    <?php foreach($checkin_products as $checkin_product) { ?>
						    <tr id="row<?php echo $checkin_product_row; ?>">
						    <td class="text-left"><input name="checkin_product[<?php echo $checkin_product_row; ?>][product_id]" type="hidden" value="<?php echo $checkin_product['product_id']; ?>"><div class="text-left"><?php echo $checkin_product['product_name']; ?></div></td>
						    <td class="text-left"><?php echo $checkin_product['upc']; ?></td>
						    <td class="text-left"><?php echo $checkin_product['sku']; ?></td>
						    <td><input class="form-control text-center" name="checkin_product[<?php echo $checkin_product_row; ?>][quantity]" value="<?php echo $checkin_product['quantity']; ?>" disabled></td>
						    <td class="text-left"><?php echo $checkin_product['location']; ?></td>
							<?php $checkin_product_row ++; ?>
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
		  <div id="fee" class="tab-pane">
			<div class="panel-body">
			  <div class="table-responsive">
                <table id="checkin_fees" class="table table-striped table-bordered table-hover">
				  <thead>
					<tr>
					<td class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_name') ?></td>
					<td class="text-left" style="width: 40%;"><?php echo $this->lang->line('column_amount') ?></td>							
					<td></td>
					</tr>
				  </thead>
				  <tbody>
					<?php $checkin_fee_row = 0; ?>
					<?php if($checkin_fees) { ?>
					  <?php foreach ($checkin_fees as $checkin_fee) { ?>
					  <tr id="checkin-fee-row<?php echo $checkin_fee_row; ?>">
					    <td class="text-right"><input type="text" name="checkin_fee[<?php echo $checkin_fee_row; ?>][value]" value="<?php echo $checkin_fee['name']; ?>" class="form-control" /></td>
					    <td class="text-right"><div class="input-group"><span class="input-group-addon">$</span><input type="text" name="checkin_fee[<?php echo $checkin_fee_row; ?>][class_id]" value="<?php echo $checkin_fee['amount']; ?>" class="form-control" disabled /></div></td>
					    <td class="text-left"><button type="button" onclick="$('#checkin-fee-row<?php echo $checkin_fee_row; ?>').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					  </tr>
					  <?php $checkin_fee_row++; ?>
					  <?php } ?>
					<?php } ?>
				  </tbody>
                </table>
              </div>
			</div>
		  </div>
		  <div id="file" class="tab-pane">
			<div class="panel-body">
			  <div class="fbox-title">
				<div class="fileinput fileinput-new" data-provides="fileinput">
				  <span class="btn btn-default btn-file"><span class="fileinput-new"><?php echo $this->lang->line('button_select_file') ?></span>
				  <span class="fileinput-exists"><?php echo $this->lang->line('text_change') ?></span><input type="file" name="..." /></span>
				  <span class="fileinput-filename"></span>
				  <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">×</a>
				</div> 
			  </div>	
			  <div class="fbox-content">
			    <div class="table-responsive">
                  <table id="ftable" class="table table-bordered">
				    <thead>
					  <tr>
					    <td class="text-left" style="width: 80%;"><?php echo $this->lang->line('column_file') ?></td>
					    <td></td>
					  </tr>
				    </thead>
				    <tbody>
					<?php $checkin_file_row = 0; ?>
					<?php if($checkin_files) { ?>
					  <?php foreach ($checkin_files as $checkin_file) { ?>
					  <tr id="checkin-file-row<?php echo $checkin_file_row; ?>">
						<td class="text-right"><input name="checkin_file[<?php echo $checkin_file_row; ?>][path]" type="hidden" value="<?php echo $checkin_file['path']; ?>"><div class="text-left"><?php echo basename($checkin_file['path']); ?></div></td>
						<td class="text-left"><button type="button" onclick="$('#checkin-file-row<?php echo $checkin_file_row; ?>').remove();" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
					  </tr>
					  <?php $checkin_file_row++; ?>
					<?php } ?>
					<?php } ?>
				    </tbody>
                  </table>
                </div>
			  </div>
		    </div>
		  </div>
		  <div id="note" class="tab-pane">
			<div class="panel-body">
		      <div class="form-group">
			    <div class="col-sm-12"><textarea name="note" rows="8" cols="50" class="form-control" disabled><?php echo $note; ?></textarea></div>
			  </div>
		      <div class="hr-line-dashed"></div>
		    </div>
		  </div>
		</div>
      </div>
	</form>
	</div>
  </div>  
</div>

		
		