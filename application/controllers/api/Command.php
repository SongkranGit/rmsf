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

            $this->getValidateMessageContactForm($data , $result);

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

    public function sign_up_newsletter_post(){
        $data = [
            'email' => trim($this->post('email')),
            'is_sign_up_newsletter'=> intval('1')
        ];

        $result = array('success'=> false, 'error_message'=> '');

        if($this->post('email' == '')){
            $result['error_message'] = 'the name value is empty';
        }else{
            if(!$this->validateDuplicateEmailContact($data['email'])){
                $data['created_date'] = Calendar::currentDateTime();
                $is_success = $this->Contact_model->save($data);
                if($is_success){
                    $result = array('success'=> true, 'error_message'=> '');
                }else{
                    $result = array('success'=> false, 'error_message'=> 'can not save contact');
                }
            }else{
                $result['error_message'] = 'Sorry but this email is already in use. Please go back and use a different email.';
            }
        }

        $this->set_response($result, REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
    }

    function getValidateMessageContactForm($data , &$result){
        if($data['email']==''){
           return  $result['error_message'] = 'the name value is empty';
        }else if($data['email']==''){
            return  $result['error_message'] = 'the email value is empty';
        }else if($data['subject']==''){
            return  $result['error_message'] = 'the subject value is empty';
        }
    }

    function validateDuplicateEmailContact($email){
       return $this->Contact_model->isDuplicateEmail($email);
    }



}