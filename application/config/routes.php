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
$route['api/query/home'] = 'api/query/home';
$route['api/query/about_us'] = 'api/query/about_us';
$route['api/query/service'] = 'api/query/service';


//POST Method
$route['api/command/login'] = 'api/command/login';
$route['api/command/contact'] = 'api/command/contact';