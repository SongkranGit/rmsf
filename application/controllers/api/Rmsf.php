<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

class Rmsf extends REST_Controller
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

    }

    public function home_get()
    {
        $users = [
            ['id' => 1, 'name' => 'John', 'email' => 'john@example.com', 'fact' => 'Loves coding'],
            ['id' => 2, 'name' => 'Jim', 'email' => 'jim@example.com', 'fact' => 'Developed on CodeIgniter'],
            ['id' => 3, 'name' => 'Jane', 'email' => 'jane@example.com', 'fact' => 'Lives in the USA', ['hobbies' => ['guitar', 'cycling']]],
        ];

        if ($users) {
            // Set the response and exit
            $this->response($users, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'No users were found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

//        if (!empty($user))
//        {
//            $this->set_response($user, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
//        }
//        else
//        {
//            $this->set_response([
//                'status' => FALSE,
//                'message' => 'User could not be found'
//            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
//        }
    }

    public function about_us_get()
    {
        $users = [
            ['id' => 1, 'name' => 'John', 'email' => 'john@example.com', 'fact' => 'Loves coding'],
            ['id' => 2, 'name' => 'Jim', 'email' => 'jim@example.com', 'fact' => 'Developed on CodeIgniter'],
            ['id' => 3, 'name' => 'Jane', 'email' => 'jane@example.com', 'fact' => 'Lives in the USA', ['hobbies' => ['guitar', 'cycling']]],
        ];
        if ($users) {
            // Set the response and exit
            $this->response($users, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'No users were found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }


}