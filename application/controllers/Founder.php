<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH.'core/Frontend_controller.php';

class Founder extends Frontend_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function index(){
        return $this->load->view('frontend/founder');
    }


}