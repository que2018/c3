<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_information_add'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/setting"><?php echo $this->lang->line('text_system'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>setting/information"><?php echo $this->lang->line('text_information'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_information_add'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <button data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_save'); ?>" class="btn btn-primary btn-submit" onclick="$('form').submit()"><i class="fa fa-save"></i></button>
    <a href="<?php echo base_url(); ?>setting/information" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_cancel'); ?>" class="btn btn-default btn-return"><i class="fa fa-reply"></i></a>
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
		  <li class="active"><a data-toggle="tab" href="#content"><?php echo $this->lang->line('tab_content'); ?></a></li>
		  <li><a data-toggle="tab" href="#data"><?php echo $this->lang->line('tab_data'); ?></a></li>
		</ul>
		<div class="tab-content">
		  <div id="content" class="tab-pane active">
			<div class="panel-body">
			  <ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                <li><a data-toggle="tab" href="#language<?php echo $language['language_id']; ?>" ><?php echo $language['name']; ?></a></li>
                <?php } ?>
              </ul>
			  <div class="tab-content">
			    <?php foreach ($languages as $language) { ?>
				  <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
				    <div class="panel-body">
					  <div class="form-group">
					    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_title'); ?></label>
					    <div class="col-sm-10">
					      <input type="text" name="content[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($content[$language['language_id']])?$content[$language['language_id']]['title']:''; ?>" class="form-control" />
					    </div>
				      </div>
					  <div class="hr-line-dashed"></div>
				      <div class="form-group">
					    <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_content'); ?></label>
					    <div class="col-sm-10">
					      <textarea name="content[<?php echo $language['language_id']; ?>][content]" class="form-control summernote"><?php echo isset($content[$language['language_id']])?$content[$language['language_id']]['content']:''; ?></textarea>
					    </div>
				      </div>
				    </div>
				  </div>
			    <?php } ?>
			  </div>
	        </div>
		  </div>
		  <div id="data" class="tab-pane">
			<div class="panel-body">
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_front'); ?></label>
                <div class="col-sm-10">
			      <select name="front" class="form-control">
				    <?php if($front) { ?>
				    <option value="1" selected><?php echo $this->lang->line('text_yes'); ?></option>
				    <option value="0"><?php echo $this->lang->line('text_no'); ?></option>
				    <?php } else { ?>
				    <option value="1"><?php echo $this->lang->line('text_yes'); ?></option>
				    <option value="0" selected><?php echo $this->lang->line('text_no'); ?></option>
				    <?php } ?>
				  </select>
				</div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_redirect'); ?></label>
                <div class="col-sm-10"><input name="redirect" value="<?php echo $redirect; ?>" class="form-control"></div>
              </div>
			  <div class="hr-line-dashed"></div>
			  <div class="form-group">
		        <label class="col-sm-2 control-label"><?php echo $this->lang->line('entry_status'); ?></label>
                <div class="col-sm-10">
			      <select name="status" class="form-control">
				    <?php if($status) { ?>
				    <option value="1" selected><?php echo $this->lang->line('text_enabled'); ?></option>
				    <option value="0"><?php echo $this->lang->line('text_disabled'); ?></option>
				    <?php } else { ?>
				    <option value="1"><?php echo $this->lang->line('text_enabled'); ?></option>
				    <option value="0" selected><?php echo $this->lang->line('text_disabled'); ?></option>
				    <?php } ?>
				  </select>
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
	$('#language a:first').tab('show');
});
</script>
<script>
$(document).ready(function() {
	$('.summernote').summernote();
});
</script>
<?php echo $footer; ?>
