<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'Home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;


/*
| -------------------------------------------------------------------------
|  ADMIN API Routes
| -------------------------------------------------------------------------
*/




/*
| -------------------------------------------------------------------------
|  REST API Routes
| -------------------------------------------------------------------------
*/
$route['api/example/users/(:num)'] = 'api/example/users/id/$1'; // Example 4
$route['api/example/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/example/users/id/$1/format/$3$4'; // Example 8

//GET Method
$route['api/rmsf/query/home'] = 'api/rmsf/home';
$route['api/rmsf/query/about_us'] = 'api/rmsf/about_us';
$route['api/rmsf/query/service'] = 'api/rmsf/service';


//POST Method
$route['api/rmsf/command/login'] = 'api/rmsf/login';
$route['api/rmsf/command/save_contact'] = 'api/rmsf/save_contact';