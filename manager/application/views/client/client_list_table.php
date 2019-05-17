<div class="table-responsive">
  <table class="table table-striped table-bordered table-hover dataTables-example" >
    <thead>
	  <?php if($sort == 'company') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_company; ?>"><?php echo $this->lang->line('column_company'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 25%;" class="sorting">
		<a href="<?php echo $sort_company; ?>"><?php echo $this->lang->line('column_company'); ?></a>
	  </th>
	  <?php } ?>
	  <?php if($sort == 'name') { ?>
	  <th style="width: 20%;" class="sorting_<?php echo strtolower($order); ?>">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
	  </th>
	  <?php } else { ?>
	  <th style="width: 20%;" class="sorting">
		<a href="<?php echo $sort_name; ?>"><?php echo $this->lang->line('column_name'); ?></a>
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
			  <span><?php echo $client['company']; ?></span>
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
		    <td><?php echo $client['name']; ?></td>
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
	   