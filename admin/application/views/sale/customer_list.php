<?php echo $header; ?>
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_customer'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>sale/sale"><?php echo $this->lang->line('text_sale'); ?></a></li>
	  <li class="active"><strong><?php echo $this->lang->line('text_customer'); ?></strong></li>
	</ol>
  </div>
  <div class="button-group tooltip-demo">
    <a href="<?php echo base_url(); ?>sale/customer/add" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('text_add'); ?>" class="btn btn-primary btn-add"><i class="fa fa-plus"></i></a>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
	<div class="col-lg-12">
	  <?php if($success) { ?>
	    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $success; ?></div>
	  <?php } ?>
	  <div class="ibox float-e-margins">
	    <div class="ibox-title">
		  <h5><?php echo $this->lang->line('text_customer_list_description'); ?></h5>
	    </div>
	    <div class="ibox-content">
		  <div class="table-responsive">
		    <table class="table table-striped table-bordered table-hover table-customer">
			  <thead>
				<?php if($sort == 'customer.name') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'client') { ?>
				<th style="width: 14.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 14.6%;" class="sorting">
					<a href="<?php echo $sort_client; ?>"><?php echo $this->lang->line('column_client'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'customer.company') { ?>
				<th style="width: 12.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_company; ?>"><?php echo $this->lang->line('column_company'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 12.6%;" class="sorting">
					<a href="<?php echo $sort_company; ?>"><?php echo $this->lang->line('column_company'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'customer.email') { ?>
				<th style="width: 22.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 22.6%;" class="sorting">
					<a href="<?php echo $sort_email; ?>"><?php echo $this->lang->line('column_email'); ?></a>
				</th>
				<?php } ?>
				<?php if($sort == 'customer.phone') { ?>
				<th style="width: 16.6%;" class="sorting_<?php echo strtolower($order); ?>">
					<a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
				</th>
				<?php } else { ?>
				<th style="width: 16.6%;" class="sorting">
					<a href="<?php echo $sort_phone; ?>"><?php echo $this->lang->line('column_phone'); ?></a>
				</th>
				<?php } ?>
				<th></th>
			  </thead>
			  <tbody>
				<?php if($customers) { ?>
				  <?php foreach($customers as $customer) { ?>
					<tr>
					  <td><?php echo $customer['name']; ?></td>
					  <td><?php echo $customer['client']; ?></td>
					  <td><?php echo $customer['company']; ?></td>
					  <td><?php echo $customer['email']; ?></td>
					  <td><?php echo $customer['phone']; ?></td>
					  <td class="text-center">
						<a href="<?php echo base_url(); ?>sale/customer/edit?customer_id=<?php echo $customer['customer_id']; ?>" class="btn btn-primary btn-edit"><i class="fa fa-pencil-square-o"></i></a>
						<button class="btn btn-danger btn-delete" onclick="delete_customer(this, <?php echo $customer['customer_id']; ?>)"><i class="fa fa-trash"></i></button>
					  </td>				
					</tr>
				  <?php } ?>
				<?php } ?>
			  </tbody>			  
			  <tfoot>
			    <tr>
				  <th class="filter-td"><input type="text" class="filter-input" name="name" placeholder="<?php echo $this->lang->line('column_name'); ?>" value="<?php echo $filter_name; ?>" /></th>
				  <th class="filter-td"><input type="text" class="filter-input" name="client" placeholder="<?php echo $this->lang->line('column_client'); ?>" value="<?php echo $filter_client; ?>" /></th>
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
			
			if(store_order_id)
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
function delete_customer(handle, customer_id) {
	if(confirm('<?php echo $this->lang->line('text_confirm_delete'); ?>')) {
		$.ajax({
			url: '<?php echo base_url(); ?>sale/customer/delete?customer_id=' + customer_id,
			cache: false,
			contentType: false,
			processData: false,
			dataType: 'json',
			beforeSend: function() {
				$(handle).html('<i class="fa fa-circle-o-notch fa-spin"></i>');
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
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
</script>
<?php echo $footer; ?>
		