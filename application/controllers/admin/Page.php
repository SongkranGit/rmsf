<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'core/Admin_controller.php';

class Page extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model("Page_model");
        $this->load->model("Gallery_model");
        $this->load->model("Article_model");
    }

    public function index()
    {
        $this->load->view("admin/pages/list_pages");
    }

    public function create()
    {
        if ($_SERVER["REQUEST_METHOD"] == "GET") {

            $view_data = array(
                "data" => array(
                    "action" => ACTION_CREATE,
                    "heading_text" => $this->lang->line("pages_button_add"),
                    "galleries" => $this->Gallery_model->getAll(),
                    "articles" => null,
                )
            );
            $this->load->view("admin/pages/page_entry", $view_data);

        } else if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $result = array('success' => false, 'messages' => array());

            $this->validateForm();

            if ($this->form_validation->run()) {
                $data = array(
                    "name_th" => trim($this->input->post("name_th")),
                    "name_en" => trim($this->input->post("name_en")),
                    "detail_th" => $this->input->post("detail_th"),
                    "detail_en" => $this->input->post("detail_en"),
                    "published" => intval($this->input->post("published")),
                    "created_date" => Calendar::currentDateTime(),
                    "updated_date" => Calendar::currentDateTime()
                );


                if ($this->Page_model->save($data)) {
                    $result['success'] = true;
                }
            } else {
                foreach ($_POST as $key => $value) {
                    $result['messages'][$key] = form_error($key);
                }
            }

            echo json_encode($result);
        }
    }

    public function update($page_id)
    {
        if ($_SERVER["REQUEST_METHOD"] == "GET") {
            $view_data = array(
                "data" => array(
                    "action" => ACTION_UPDATE,
                    "heading_text" => $this->lang->line("pages_button_edit"),
                    "galleries" => $this->Gallery_model->getGalleriesByPageId($page_id),
                    "articles" => $this->Article_model->getArticlesByPageId($page_id),
                    "row" => $this->Page_model->getById($page_id)
                )
            );
            $this->load->view("admin/pages/page_entry", $view_data);

        } else if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $result = array('success' => false, 'messages' => array());
            $data = array(
                "name_th" => trim($this->input->post("name_th")),
                "name_en" => trim($this->input->post("name_en")),
                "detail_th" => $this->input->post("detail_th"),
                "detail_en" => $this->input->post("detail_en"),
                "published" => intval($this->input->post("published")),
                "updated_date" => Calendar::currentDateTime()
            );

            $result['success'] = $this->Page_model->update($data, $page_id);

            echo json_encode($result);
        }
    }

    public function delete($id)
    {
        $result = array('success' => false);
        if ($id != "") {
            if ($this->Page_model->delete($id)) {
                $result["success"] = true;
            }
        }
        echo json_encode($result);
    }

    public function loadPagesDataTable()
    {
        $data = $this->Page_model->loadPagesDataTable();
        echo json_encode($data);
    }

    public function validateForm()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules("name_th", "Page Title Thai", "trim|required");
        $this->form_validation->set_rules("name_en", "Page Title English", "trim|required");
        $this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
    }



}
