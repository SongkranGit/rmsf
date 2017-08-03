<?php

/**
 * Created by PhpStorm.
 * User: BERM-PC
 * Date: 23/4/2559
 * Time: 10:21
 */
class MY_Controller extends CI_Controller
{

    public $data = array();

    function __construct()
    {
        parent::__construct();

    }


}

require_once APPPATH.'core/Admin_controller.php';
require_once APPPATH.'core/Frontend_controller.php';