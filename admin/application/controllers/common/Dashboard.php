<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Dashboard extends MX_Controller  
{	
	public function index() 
	{	
		$this->load->module('header');
		$this->load->module('footer');
		
		$this->lang->load('common/dashboard');
		
		$this->header->set_title($this->lang->line('text_dashboard'));
		
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.tooltip.min.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.spline.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.resize.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.pie.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.symbol.js');
		$this->header->add_script(base_url(). 'assets/js/plugins/flot/jquery.flot.time.js');
		
		$this->header->add_style(base_url(). 'assets/css/app/common/dashboard.css');
	
		//sale income
		$this->load->module('sale_income');
		
		$data['sale_income'] = Modules::run('module/sale_income/index');
		
		//sale total
		$this->load->module('sale_total');
	
		$data['sale_total'] = Modules::run('module/sale_total/index');
		
		//yesterday activity
		$this->load->module('yesterday_activity');
	
		$data['yesterday_activity'] = Modules::run('module/yesterday_activity/index');
		
		//total alert
		$this->load->module('total_alert');
	
		$data['total_alert'] = Modules::run('module/total_alert/index');
		
		//recent activity
		$this->load->module('recent_activity');
	
		$data['recent_activity'] = Modules::run('module/recent_activity/index');
		
		//recent sales
		$this->load->module('recent_sale');
	
		$data['recent_sale'] = Modules::run('module/recent_sale/index');
		
		//todo list
		$this->load->module('todo_list');
	
		$data['todo_list'] = Modules::run('module/todo_list/index');
		
		//recent store sync
		$this->load->module('recent_store_sync');
	
		$data['recent_store_sync'] = Modules::run('module/recent_store_sync/index');
		
		//sale trend
		$this->load->module('sale_trend');
	
		$data['sale_trend'] = Modules::run('module/sale_trend/index');
		
		//header & footer
		$data['header'] = Modules::run('module/header/index');
		$data['footer'] = Modules::run('module/footer/index');
		
		$this->load->view('common/dashboard', $data);
	}
}
