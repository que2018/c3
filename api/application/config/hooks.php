<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Hooks
| -------------------------------------------------------------------------
| This file lets you define "hooks" to extend CI without hacking the core
| files.  Please see the user guide for info:
|
|	https://codeigniter.com/user_guide/general/hooks.html
|
*/


/* $hook['post_controller_constructor'][] = array(
	'class'     => 'Login',
	'function'  => 'run',
	'filename'  => 'Login.php',
	'filepath'  => 'hooks',
	'params'    => ''
);
 */
 
/* $hook['post_controller_constructor'][] = array(
	'class'     => 'Permission',
	'function'  => 'run',
	'filename'  => 'Permission.php',
	'filepath'  => 'hooks',
	'params'    => ''
);
 */
 
$hook['post_controller_constructor'][] = array(
	'class'     => 'Config',
	'function'  => 'run',
	'filename'  => 'Config.php',
	'filepath'  => 'hooks',
	'params'    => ''
);

/* $hook['post_controller_constructor'][] = array(
	'class'    => 'Activity',
	'function' => 'run',
	'filename' => 'Activity.php',
	'filepath' => 'hooks',
	'params'   => ''
);
 */
