<div id="inventory-clear" class="modal fade" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-body">
		<div class="row">
		  <div class="col-sm-12"><h3 class="m-t-none m-b"><?php echo $this->lang->line('text_alert'); ?></h3>
			<p><?php echo $this->lang->line('text_are_you_sure_clear_inventory'); ?></p>
			<div>
			  <button onClick="cancel_inventory_clear()" id="btn-cancel-clear" class="btn btn-sm btn-default pull-right m-t-n-xs"><strong><?php echo $this->lang->line('button_cancel_clear_inventory'); ?></strong></button>
			  <button onClick="confirm_inventory_clear(this)" id="btn-confirm-clear" class="btn btn-sm btn-primary pull-right m-t-n-xs"><strong><?php echo $this->lang->line('button_confirm_clear_inventory'); ?></strong></button>
			</div>
	      </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
function confirm_inventory_clear(handle) {
	$.ajax({
		url: '<?php echo base_url(); ?>inventory/inventory_ajax/clear_inventory',
		dataType: 'json',
		cache: false,
		contentType: false,
		processData: false,
		beforeSend: function() {
			$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		success: function(json) {		
			$(handle).html('<strong><?php echo $this->lang->line('button_confirm_clear_inventory'); ?></strong>');
		
			if(json.success) {
				$('.modal').modal('hide');
				
				if(json.success) {
					$.ajax({
						url: '<?php echo $reload_url; ?>',
						dataType: 'html',
						success: function(html) {					
							$('.ibox-content').html(html);
						},
					});
				}
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}
</script>
<script>
function cancel_inventory_clear(handle) {
	$('.modal').modal('hide');
}
</script>