<div class="menu">
  <?php if($informations) { ?>
    <div class="container-fluid">
      <nav id="menu" class="navbar">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <?php foreach ($informations as $information) { ?>
		      <li><a href="<?php echo base_url(); ?>information/information?information_id=<?php echo $information['information_id']; ?>"><?php echo $information['title']; ?></a></li> 
            <?php } ?>
          </ul>
        </div>
      </nav>
    </div>
  <?php }?>
</div>
<div class="content">
  <div class="container-fluid">
    <div class="row">
	  <div class="col-md-12">
        <?php echo $content; ?>
	  </div>
	</div>
  </div>
</div>