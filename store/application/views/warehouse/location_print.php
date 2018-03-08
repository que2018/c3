<script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/barcode/jquery-barcode.js"></script>
<link href="<?php echo base_url(); ?>assets/css/app/warehouse/location_edit.css" rel="stylesheet"> 
<style>
.left {
	float: left;
	font-weight:bold;
	line-height: <?php echo $location_barcode_height; ?>px;
	font-size: <?php echo $location_barcode_name_size; ?>px;
}
.right {
	float: left;
}
#barcode-wrap {
	margin-left: <?php echo $location_barcode_posx; ?>px;
	margin-top: <?php echo $location_barcode_posy; ?>px;
}
#code {
	text-align: center;
    margin-top: 8px;
	font-size: <?php echo $location_barcode_code_size; ?>px;
}
</style>
<div id="barcode-wrap">
  <div class="left"><?php echo $name; ?></div>
  <div class="right">
    <div id="barcode"></div>
    <div id="code"><?php echo $code; ?></div>
  </div>
</div>
<script type="text/javascript"> 
$(document).ready(function() {
	value = '<?php echo $code; ?>'

	btype = 'code128';

	settings = {
		output: 'css',
		bgColor: '#ffffff',
		color: '#000000',
		barWidth: <?php echo $location_barcode_width; ?>,
		barHeight: <?php echo $location_barcode_height; ?>,
		moduleSize: 5,
		posX: 10,
		posY: 20,
		addQuietZone: 1,
		showHRI:false
	};

	$('#barcode').html('').show().barcode(value, btype, settings);	
	
	width = $('#barcode').width();
	$('#code').width(width);
});
</script>
		
		