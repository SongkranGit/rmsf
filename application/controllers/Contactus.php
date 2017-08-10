<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH.'core/Frontend_controller.php';

class Contactus extends Frontend_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function index(){
        return $this->load->view('frontend/contact_us');
    }

    function create(){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $response = array('success' => false, 'notes' => array());

            dump("sfsd");

            $this->validateForm();

//            if ($this->form_validation->run()) {
//                $data = array(
//                    "full_name" => trim($this->input->post("full_name")),
//                    "phone" => trim($this->input->post("phone")),
//                    "email" => trim($this->input->post("email")),
//                    "age" => intval($this->input->post("age")),
//                    "education" => intval($this->input->post("education")),
//                    "line_id" => $this->input->post("line_id"),
//                    "note" => $this->input->post("note"),
//                    "created_date" => Calendar::currentDateTime()
//                );
//
//                if ($this->Contact_model->save($data)) {
//                    $response['success'] = true;
//                }
//
//                echo json_encode($response);
//
//                if ($response["success"] == true) {
//                    $this->sendEmail($data);
//                    $this->sendEmailToInterestedPerson($data);
//                }
//
//            } else {
//                foreach ($_POST as $key => $value) {
//                    $result['notes'][$key] = form_error($key);
//                }
//            }
        }
    }

    public function sendEmail($data)
    {
        require_once(APPPATH.'libraries/Phpmailer.php');
        $mailer = new PHPMailer();

        $mailer->CharSet = "utf-8";
        $mailer->IsSMTP();
        $mailer->IsHTML(true);
        $mailer->SMTPDebug = 0;
        $mailer->SMTPAuth = true;
        $mailer->Host = "mail.modernsofttech.com"; // SMTP server
        $mailer->Port = 25; // พอร์ท
        $mailer->Username = "ss@modernsofttech.com"; // account SMTP
        $mailer->Password = "liver167"; // รหัสผ่าน SMTP

        $mailer->SetFrom(strip_tags($data["email"]), $data["full_name"]);
        $mailer->AddAddress(strip_tags($this->data["settings"]["email"]), "recipient1"); // ผู้รับคนที่หนึ่ง

        $mailer->Subject = "ระบบส่งเมล์อัตโนมัต Study Plus Center ";
        $mailer->Body = $this->getResponseEmailMessage($data);

        if(!$mailer->Send()) {
            echo "Mailer Error: " . $mailer->ErrorInfo;
        } else {
            // echo "Message sent!  ".dirname(__FILE__)."/uploads/". $this->qr_code_name.".png";
        }

    }



}