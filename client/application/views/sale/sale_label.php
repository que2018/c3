<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
<link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="screen" />
<link href="<?php echo base_url(); ?>assets/css/style.css" type="text/css" rel="stylesheet" media="screen" />
<link href="<?php echo base_url(); ?>assets/css/app/sale/sale_label.css" rel="stylesheet"> 
</head>
<body>
<div id="content" class="content">
  <img id="loading" class="loading" src="<?php echo base_url(); ?>assets/image/loading.gif" >
  <div id="msg"></div>
</div>
<button class="btn btn-primary btn-print" onClick="printLabel()"><?php echo $this->lang->line('button_print'); ?></button>
<script>
$(document).ready(function() {
	
	data = new FormData();
	data.append("id", '<?php echo $id; ?>');
	
	$.ajax({
		url: '<?php echo base_url(); ?>sale/label/check',
		type: 'post',
		data: data,
		dataType: 'json',
		cache: false,
		contentType: false,
		processData: false,
		beforeSend: function() {
			$('#loading').show();
		},
		complete: function() {},
		success: function(json) {			
			if(json.success) 
			{				
				data = new FormData();
				data.append("id", '<?php echo $id; ?>');
							
				$.ajax({
					url: '<?php echo base_url(); ?>sale/label/execute',
					type: 'post',
					data: data,
					dataType: 'html',
					cache: false,
					contentType: false,
					processData: false,
					complete: function() {
						$('#loading').hide();
					},
					success: function(html) {						
						$('#content').html(html);
					},
					error: function(xhr, ajaxOptions, thrownError) {						
						$('#msg').html(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			} 
			else 
			{
				$('#loading').hide();
				$('#msg').html(json.msg);
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			$("#msg").html(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});
</script>
</body>
</html>