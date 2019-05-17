<html>
<head>
  <title><?php echo $this->lang->line('text_checkin_print'); ?></title> 
  <script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/plugins/barcode/jquery-barcode.js"></script>
</head>
<body>
  <div style="height: 100px;">
    <div style="margin-top: 0px; margin-bottom: 20px; font-size: 25px; float: left;"><?php echo $title; ?></div>
    <div id="barcode" style="float: right;"></div>
  </div>
  <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
    <thead>
	  <tr>
	    <td style="width: 20%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_product_name'); ?></th>
	    <td style="width: 16%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_upc'); ?></th>
	    <td style="width: 16%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_sku'); ?></th>
	    <td style="width: 16%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_location'); ?></th>
	    <td style="width: 16%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_batch'); ?></th>
	    <td style="width: 16%; font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $this->lang->line('column_quantity'); ?></th>
	  </tr>
    </thead>
    <tbody>
	  <?php if($checkin_products) { ?>
	    <?php foreach($checkin_products as $checkin_product) { ?>
		  <tr>
		    <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $checkin_product['name']; ?></div></td>
		    <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $checkin_product['upc']; ?></td>
		    <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $checkin_product['sku']; ?></td>
		    <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $checkin_product['location_name']; ?></td>
		    <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $checkin_product['batch']; ?></td>
		    <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $checkin_product['quantity']; ?></td>
		  </tr>
	    <?php } ?>
	  <?php } ?>
    </tbody>
  </table>
<script type="text/javascript"> 
$(document).ready(function() {
	value = '<?php echo $checkin_id; ?>';

	btype = 'code128';

	settings = {
		output:'css',
		bgColor:'#ffffff',
		color:'#000000',
		barWidth:1,
		barHeight:50,
		moduleSize:5,
		posX:10,
		posY:20,
		addQuietZone:1,
		showHRI:false
	};

	$('#barcode').html('').show().barcode(value, btype, settings);	  
});
</script> 
</body>
</html>



