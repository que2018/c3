<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_client_list'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>client/client"><?php echo $this->lang->line('text_client'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_client_list'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>client/client/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <div id="alert-error" class="alert alert-danger" style="display:none;"><button type="button" class="close" data-dismiss="alert">&times;</button><span></span></div>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_client_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover dataTables-example" >
			  <thead>
				<?php if($sort == 'name') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'company') { ?>
				<th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_company; ?>"><?php echo $this->lang->line('column_company'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 25%;" class="sorting">
					<a href="<?php echo $sort_company; ?>"><?php echo $this->lang->line('column_company'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'email') { ?>
				<th style="width: 25%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 20%;" class="sorting">
					<a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'phone') { ?>
				<th style="width: 15%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 15%;" class="sorting">
					<a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
				</th>
				<?php } ?>
				<th></th>
			  </thead>
			  <tbody>
				<?php if($clients) { ?>
				  <?php $offset = 0; ?>
				  <?php foreach($clients as $client) { ?>
					<tr>
					  <td>
					    <span><?php echo $client['name']; ?></span>
					    <div class="detail" style="top: <?php echo $offset * 50 + 120; ?>px;">
						  <table class="table">
						    <thead>
							  <tr>
							    <td><strong><?php echo $this->lang->line('entry_balance'); ?></strong></td>
								<td><?php echo $client['balance']; ?></td>
							  </tr>
							  <tr>
							    <td><strong><?php echo $this->lang->line('entry_volume_total'); ?></strong></td>
								<td><?php echo $client['volume_total']; ?></td>
							  </tr>
						    </thead>
						  </table>
					    </div>
					  </td>
					  <td><?php echo $client['company']; ?></td>
					  <td><?php echo $client['email']; ?></td>
					  <td><?php echo $client['phone']; ?></td>
					  <td style="text-align: center">
						<a href="<?php echo base_url(); ?>client/client/edit?client_id=<?php echo $client['client_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_client(this, <?php echo $client['client_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
					<?php $offset++; ?>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="company" placeholder="<?php echo $this->lang->line('column_company'); ?>" value="<?php echo $filter_company; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="email" placeholder="<?php echo $this->lang->line('column_email'); ?>" value="<?php echo $filter_email; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="phone" placeholder="<?php echo $this->lang->line('column_phone'); ?>" value="<?php echo $filter_phone; ?>" /></th>
				  <th></th>
				</tr>
			  </tfoot>
		    </table>
		  </div>
		  <div class="pagination-block">
			<div class="pull-left"><?php echo $results; ?></div>
		    <div class="pull-right"><?php echo $pagination; ?></div>
		  </div>
	    </div>
	  </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
	$(document).keypress(function (e) {
		if(e.which == 13)  
		{
			name     = $("input[name='name']").val();	
			company  = $("input[name='company']").val();
			email    = $("input[name='email']").val();
			phone    = $("input[name='phone']").val();

			url = '<?php echo $filter_url; ?>';
			
			if(name)
				url += '&filter_name=' + name;
			
			if(company)
				url += '&filter_company=' + company;
			
			if(email)
				url += '&filter_email=' + email;
			
			if(phone)
				url += '&filter_phone=' + phone;
			
			window.location.href = url;
		}
	});
});
</script>
<script>
function delete_client(handle, client_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>client/client/delete?client_id=' + client_id,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
			},
			complete: function() {
				$(handle).html('<i class="fa fa-trash"></i>');
			},
			success: function(json) {					
				if(json.success) {
					$.ajax({
						url: '<?php echo $reload_url; ?>',
						dataType: 'html',
						success: function(html) {					
							$('.ibox-content').html(html);
						},
					});
				} else {
					html = '';
					
					$.each(json.messages, function(i, message) {				
						html += message + '<br>';
					});
					
					$('#alert-error span').html(html);
					$('#alert-error').show();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>
<script>
$(document).ready(function() {
	$('td:first-child').hover(function() {
		$(this).find('.detail').show();
	}, function() {
		$(this).find('.detail').hide();
	});
});
</script>
<?php echo $footer; ?>
		
		