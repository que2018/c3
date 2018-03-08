<html>
<head>
  <script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/plugins/barcode/jquery-barcode.js"></script>
  <style>
	.left {
		float: left;
		font-weight:bold;
		font-size: <?php echo $location_barcode_batch_name_size; ?>px;
		line-height: <?php echo $location_barcode_batch_height; ?>px;
	}
	.right {
		float: left;
	}
	.barcode-wrap {
		display: block;
		margin: 0 auto;
		width: <?php echo $location_barcode_batch_width; ?>px;
		height: <?php echo $location_barcode_batch_height + $location_barcode_batch_code_size; ?>px;
		margin-top: <?php echo $location_barcode_batch_margin; ?>px;
	}
	#code {
		text-align: center;
		font-size: <?php echo $location_barcode_batch_code_size; ?>px;
	}
	@media print {
	   .page-break {
			page-break-after: always;
		}
	}
  </style>
</head>
<body> 
<div class="barcodes"> 
  <?php foreach($locations as $i => $location) { ?>
    <?php if((($i+1) % $location_barcode_batch_page_item == 0) && ($i > 0)) { ?>
	<div class="barcode-wrap page-break">
	<?php } else { ?>
	<div class="barcode-wrap">
	<?php } ?>
	  <div class="left"><?php echo $location['name']; ?></div>
	  <div class="right">
	    <div id="barcode<?php echo $i; ?>"></div>
	    <div id="code"><?php echo $location['code']; ?></div>
	  </div>
	  <script type="text/javascript"> 
		value = '<?php echo $location['code']; ?>'

		btype = 'code128';

		settings = {
			output: 'css',
			bgColor: '#ffffff',
			color: '#000000',
			barWidth: 3,
			barHeight: <?php echo $location_barcode_batch_height; ?>,
			moduleSize: 5,
			posX: <?php echo $location_barcode_batch_posx; ?>,
			posY: <?php echo $location_barcode_batch_posy; ?>,
			addQuietZone: 1,
			showHRI:false
		};

		$('#barcode<?php echo $i; ?>').html('').show().barcode(value, btype, settings);	
	  </script>
	</div>
  <?php } ?>
</div>
</body>
</html>
		