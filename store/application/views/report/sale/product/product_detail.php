<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.tooltip.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.spline.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.pie.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.symbol.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins/flot/jquery.flot.time.js" type="text/javascript"></script>
<link href="<?php echo base_url(); ?>assets/css/app/report/sale/product/product_detail.css" rel="stylesheet"> 
<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-12">
	<h2><?php echo $this->lang->line('text_product_detail'); ?></h2>
	<ol class="breadcrumb">
	  <li><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('text_home'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>report/sale/product"><?php echo $this->lang->line('text_report'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>report/sale/product"><?php echo $this->lang->line('text_sale'); ?></a></li>
	  <li><a href="<?php echo base_url(); ?>report/sale/product"><?php echo $this->lang->line('text_product'); ?></a></li>	  
	  <li class="active"><strong><?php echo $this->lang->line('text_product_detail'); ?></strong></li>
	</ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
    <div class="col-lg-12">
	  <div class="tabs-container">
	    <ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#overview"><?php echo $this->lang->line('tab_overview'); ?></a></li>
		  <li><a data-toggle="tab" href="#detail"><?php echo $this->lang->line('tab_detail'); ?></a></li>
	    </ul>
	    <div class="tab-content">
		  <div id="overview" class="tab-pane active">
		    <div class="panel-body">
		      <div class="ibox float-e-margins">
			    <div class="ibox-title">
				  <h5><?php echo $this->lang->line('text_sale'); ?></h5>
				  <div class="pull-right">
				    <div class="btn-group">
					  <button type="button" class="btn btn-xs btn-white active"><?php echo $this->lang->line('text_today'); ?></button>
					  <button type="button" class="btn btn-xs btn-white"><?php echo $this->lang->line('text_monthly'); ?></button>
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
						  <div class="stat-percent">48% <i class="fa fa-level-up text-navy"></i></div>
						  <div class="progress progress-mini">
						    <div style="width: 48%;" class="progress-bar"></div>
						  </div>
					    </li>
					    <li>
						  <h2 class="no-margins ">4,422</h2><small><?php echo $this->lang->line('text_total_order_last_month'); ?></small>
						  <div class="stat-percent">60% <i class="fa fa-level-down text-navy"></i></div>
						  <div class="progress progress-mini">
						    <div style="width: 60%;" class="progress-bar"></div>
						  </div>
					    </li>
					    <li>
						  <h2 class="no-margins "><?php echo $sale_income; ?></h2> <small><?php echo $this->lang->line('text_total_income_this_month'); ?></small>
						  <div class="stat-percent">22% <i class="fa fa-bolt text-navy"></i></div>
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
		  <div id="detail" class="tab-pane">
		    <div class="panel-body">
		      <div class="table-responsive">
				<table class="table table-striped table-bordered table-hover dataTables-example" >
				  <thead>
					<?php if($sort == 'sale_product.quantity') { ?>
					<th style="width: 33%;" class="sorting_<?php echo strtolower($order); ?>">
					  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
					</th>
					<?php } else { ?>
					<th style="width: 33%;" class="sorting">
					  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_quantity'); ?></a>
					</th>
					<?php } ?>
					<?php if($sort == 'total') { ?>
					<th style="width: 33%;" class="sorting_<?php echo strtolower($order); ?>">
					  <a href="<?php echo $sort_total; ?>"><?php echo $this->lang->line('column_total'); ?></a>
					</th>
					<?php } else { ?>
					<th style="width: 33%;" class="sorting">
					  <a href="<?php echo $sort_quantity; ?>"><?php echo $this->lang->line('column_total'); ?></a>
					</th>
					<?php } ?>
					<?php if($sort == 'sale.date_added') { ?>
					<th style="width: 33%;" class="sorting_<?php echo strtolower($order); ?>">
					  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
					</th>
					<?php } else { ?>
					<th style="width: 33%;" class="sorting">
					  <a href="<?php echo $sort_date_added; ?>"><?php echo $this->lang->line('column_date_added'); ?></a>
					</th>
					<?php } ?>
				  </thead>
				  <tbody>
					<?php if($sales) { ?>
					  <?php foreach($sales as $sale) { ?>
						<tr>
						  <td><?php echo $sale['quantity']; ?></td>
						  <td><?php echo $sale['total']; ?></td>
						  <td><?php echo $sale['date_added']; ?></td> 			
						</tr>
					  <?php } ?>
					<?php } ?>
				  </tbody>			  
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
  </div>  
</div>
<script>
$(document).ready(function() {
		var data1 = [];
		
		<?php foreach($product_sales_total_by_date as $product_sale_total_by_date) { ?>
			group1 = [gd(<?php echo $product_sale_total_by_date['year']; ?>, <?php echo $product_sale_total_by_date['month']; ?>, <?php echo $product_sale_total_by_date['day']; ?>), <?php echo $product_sale_total_by_date['total']; ?>];
			data1.push(group1);
		<?php } ?>
		
		var data2 = [];
		
		<?php foreach($product_sales_income_by_date as $product_sale_income_by_date) { ?>
			group2 = [gd(<?php echo $product_sale_income_by_date['year']; ?>, <?php echo $product_sale_income_by_date['month']; ?>, <?php echo $product_sale_income_by_date['day']; ?>), <?php echo $product_sale_income_by_date['sum']; ?>];
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
		
		