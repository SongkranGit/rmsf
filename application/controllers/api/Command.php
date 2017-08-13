<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

class Command extends REST_Controller
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('Contact_model');
    }


    public function contact_post(){
        $data = [
            'name' => $this->post('name'),
            'email' => $this->post('email'),
            'phone' => $this->post('phone'),
            'subject' => $this->post('subject'),
            'message' => $this->post('message'),
        ];

        $result = array('success'=> false, 'error_message'=> '');

        if($this->post('name')==''
            || $this->post('email' == '')
            ||$this->post('subject') ==''){

            $this->validateContactForm($data , $result);

        }else{
            $data['created_date'] = Calendar::currentDateTime();
            $is_success = $this->Contact_model->save($data);
            if($is_success){
                $result = array('success'=> true, 'error_message'=> '');
            }else{
                $result = array('success'=> false, 'error_message'=> 'can not save contact');
            }
        }

        $this->set_response($result, REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
    }

    private function validateContactForm($data , &$result){
        if($data['name']==''){
           return  $result['error_message'] = 'the name value is empty';
        }else if($data['email']==''){
            return  $result['error_message'] = 'the email value is empty';
        }else if($data['subject']==''){
            return  $result['error_message'] = 'the subject value is empty';
        }
    }



}