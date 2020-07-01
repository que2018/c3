<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_add_checkout_group'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>check/checkout"><?php echo $this->lang->line('text_checkout_group'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_add_checkout_group'); ?></strong></li>
	</ol>
	<div class="button-group tooltip-demo">
	  <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($error) { ?>
        <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
      <?php } ?>
	  <div class="ibox float-e-margins">
	    <div class="ibox-content">
		  <div id="table-content">
		    <div class="table-responsive">
			  <form method="post" class="form-horizontal">
		      <table id="sale" class="table table-striped table-bordered table-hover table-checkout">
			    <thead>
			      <tr>
				    <th style="width: 60%;"><?php echo $this->lang->line('column_sale_id'); ?></th>
				    <th><center><?php echo $this->lang->line('column_action'); ?></center></th>
			      </tr>
			    </thead>
			    <tbody>
				  <?php $sale_row = 0; ?>
			      <?php if($sale_ids) { ?>
				    <?php foreach($sale_ids as $sale_id) { ?>
					  <tr>
						<td class="text-right"><input type="text" name="sale_id[<?php $sale_row; ?>]" value="<?php echo $sale_id; ?>" class="form-control" /></td>
					    <td class="text-center">
						  <button class="btn btn-danger btn-delete" onclick="delete_sale(this)"><i class="fa fa-trash"></i></button>
					    </td>
					  </tr>
					  <?php $sale_row++; ?>
				    <?php } ?>
			      <?php } ?>
			    </tbody>
				<tfoot>
				  <tr>
					<td colspan="1"></td>
					<td class="text-center"><button type="button" onclick="addSale();" data-toggle="tooltip" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
				  </tr>
				</tfoot>
		      </table>
			  </form>
		    </div>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
var sale_row = <?php echo $sale_row; ?>;

function addSale() {
	html  = '<tr id="sale-row' + sale_row + '">';
	html += '  <td class="text-right"><input type="text" name="sale_id[' + sale_row + ']" value="" class="form-control" /></td>';
	html += '  <td class="text-center"><button type="button" onclick="$(\'#sale-row' + sale_row  + '\').remove();" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';

	$('#sale tbody').append(html);

	sale_row++;
}
</script> 
<?php echo $footer; ?>
		