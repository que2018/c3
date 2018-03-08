<link href="<?php echo base_url(); ?>assets/css/app/store/store_list.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_store_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/store/store"><?php echo $this->lang->line('text_store'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_store_list'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_store_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'name') { ?>
				<th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 40%;" class="sorting">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'platform') { ?>
				<th style="width: 40%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 40%;" class="sorting">
			      <a href="<?php echo $sort_platform; ?>"><?php echo $this->lang->line('column_platform'); ?></a>
				</th>
				<?php } ?>
				<th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			  </thead>
			  <tbody>
				<?php if($stores) { ?>
				  <?php foreach($stores as $store) { ?>
					<tr>
					  <td><?php echo $store['name']; ?></td>
					  <td><?php echo $store['platform']; ?></td>
					  <td style="text-align: center">
					    <a href="<?php echo base_url('store/store/view?id=' . $store['id']); ?>" class="btn btn-primary btn-edit"><i class="fa fa-eye"></i></a>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="platform" placeholder="<?php echo $this->lang->line('column_platform'); ?>" value="<?php echo $filter_platform; ?>" /></th>
				  <th></th>
				</tr>
			  </tfoot>
		    </table>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	//filter
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			name      = $('input[name=\'name\']').val();
			platform  = $('input[name=\'platform\']').val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
		
			if(platform)
				url += '&filter_platform=' + platform;
			
			window.location.href = url;
		}
	});
});
</script>		