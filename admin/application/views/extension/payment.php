<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line("text_payment"); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/payment"><?php echo $this->lang->line('text_extension'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_payment'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_payment_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
			<table class="table table-bordered table-hover">
			  <thead>
				<tr>
				  <th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_name'); ?></th>
				  <th class="text-left" style="width: 25%;"><?php echo $this->lang->line('column_status'); ?></th>
				  <th class="text-right" style="width: 25%;"><?php echo $this->lang->line('column_sort_order'); ?></th>
				  <th class="text-right" style="width: 25%;"><?php echo $this->lang->line('column_action'); ?></th>
				</tr>
			  </thead>
			  <tbody>
				<?php if ($payments) { ?>
				<?php foreach ($payments as $payment) { ?>
				<tr>
				  <td class="text-left"><?php echo $payment['name']; ?></td>
				  <td class="text-left"><?php echo $payment['status']; ?></td>
				  <td class="text-right"><?php echo $payment['sort_order']; ?></td>
				  <td class="text-right">
				    <?php if ($payment['installed']) { ?>
					  <a href="<?php echo base_url('payment/' . $payment['code']); ?>" class="btn btn-primary  btn-edit"><i class="fa fa-pencil"></i></a>
					<?php } else { ?>
					  <button type="button" class="btn btn-primary btn-edit" disabled="disabled"><i class="fa fa-pencil"></i></button>
					<?php } ?>
					<?php if (!$payment['installed']) { ?>
					  <a href="<?php echo base_url('extension/payment/install?code=' . $payment['code']); ?>" class="btn btn-success"><i class="fa fa-plus-circle"></i></a>
					<?php } else { ?>
					  <a href="<?php echo base_url('extension/payment/uninstall?code=' . $payment['code']); ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></a>
					<?php } ?></td>
				</tr>
				<?php } ?>
				<?php } else { ?>
				<tr>
				  <td class="text-center" colspan="4"><?php echo $this->lang->line('text_no_payments'); ?></td>
				</tr>
				<?php } ?>
			  </tbody>
			</table>
		  </div>
        </div>
      </div>
	</div>
  </div>
</div>	
<?php echo $footer; ?>