<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Base admin Class - used for all administration pages
 */

require_once APPPATH . 'core/MY_controller.php';

class Frontend_Controller extends MY_Controller
{

    protected $main_layout;

    function __construct()
    {
        parent::__construct();

    }




}
