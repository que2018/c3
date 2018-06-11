<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_refund'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>inventory/refund"><?php echo $this->lang->line('text_inventory'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_refund'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>assets/file/export/refund.xlsx" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_download'); ?>" class="btn btn-success btn-download" download><i class="fa fa-download"></i></a>
    <a href="<?php echo base_url(); ?>inventory/refund/add"  data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_refund_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="form-horizontal">
		    <div class="row">
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-4 control-label"><?php echo $this->lang->line('entry_location'); ?></label>
			      <div class="col-sm-8"><input name="location" class="form-control" value="<?php echo $filter_location; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_upc'); ?></label>
			      <div class="col-sm-9"><input name="upc" class="form-control" value="<?php echo $filter_upc; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-2">
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><?php echo $this->lang->line('entry_sku'); ?></label>
			      <div class="col-sm-9"><input name="sku" class="form-control" value="<?php echo $filter_sku; ?>"></div>
			    </div>
			  </div>
			  <div class="col-md-3">
                <button id="btn-search" class="btn btn-success" onclick="filter()"><i class="fa fa-search"></i>&nbsp;<?php echo $this->lang->line('text_search'); ?></button>
			  </div>
		    </div>
		  </div>
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover table-non-batch dataTables-example" >
			  <thead>
				<?php if($sort == 'product.name') { ?>
				<th style="width: 18%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 18%;" class="sorting">
			      <a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_product'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.upc') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_upc; ?>"><?php echo $this->lang->line('column_upc'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'product.sku') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_sku; ?>"><?php echo $this->lang->line('column_sku'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'location.name') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_location; ?>"><?php echo $this->lang->line('column_location'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'refund.batch') { ?>
				<th style="width: 14%;" class="sorting_<?php echo strtolower($order); ?>">
			      <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14%;" class="sorting">
			      <a href="<?php echo $sort_batch; ?>"><?php echo $this->lang->line('column_batch'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'refund.quantity') { ?>
				<th style="width: 10%;" class="sorting_<?php echo strtolower($order); ?>">
				  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 10%;" class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
				<?php } ?>
				<th class="sorting">
			      <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
				</th>
			  </thead>
			  <tbody>
				<?php if($refunds) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($refunds as $refund) { ?>
					<tr>
					  <td>
					    <a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $refund['product_id']; ?>" target="_blank"><?php echo $refund['product']; ?></a>
						<div class="detail" style="top: <?php echo $offset * 50 + 170; ?>px;">
						  <table class="table">
						    <thead>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_upc'); ?></th>
							  <th style="width: 50%;"><?php echo $this->lang->line('column_sku'); ?></th>
							</thead>
							<tbody>
							  <tr>
							    <td><?php echo $refund['upc']; ?></td>
							    <td><?php echo $refund['sku']; ?></td>
							  </tr>
							</tbody>
						  </table>
						</div>
					  </td>
					  <td><?php echo $refund['upc']; ?></td>
					  <td><?php echo $refund['sku']; ?></td>
					  <td><?php echo $refund['location']; ?></td>
					  <td><?php echo $refund['batch']; ?></td>
					  <td><?php echo $refund['quantity']; ?></td>
					  <td class="text-center">
					    <a href="<?php echo base_url(); ?>inventory/refund/edit?refund_id=<?php echo $refund['refund_id']; ?>" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" data="<?php echo $refund['refund_id']; ?>" onclick="delete_refund(this, <?php echo $refund['refund_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>							  
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
		    </table>
		  </div>
		  <div class="pagination-block">
			<div class="pull-left"><?php echo $results; ?></div>
		    <div class="pull-right"><?php echo $pagination; ?></div>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
function filter() {	
	loaction      = $('input[name=\'location\']').val();
	sku           = $('input[name=\'sku\']').val();	
	upc           = $('input[name=\'upc\']').val();	

	url = '<?php echo $filter_url; ?>';
	
	if(loaction)
		url += '&filter_location=' + loaction;

	if(sku)
		url += '&filter_sku=' + sku;
	
	if(upc)
		url += '&filter_upc=' + upc;
	
	window.location.href = url;
}
</script>
<script>
$(document).ready(function() {
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			$('#btn-search').trigger('click');
		}
	});
});
</script>
<script>
function delete_refund(handle, refund_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>inventory/refund/delete?refund_id=' + refund_id,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			complete: function() {
				$(handle).html('<i class="fa fa-trash"></i>');
			},
			success: function(json) {					
				if(json.success) {
					$.ajax({
						url: '<?php echo $reload_url; ?>',
						dataType: 'html',
						success: function(html) {					
							$('.ibox-content').html(html);
						},
					});
				} else {
					$('#alert-error span').html(json.message);		
					$('#alert-error').show();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>
<script>
$(document).on({
	mouseenter: function () {
		$(this).find('.detail').show();
	},
	mouseleave: function () {
	   $(this).find('.detail').hide();
	}
}, 'td:nth-child(1)');
</script>
<?php echo $footer; ?>	
		