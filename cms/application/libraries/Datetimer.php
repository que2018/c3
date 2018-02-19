<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Datetimer
{
	public function __construct()
    {
		$this->ci =& get_instance();
    }
	
	public function get_year($datetime_str)
	{
		$datetime = new DateTime($datetime_str);
		
		return $datetime->format('Y');
	}
	
	public function get_month($datetime_str)
	{
		$datetime = new DateTime($datetime_str);
		
		return $datetime->format('m');
	}
	
	public function get_day($datetime_str)
	{
		$datetime = new DateTime($datetime_str);
		
		return $datetime->format('d');
	}
	
	public function current_datetime() 
	{
		return date('Y-m-d H:i:s');
	}
	
	public function yesterday_datetime() 
	{
		return date('Y-m-d', strtotime('-1 days'));
	}
	
	public function first_date_this_month() 
	{
		return date('Y-m-01 00:00:00');
	}
	
	public function first_date_last_month() 
	{
		return date('Y-m-d H:i:s', strtotime('first day of previous month'));
	}
	
	public function last_date_last_month() 
	{
		return date('Y-m-d H:i:s', strtotime('last day of previous month'));
	}
	
	public function plus_days($datetime, $days) 
	{
		$datetime_str = strtotime($datetime);
		$result = $datetime_str + (24 * 60 * 60 * $days);
		
		return date('Y-m-d H:i:s', $result);
	}
	
	public function mins_days($datetime, $days) 
	{
		$datetime_str = strtotime($datetime);
		$result = $datetime_str - (24 * 60 * 60 * $days);
		
		return date('Y-m-d H:i:s', $result);
	}
	
	public function diff_days($datetime1, $datetime2)
	{
		$d1 = new DateTime($datetime1);
		$d2 = new DateTime($datetime2);
		
		$interval = $d1->diff($d2);
		
		return $interval->days;
	}
	
	public function to_ISO8601($datetime_str)
	{
		$datetime = new DateTime($datetime_str);
		
		return $datetime->format(DateTime::ATOM); 
	}
	
	public function to_standard($datetime_str)
	{
		return date('Y-m-d H:i:s', strtotime($datetime_str));
	}
	
	public function format_display($datetime_str) 
	{
		$time_added = strtotime($datetime_str);
		$time_current = strtotime('now');
		
		$diff_hours = ($time_current - $time_added) / 3600;
		
		if($diff_hours <= 24) 
		{
			$datetime = new DateTime($datetime_str);
            $date_format = $datetime->format('h:i A');
		} 
		else 
		{
			$date_format =  date('Y-m-d', strtotime($datetime_str));
		}
		
		return $date_format;
	}
}