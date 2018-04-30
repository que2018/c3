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
			<h2 class="no-margins"><?php echo $sale_total_num; ?></h2><small><?php echo $this->lang->line('text_total_order_this_month'); ?></small>
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
			<h2 class="no-margins "><?php echo $sale_income_num; ?></h2> <small><?php echo $this->lang->line('text_total_income_this_month'); ?></small>
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