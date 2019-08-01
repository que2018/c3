<div class="ibox float-e-margins">
  <div class="ibox-title">
	<h5><?php echo $this->lang->line('text_orders'); ?></h5>
	<div class="pull-right">
	  <div class="btn-group">
		<button type="button" class="btn btn-xs btn-white" onclick="updateData(this,'today')"><?php echo $this->lang->line('text_today'); ?></button>
		<button type="button" class="btn btn-xs btn-white active" onclick="updateData(this,'month')"><?php echo $this->lang->line('text_monthly'); ?></button>
		<button type="button" class="btn btn-xs btn-white" onclick="updateData(this,'year')"><?php echo $this->lang->line('text_annual'); ?></button>
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
			<h2 id="total-sale" class="no-margins"><?php echo $sale_total_month; ?></h2>
			<small id="total-sale-period"><?php echo $this->lang->line('text_total_order_this_month'); ?></small>
			<div class="stat-percent"><?php echo $sale_total_month_trend; ?>%<i class="fa fa-level-up text-navy"></i></div>
			<div class="progress progress-mini">
			  <div style="width: <?php echo $sale_total_month_trend; ?>%;" class="progress-bar"></div>
			</div>
		  </li>
		  <li>
			<h2 id="total-income" class="no-margins">$<?php echo $income_total_month; ?></h2>
			<small id="total-income-period"><?php echo $this->lang->line('text_total_income_this_month'); ?></small>
			<div class="stat-percent"><?php echo $sale_income_month_trend; ?>%<i class="fa fa-level-up text-navy"></i></div>
			<div class="progress progress-mini">
			  <div style="width: <?php echo $sale_income_month_trend; ?>%;" class="progress-bar"></div>
			</div>
		  </li>
		</ul>
	  </div>
	</div>
  </div>
</div>	
<script>
function updateData(elemtnt, period) {
	$('.btn-white').removeClass('active');
	$(elemtnt).addClass('active');
	
	if(period == 'today') {
		$('#total-sale-period').html('<?php echo $this->lang->line("text_total_order_today"); ?>');
		$('#total-income-period').html('<?php echo $this->lang->line("text_total_income_today"); ?>');

		$('#total-sale').html('<?php echo $sale_total_today; ?>');
		$('#total-income').html('$<?php echo $income_total_today; ?>');
		
		plot_today();
	}
	
	if(period == 'month') {
		$('#total-sale-period').html('<?php echo $this->lang->line("text_total_order_this_month"); ?>');
		$('#total-income-period').html('<?php echo $this->lang->line("text_total_income_this_month"); ?>');
		
		$('#total-sale').html('<?php echo $sale_total_month; ?>');
		$('#total-income').html('$<?php echo $income_total_month; ?>');
		
		plot_month();
	}
	
	if(period == 'year') {
		$('#total-sale-period').html('<?php echo $this->lang->line("text_total_order_this_year"); ?>');
		$('#total-income-period').html('<?php echo $this->lang->line("text_total_income_this_year"); ?>');
		
		$('#total-sale').html('<?php echo $sale_total_year; ?>');
		$('#total-income').html('$<?php echo $income_total_year; ?>');
		
		plot_year();
	}
}
</script>
<script>
$(document).ready(function() {
	plot_month();	
});
</script>
<script>
function plot_today() {
	var order_data = [];
		
	<?php foreach($group_sales_today as $group_sale_today) { ?>
		order_group = [gd(<?php echo $group_sale_today['year']; ?>, <?php echo $group_sale_today['month']; ?>, <?php echo $group_sale_today['day']; ?>), <?php echo $group_sale_today['total']; ?>];
		order_data.push(order_group);
	<?php } ?>
	
	var income_data = [];
	
	<?php foreach($group_incomes_today as $group_income_today) { ?>
		income_group = [gd(<?php echo $group_income_today['year']; ?>, <?php echo $group_income_today['month']; ?>, <?php echo $group_income_today['day']; ?>), <?php echo $group_income_today['sum']; ?>];
		income_data.push(income_group);
	<?php } ?>

	var dataset = [
		{
			label: "<?php echo $this->lang->line('text_number_of_orders'); ?>",
			data: order_data,
			color: "#1ab394",
			bars: {
				show: true,
				align: "center",
				barWidth: 24 * 60 * 60 * 600,
				lineWidth:0
			}
		}, 
		{
			label: "<?php echo $this->lang->line('text_income'); ?>($)",
			data: income_data,
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
			tickSize: [1, "hour"],
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

	var previousPoint = null, previousLabel = null;

	$.plot($("#flot-dashboard-chart"), dataset, options);
}
</script>


<script>
function plot_month() {
	var order_data = [];
		
	<?php foreach($group_sales_month as $group_sale_month) { ?>
		order_group = [gd(<?php echo $group_sale_month['year']; ?>, <?php echo $group_sale_month['month']; ?>, <?php echo $group_sale_month['day']; ?>), <?php echo $group_sale_month['total']; ?>];
		order_data.push(order_group);
	<?php } ?>
	
	var income_data = [];
	
	<?php foreach($group_incomes_month as $group_income_month) { ?>
		income_group = [gd(<?php echo $group_income_month['year']; ?>, <?php echo $group_income_month['month']; ?>, <?php echo $group_income_month['day']; ?>), <?php echo $group_income_month['sum']; ?>];
		income_data.push(income_group);
	<?php } ?>

	var dataset = [
		{
			label: "<?php echo $this->lang->line('text_number_of_orders'); ?>",
			data: order_data,
			color: "#1ab394",
			bars: {
				show: true,
				align: "center",
				barWidth: 24 * 60 * 60 * 600,
				lineWidth:0
			}
		}, 
		{
			label: "<?php echo $this->lang->line('text_income'); ?>($)",
			data: income_data,
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

	var previousPoint = null, previousLabel = null;

	$.plot($("#flot-dashboard-chart"), dataset, options);
}
</script>
<script>
function plot_year() {
	var order_data = [];
	
	<?php foreach($group_sales_year as $group_sale_year) { ?>
		order_group = [gd(<?php echo $group_sale_year['year']; ?>, <?php echo $group_sale_year['month']; ?>, <?php echo $group_sale_year['day']; ?>), <?php echo $group_sale_year['total']; ?>];
		order_data.push(order_group);
	<?php } ?>
	
	var income_data = [];
	
	<?php foreach($group_incomes_year as $group_income_year) { ?>
		income_group = [gd(<?php echo $group_income_year['year']; ?>, <?php echo $group_income_year['month']; ?>, <?php echo $group_income_year['day']; ?>), <?php echo $group_income_year['sum']; ?>];
		income_data.push(income_group);
	<?php } ?>

	var dataset = [
		{
			label: "<?php echo $this->lang->line('text_number_of_orders'); ?>",
			data: order_data,
			color: "#1ab394",
			bars: {
				show: true,
				align: "center",
				barWidth: 24 * 60 * 60 * 600,
				lineWidth:0
			}
		}, 
		{
			label: "<?php echo $this->lang->line('text_income'); ?>($)",
			data: income_data,
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
			tickSize: [1, "month"],
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

	var previousPoint = null, previousLabel = null;

	$.plot($("#flot-dashboard-chart"), dataset, options);
}
</script>
<script>
function gd(year, month, day) {
	return new Date(year, month - 1, day).getTime();
}
</script>

		