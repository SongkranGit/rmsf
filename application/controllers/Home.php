<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'core/Frontend_controller.php';

class Home extends Frontend_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Article_model');
        $this->load->model('Gallery_model');
    }

    public  function index(){
        $this->load->view('frontend/home');
    }

    public  function query(){
        $this->load->model('Page_model');
        $result = $this->Page_model->apiQueryPageData( $lang='en' ,  "home" );
        $result['articles'] = $this->Article_model->apiQueryArticlesData($lang='en',$result['id']);
        $result['galleries'] = $this->Gallery_model->apiQueryGalleriesData($lang='en',$result['id']);

       // echo json_encode($result);
        dump($result);
    }



}
