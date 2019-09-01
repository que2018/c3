<div id="label">
<?php if($ext == 'pdf') { ?>
  <embed src="<?php echo $label_img; ?>" width="100%" height="700px" />
<?php } else { ?>
  <?php if($width_type) { ?>
  <img style="width: <?php echo $width; ?>px; top: <?php echo $margin_top; ?>px;" src="<?php echo $label_img; ?>">
  <?php } else { ?>
  <img style="width: <?php echo $width; ?>%; top: <?php echo $margin_top; ?>px;" src="<?php echo $label_img; ?>">
  <?php } ?>
<?php } ?>
</div>




		
		