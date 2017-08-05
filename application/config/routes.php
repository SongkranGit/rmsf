<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'Home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;


//Admin
$route['admin/aboutus'] = 'admin/Admin_aboutus';
$route['admin/contactus'] = 'admin/Admin_contactus';
$route['admin/founder'] = 'admin/Admin_founder';
$route['admin/home'] = 'admin/Admin_home';
$route['admin/portfolio'] = 'admin/Admin_portfolio';
$route['admin/service'] = 'admin/Admin_service';