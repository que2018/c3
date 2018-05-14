<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_platform'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>extension/platform"><?php echo $this->lang->line('text_extension'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_platform'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_platform_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
			<table class="table table-bordered table-hover">
			  <thead>
				<tr>
				  <th class="text-left" style="width: 20%;"><?php echo $this->lang->line('column_name'); ?></th>				  
				  <th class="text-left" style="width: 30%;"><?php echo $this->lang->line('column_logo'); ?></th>
				  <th class="text-left" style="width: 15%;"><?php echo $this->lang->line('column_status'); ?></th>
				  <th class="text-right" style="width: 15%;"><?php echo $this->lang->line('column_sort_order'); ?></th>
				  <th class="text-right" style="width: 20%;"><?php echo $this->lang->line('column_action'); ?></th>
				</tr>
			  </thead>
			  <tbody>
				<?php if ($platforms) { ?>
				<?php foreach ($platforms as $platform) { ?>
				<tr>
				  <td class="text-left"><?php echo $platform['name']; ?></td>				  
				  <td class="text-left"><img src="<?php echo base_url() . $platform['logo']; ?>" class="img-responsive img-logo" /></td>
				  <td class="text-left"><?php echo $platform['status']; ?></td>
				  <td class="text-right"><?php echo $platform['sort_order']; ?></td>
				  <td class="text-right">
				    <?php if ($platform['installed']) { ?>
					  <a href="<?php echo base_url('platform/' . $platform['code']); ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil"></i></a>
					<?php } else { ?>
					  <button type="button" class="btn btn-primary btn-edit" disabled="disabled"><i class="fa fa-pencil"></i></button>
					<?php } ?>
					<?php if (!$platform['installed']) { ?>
					  <a href="<?php echo base_url('extension/platform/install?code=' . $platform['code']); ?>" class="btn btn-success"><i class="fa fa-plus-circle"></i></a>
					<?php } else { ?>
					  <a href="<?php echo base_url('extension/platform/uninstall?code=' . $platform['code']); ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></a>
					<?php } ?></td>
				</tr>
				<?php } ?>
				<?php } else { ?>
				<tr>
				  <td class="text-center" colspan="4"><?php echo $this->lang->line('text_no_platforms'); ?></td>
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