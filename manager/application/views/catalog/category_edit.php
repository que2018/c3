<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_category_edit'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>/catalog/category"><?php echo $this->lang->line('text_category'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_category_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group">
    <button class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>catalog/category?category_id=<?php echo $category_id; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	<?php if($error) { ?>
      <div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $error; ?></div>
    <?php } ?>
    <div id="alert-error" class="alert alert-danger" style="display:none;"><span></span><button type="button" class="close" onclick="$('#alert-error').hide()">&times;</button></div>
	<form method="post" class="form-horizontal">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#general"><?php echo $this->lang->line('tab_general'); ?></a></li>
		  <li><a data-toggle="tab" href="#data"><?php echo $this->lang->line('tab_data'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="general" class="tab-pane active">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_name'); ?></label>
                <div class="col-sm-10">
				  <input type="text" name="name" value="<?php echo $name; ?>" class="form-control">
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_description'); ?></label>
                <div class="col-sm-10"><textarea name="description" class="form-control" rows="8" cols="50"><?php echo $description; ?></textarea></div>
              </div>
			</div>
		  </div>
		  <div id="data" class="tab-pane">
		    <div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_path'); ?></label>
                <div class="col-sm-10">
				  <input type="text" name="path" value="<?php echo $path; ?>" class="form-control">
				  <input type="hidden" name="parent_id" value="<?php echo $parent_id; ?>">
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_image'); ?></label>
                <div class="col-sm-10">
				  <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" data-placeholder="<?php echo $placeholder; ?>" /></a>
				  <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />				
                </div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_top'); ?></label>
                <div class="col-sm-10">
				  <?php if($top) { ?>
				    <input type="checkbox" name="top" value="1" checked="checked">
				  <?php } else { ?>
				    <input type="checkbox" name="top" value="1">
				  <?php } ?>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_featured'); ?></label>
                <div class="col-sm-10">
				  <?php if($featured) { ?>
				    <input type="checkbox" name="featured" value="1" checked>
				  <?php } else { ?>
				    <input type="checkbox" name="featured" value="1">
				  <?php } ?>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
                <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $this->lang->line('entry_sort_order'); ?></label>
                <div class="col-sm-10">
                  <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" class="form-control" />
                </div>
              </div>
			  <div class="hr-line-dashed"></div>
			</div>
          </div>
		</div>
	  </div>
	</form>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	$('input[name=\'path\']').autocomplete({  
		'source': function(request, response) {
			filter_name = $('input[name=\'path\']').val();
					
			$.ajax({
				url: '<?php echo base_url(); ?>catalog/category/autocomplete?filter_name=' + filter_name,
				cache: false,
				contentType: false,
				processData: false,
				dataType: 'json',
				success: function(json) {
					response($.map(json, function(item) {					
						return {
							label:     item['name'],
							parent_id: item['category_id'],
							path:      item['name']
						}
					}));
				}
			});
		},
		'select': function(event, ui) {
			 $('input[name=\'path\']').val(ui.item.path); 
			 $('input[name=\'parent_id\']').val(ui.item.parent_id);
		}
	});
});
</script>
<?php echo $footer; ?>
