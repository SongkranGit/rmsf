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
        $this->load->model('Gallery_Images_Model');
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
        $language = trim($this->get('lang'));
        $result = $this->Setting_model->apiQuerySettingData($language);
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
        $language = trim($this->get('lang'));
        $result = $this->Slideshow_model->apiQuerySlideshowData($language);
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function product_get(){
        $language = trim($this->get('lang'));
        $result = $this->processQueryPageData( $language, 'product');
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function products_get(){
        $language = trim($this->get('lang'));
        $arr_galleries = $this->Gallery_model->getByPageName('product');
        if($arr_galleries != null && !empty($arr_galleries) ){
            $arr_gallery_ids = array();
            foreach ($arr_galleries as $item){
                array_push($arr_gallery_ids , $item['id']);
            }
            $result = $this->Gallery_Images_Model->apiQueryGetAllGalleryImages($arr_gallery_ids , $language);
        }
        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function product_detail_get(){
        $language = trim($this->get('lang'));
        $gallery_id = trim($this->get('id'));
        $gallery = $this->Gallery_model->getById($gallery_id);
        $gallery_images = $this->Gallery_Images_Model->getByGalleryId($gallery_id , $language);

        $response = array(
            "product_name"=> $language == 'th'?$gallery['name_th'] : $gallery['name_en'],
            "product_description" => $language == 'th'?$gallery['description_th'] : $gallery['description_en'],
            "product_detail" => $language == 'th'?$gallery['detail_th'] : $gallery['detail_en'],
            "galleries" => $gallery_images
        );

        if ($response != null) {
            $this->response($response, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function albums_get(){
        $language = trim($this->get('lang'));
        $arr_galleries = $this->Gallery_model->getByPageName('portfolio');
        if($arr_galleries != null && !empty($arr_galleries) ){
            $arr_gallery_ids = array();
            foreach ($arr_galleries as $item){
                array_push($arr_gallery_ids , $item['id']);
            }
            $result = $this->Gallery_Images_Model->apiQueryGetAllGalleryImages($arr_gallery_ids , $language);
        }

        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function album_detail_get(){
        $language = trim($this->get('lang'));
        $gallery_id = trim($this->get('id'));
        $result = $this->Gallery_Images_Model->getByGalleryId($gallery_id , $language);

        if ($result != null) {
            $this->response($result, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    private function processQueryPageData($language , $page_name){
        $result = $this->Page_model->apiQueryPageData( $language , $page_name );
        $result['articles'] = $this->Article_model->apiQueryArticlesData($language ,$result['id']);
        $result['galleries'] = $this->Gallery_model->apiQueryGalleriesData($language ,$result['id']);
        return $result;
    }



}
