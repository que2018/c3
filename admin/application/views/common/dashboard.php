<?php echo $header; ?>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.tooltip.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.spline.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.pie.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.symbol.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.time.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/app/common/dashboard.css" rel="stylesheet"> 
<div class="wrapper wrapper-content">
  <div class="row">
    <div class="col-lg-3">
	  <a href="<?php echo base_url(); ?>report/sale/product">
	    <div class="ibox float-e-margins">
		  <div class="ibox-title">
		    <span class="label label-success pull-right"><?php echo $this->lang->line('text_monthly'); ?></span>
		    <h5><?php echo $this->lang->line('text_income'); ?></h5> 
		  </div>
		  <div class="ibox-content">
		    <h1 class="no-margins"><?php echo $sale_income; ?></h1>
		    <div class="stat-percent font-bold text-success"><?php echo $sale_income_trend; ?>%
		    <?php if($sale_income_trend >= 0) { ?>
		    <i class="fa fa-level-up"></i>
		    <?php } else { ?>
		    <i class="fa fa-level-down"></i>
		    <?php } ?>
		    </div> 
		    <small><?php echo $this->lang->line('text_total_income'); ?></small> 
	      </div>
	    </div>
	  </a>
    </div>
	<div class="col-lg-3">
	  <a href="<?php echo base_url(); ?>sale/sale">
	    <div class="ibox float-e-margins">
		  <div class="ibox-title"> 
		    <span class="label label-info pull-right"><?php echo $this->lang->line('text_monthly'); ?></span>
		    <h5><?php echo $this->lang->line('text_orders'); ?></h5> 
		  </div>
		  <div class="ibox-content">
		    <h1 class="no-margins"><?php echo $sale_total; ?></h1>
		    <div class="stat-percent font-bold text-info"><?php echo $sale_total_trend; ?>%
		    <?php if($sale_total_trend >= 0) { ?>
		    <i class="fa fa-level-up"></i>
		    <?php } else { ?>
		    <i class="fa fa-level-down"></i>
		    <?php } ?>
		    </div> 
		    <small><?php echo $this->lang->line('text_new_orders'); ?></small> 
		  </div>
	    </div>
	  </a>
	</div>
	<div class="col-lg-3">
	  <a href="<?php echo base_url(); ?>setting/log/activity_log">
	    <div class="ibox float-e-margins">
	      <div class="ibox-title"><span class="label label-primary pull-right"><?php echo $this->lang->line('text_today'); ?></span>
	        <h5><?php echo $this->lang->line('text_visits'); ?></h5> 
		  </div>
	      <div class="ibox-content">
		    <h1 class="no-margins"><?php echo $total_activity; ?></h1>
		    <div class="stat-percent font-bold text-navy">44%<i class="fa fa-level-up"></i></div> 
		    <small><?php echo $this->lang->line('text_new_activities'); ?></small> 
		  </div>
	    </div>
	  </a>
	</div>
	<div class="col-lg-3">
	  <a href="<?php echo base_url(); ?>inventory/inventory_alert">
	    <div class="ibox float-e-margins">
		  <div class="ibox-title"> <span class="label label-danger pull-right"><?php echo $this->lang->line('text_real_time'); ?></span>
	        <h5><?php echo $this->lang->line('text_alert'); ?></h5> 
		  </div>
		  <div class="ibox-content">
	        <h1 class="no-margins"><?php echo $alert_quantity; ?></h1>
		    <small><?php echo $this->lang->line('text_items_need_attention'); ?></small> 
		  </div>
	    </div>
	  </a>
	</div>
  </div>
    <div class="row">
	  <div class="col-lg-12">
		<div class="ibox float-e-margins">
		  <div class="ibox-title">
		    <h5><?php echo $this->lang->line('text_orders'); ?></h5>
			<div class="pull-right">
			  <div class="btn-group">
				<button type="button" class="btn btn-xs btn-white"><?php echo $this->lang->line('text_today'); ?></button>
				<button type="button" class="btn btn-xs btn-white active"><?php echo $this->lang->line('text_monthly'); ?></button>
			    <button type="button" class="btn btn-xs btn-white"><?php echo $this->lang->line('text_annual'); ?></button>
		      </div>
		    </div>
		  </div>
		  <div class="ibox-content">
			<div class="row">
			  <div class="col-lg-9">
				<div class="flot-chart">
				  <div class="flot-chart-content" id="flot-dashboard-chart"></div>
		        </div>
		      </div>
			  <div class="col-lg-3">
			    <ul class="stat-list">
			      <li>
			        <h2 class="no-margins"><?php echo $sale_total; ?></h2><small><?php echo $this->lang->line('text_total_order_this_month'); ?></small>
			        <div class="stat-percent"><?php echo $sale_total_trend; ?>% <i class="fa fa-level-up text-navy"></i></div>
					<div class="progress progress-mini">
					  <div style="width: 48%;" class="progress-bar"></div>
			        </div>
			      </li>
			      <li>
					<h2 class="no-margins ">100</h2><small><?php echo $this->lang->line('text_total_order_last_month'); ?></small>
					<div class="stat-percent">60% <i class="fa fa-level-down text-navy"></i></div>
					<div class="progress progress-mini">
					  <div style="width: 60%;" class="progress-bar"></div>
					</div>
				  </li>
				  <li>
				    <h2 class="no-margins "><?php echo $sale_income; ?></h2> <small><?php echo $this->lang->line('text_total_income_this_month'); ?></small>
				    <div class="stat-percent"><?php echo $sale_income_trend; ?>% <i class="fa fa-level-up text-navy"></i></div>
				    <div class="progress progress-mini">
				      <div style="width: 22%;" class="progress-bar"></div>
				    </div>
				  </li>
		        </ul>
		      </div>
		    </div>
		  </div>
		</div>
	  </div>
    </div>
    <div class="row">
	  <div class="col-lg-4">
		<div class="ibox float-e-margins">
		  <div class="ibox-title">
			<h5><?php echo $this->lang->line('text_activities'); ?></h5>
			<div class="ibox-tools"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a><a class="close-link"><i class="fa fa-times"></i></a></div>
		  </div>
	      <div class="ibox-content ibox-heading">
	        <h3><i class="fa fa-rocket"></i> <?php echo $this->lang->line('text_new_activities'); ?></h3>
			<small><i class="fa fa-tim"></i><?php echo $this->lang->line('text_display_most_recent_activity_log'); ?></small> 
		  </div>
		  <div class="ibox-content">
			<div class="feed-activity-list">
		      <?php foreach($recent_activity_logs as $recent_activity_log) { ?>
			    <div class="feed-element">
				  <div><small class="pull-right text-navy">1m ago</small><strong><?php echo $recent_activity_log['user']; ?></strong>
				  <div><?php echo $recent_activity_log['description']; ?></div> 
				  <small class="text-muted"><?php echo $recent_activity_log['date_added']; ?></small> 
				  </div>
			    </div>
			  <?php } ?>
			</div>
		  </div>
		</div>
	  </div>
	  <div class="col-lg-8">
	    <div class="row">
		  <div class="col-lg-7">
		    <div class="ibox float-e-margins">
		      <div class="ibox-title">
			    <h5><?php echo $this->lang->line('text_recent_orders'); ?></h5>
			    <div class="ibox-tools"> 
			      <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			      <a class="close-link"><i class="fa fa-times"></i></a> 
			    </div>
		      </div>
			  <div class="ibox-content recent-order-content">
			    <table class="table table-hover no-margins">
				  <thead>
				    <tr>
					  <th><?php echo $this->lang->line('column_product'); ?></th>
					  <th><?php echo $this->lang->line('column_date'); ?></th>
					  <th><?php echo $this->lang->line('column_store'); ?></th>
					  <th><?php echo $this->lang->line('column_total'); ?></th>
				    </tr>
				  </thead>
				  <tbody>
				    <?php foreach($recent_sale_products as $recent_sale_product) { ?>
					  <tr>
					    <td><a href="<?php echo base_url(); ?>catalog/product/edit?product_id=<?php echo $recent_sale_product['product_id']; ?>" target="_blank"><?php echo $recent_sale_product['name']; ?></a></td>
					    <td><i class="fa fa-clock-o"></i> <?php echo $recent_sale_product['date']; ?></td>
					    <td><?php echo $recent_sale_product['store']; ?></td>
					    <td class="text-navy"><?php echo $recent_sale_product['total']; ?></td> 
					  </tr>
				    <?php } ?>
				  </tbody>
			    </table>
			  </div>
		    </div>
		  </div>
			<div class="col-lg-5">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5><?php echo $this->lang->line('text_to_do_list'); ?></h5>
						<div class="ibox-tools"> <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> <a class="close-link"><i class="fa fa-times"></i></a> </div>
					</div>
					<div class="ibox-content">
						<ul class="todo-list m-t small-list">
							<li> <a href="#" class="check-link"><i class="fa fa-check-square"></i></a> <span class="m-l-xs todo-completed">Buy a milk</span> </li>
							<li> <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a> <span class="m-l-xs">Go to shop and find some products.</span> </li>
							<li> <a href="#" class="check-link"><i class="fa fa-square-o"></i></a> <span class="m-l-xs">Send documents to Mike</span> <small class="label label-primary"><i class="fa fa-clock-o"></i> 1 mins</small> </li>
							<li> <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a> <span class="m-l-xs">Go to the doctor dr Smith</span> </li>
							<li> <a href="#" class="check-link"><i class="fa fa-check-square"></i> </a> <span class="m-l-xs todo-completed">Plan vacation</span> </li>
							<li> <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a> <span class="m-l-xs">Create new stuff</span> </li>
							<li> <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a> <span class="m-l-xs">Call to Anna for dinner</span> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
		  <div class="col-lg-12">
			<div class="ibox float-e-margins">
			  <div class="ibox-title">
				<h5><?php echo $this->lang->line('text_recent_store_sync'); ?></h5>
				<div class="ibox-tools"> <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> <a class="close-link"><i class="fa fa-times"></i></a> </div>
			  </div>
			  <div class="ibox-content recent-activity-content">
				<div class="row">
				  <div class="col-lg-12">
					<table class="table table-hover margin bottom">
					  <thead>
						<tr>
						  <th class="text-center"><?php echo $this->lang->line('column_store'); ?></th>
						  <th class="text-center"><?php echo $this->lang->line('column_type'); ?></th>
						  <th class="text-center"><?php echo $this->lang->line('column_status'); ?></th>
						  <th class="text-center"><?php echo $this->lang->line('column_date'); ?></th>
						  <th class="text-center"><?php echo $this->lang->line('column_view'); ?></th>
						</tr>
					  </thead>
					  <tbody>
						<?php if($recent_store_sync_histories) { ?>
						  <?php foreach($recent_store_sync_histories as $recent_store_sync_history) { ?>
							<tr>
							  <td><a href="<?php echo base_url(); ?>store/store/edit?id=<?php echo $recent_store_sync_history['store_id']; ?>" target="_blank"><?php echo $recent_store_sync_history['store']; ?></a></td>
							  <td class="text-center small">
								<?php if($recent_store_sync_history['type'] == 0) { ?>
								  <span class="label label-download"><i class="fa fa-cloud-download"></i> <?php echo $this->lang->line('text_download'); ?></span>
								<?php } else { ?>
								  <span class="label label-success"><i class="fa fa-cloud-upload"></i> <?php echo $this->lang->line('text_upload'); ?></span>
								<?php } ?>
							  </td>
							  <td class="text-center small">
								<?php if($recent_store_sync_history['status'] == 1) { ?>
								  <span class="label label-primary"><?php echo $this->lang->line('text_success'); ?></span>
								<?php } else if($recent_store_sync_history['status'] == 2) { ?>
								  <span class="label label-danger"><?php echo $this->lang->line('text_fail'); ?></span>
								<?php } else { ?>
								  <span class="label label-warning"><?php echo $this->lang->line('text_warning'); ?></span>
								<?php } ?>
							  </td>
							  <td class="text-center"><?php echo $recent_store_sync_history['date_added']; ?></td>
							  <td class="text-center"><a href="<?php echo $recent_store_sync_history['link']; ?>"><button class="btn btn-info btn-xs"><?php echo $this->lang->line('button_detail'); ?></button></a></td>
							</tr>
						  <?php } ?>
						<?php } ?>
					  </tbody>
					</table>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
	    </div>
      </div>
    </div>
</div>
<script>
$(document).ready(function() {
		var data1 = [];
		
		<?php foreach($total_sales_by_date as $total_sale_by_date) { ?>
			group1 = [gd(<?php echo $total_sale_by_date['year']; ?>, <?php echo $total_sale_by_date['month']; ?>, <?php echo $total_sale_by_date['day']; ?>), <?php echo $total_sale_by_date['total']; ?>];
			data1.push(group1);
		<?php } ?>
		
		var data2 = [];
		
		<?php foreach($sum_sales_by_date as $sum_sale_by_date) { ?>
			group2 = [gd(<?php echo $sum_sale_by_date['year']; ?>, <?php echo $sum_sale_by_date['month']; ?>, <?php echo $sum_sale_by_date['day']; ?>), <?php echo $sum_sale_by_date['sum']; ?>];
			data2.push(group2);
		<?php } ?>

		var dataset = [
			{
				label: "<?php echo $this->lang->line('text_number_of_orders'); ?>",
				data: data1,
				color: "#1ab394",
				bars: {
					show: true,
					align: "center",
					barWidth: 24 * 60 * 60 * 600,
					lineWidth:0
				}
			}, 
			{
				label: "<?php echo $this->lang->line('text_income'); ?>",
				data: data2,
				yaxis: 2,
				color: "#1C84C6",
				lines: {
					lineWidth:1,
						show: true,
						fill: true,
					fillColor: {
						colors: [{
							opacity: 0.2
						}, {
							opacity: 0.4
						}]
					}
				},
				splines: {
					show: false,
					tension: 0.6,
					lineWidth: 1,
					fill: 0.1
				},
			}
		];

		var options = {
			xaxis: {
				mode: "time",
				tickSize: [3, "day"],
				tickLength: 0,
				axisLabel: "Date",
				axisLabelUseCanvas: true,
				axisLabelFontSizePixels: 12,
				axisLabelFontFamily: 'Arial',
				axisLabelPadding: 10,
				color: "#d5d5d5"
			},
			yaxes: [{
				position: "left",
				color: "#d5d5d5",
				axisLabelUseCanvas: true,
				axisLabelFontSizePixels: 12,
				axisLabelFontFamily: 'Arial',
				axisLabelPadding: 3
			}, {
				position: "right",
				clolor: "#d5d5d5",
				axisLabelUseCanvas: true,
				axisLabelFontSizePixels: 12,
				axisLabelFontFamily: 'Arial',
				axisLabelPadding: 67
			}
			],
			legend: {
				noColumns: 1,
				labelBoxBorderColor: "#000000",
				position: "nw"
			},
			grid: {
				hoverable: false,
				borderWidth: 0
			}
		};

		function gd(year, month, day) {
			return new Date(year, month - 1, day).getTime();
		}

		var previousPoint = null, previousLabel = null;

		$.plot($("#flot-dashboard-chart"), dataset, options);

});
</script>
<?php echo $footer; ?>