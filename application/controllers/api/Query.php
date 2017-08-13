<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

class Query extends REST_Controller
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('Page_model');
        $this->load->model('Article_model');
        $this->load->model('Gallery_model');
        $this->load->model('Setting_model');
        $this->load->model('Slideshow_model');
    }

    public function home_get()
    {
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'home');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

    }

    public function about_us_get()
    {
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'about_us');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function service_get()
    {
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'service');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function portfolio_get()
    {
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'portfolio');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function founder_get()
    {
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'founder');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }



    public function contact_us_get(){
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'contact_us');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function settings_get(){
        $result = $this->Setting_model->getSettings();
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function slideshow_get(){
        $result = $this->Slideshow_model->getAll();
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    private function processQueryPageData($language , $page_name){
        $result = $this->Page_model->apiQueryPageData( $language , $page_name );
        $result['articles'] = $this->Article_model->apiQueryArticlesData($language ,$result['id']);
        $result['galleries'] = $this->Gallery_model->apiQueryGalleriesData($language ,$result['id']);
        return $result;
    }



}