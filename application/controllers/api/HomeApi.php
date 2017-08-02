<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';

class HomeApi extends REST_Controller
{
   public function __construct($config = 'rest')
   {
       parent::__construct($config);
   }


}