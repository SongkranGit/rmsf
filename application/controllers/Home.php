<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'core/Frontend_controller.php';

class Home extends Frontend_Controller
{
    function __construct()
    {
        parent::__construct();

    }


    public  function index(){
        $this->load->view('frontend/home');
    }




}
