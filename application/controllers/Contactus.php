<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once APPPATH . 'core/Frontend_controller.php';

class Contactus extends Frontend_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('Contact_model');
    }

    function index()
    {
        return $this->load->view('frontend/contact_us');
    }

    function create()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $this->validateForm();

            if ($this->form_validation->run()) {
                $data = array(
                    "name" => trim($this->input->post("name")),
                    "phone" => trim($this->input->post("phone")),
                    "email" => trim($this->input->post("email")),
                    "subject" => $this->input->post("subject"),
                    "message" => $this->input->post("message"),
                    "created_date" => Calendar::currentDateTime()
                );

                if ($this->Contact_model->save($data)) {
                    $result['success'] = true;
                    $this->session->set_flashdata('success',true);
                    $this->form_validation->clear_field_data();
                    $this->load->view('frontend/contact_us' , $result);
                }else{
                    $this->load->view('frontend/contact_us');
                }
            } else {
                $this->load->view('frontend/contact_us');
            }
        }
    }

    public function sendEmail($data)
    {
        require_once(APPPATH . 'libraries/Phpmailer.php');
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

        if (!$mailer->Send()) {
            echo "Mailer Error: " . $mailer->ErrorInfo;
        } else {
            // echo "Message sent!  ".dirname(__FILE__)."/uploads/". $this->qr_code_name.".png";
        }

    }

    public function validateForm()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules("name", "Name", "trim|required");
        $this->form_validation->set_rules("email", "Email", "trim|required");
        $this->form_validation->set_rules("subject", "Subject", "trim|required");
        $this->form_validation->set_rules("message", "Message", "trim|required");
        $this->form_validation->set_rules("phone", "Phone", "trim|required");
        $this->form_validation->set_error_delimiters(
            '<div class="alert alert-danger" role="alert" style="margin-top: 10px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span> <span class="sr-only"></span>',

            '</div>');
    }


}