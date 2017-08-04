<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'core/Admin_controller.php';

class Dashboard extends Admin_Controller
{
    function __construct(){
        parent::__construct();
    }

    public function index()
    {
        $this->load->view("admin/dashboard");
    }




}
