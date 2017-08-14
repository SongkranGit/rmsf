<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'core/Admin_controller.php';

class Page extends Admin_Controller
{

    private $upload_menu_icon_path;

    function __construct()
    {
        parent::__construct();
        $this->load->model("Page_model");
        $this->load->model("Gallery_model");
        $this->load->model("Article_model");
        $this->load->library("Uuid");
        $this->upload_menu_icon_path = realpath(APPPATH . '../uploads/menu_icon');
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
                    "page_name" => trim($this->input->post("page_name")),
                    "name_th" => trim($this->input->post("name_th")),
                    "name_en" => trim($this->input->post("name_en")),
                    "detail_th" => $this->input->post("detail_th"),
                    "detail_en" => $this->input->post("detail_en"),
                    "published" => intval($this->input->post("published")),
                    "created_date" => Calendar::currentDateTime(),
                    "updated_date" => Calendar::currentDateTime()
                );


                $arr_data_uploaded = $this->uploadMenuIcon();
                if (!empty($arr_data_uploaded)) {
                    $data['menu_icon']  = $arr_data_uploaded['file_name'];
                }

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
                "page_name" => trim($this->input->post("page_name")),
                "name_th" => trim($this->input->post("name_th")),
                "name_en" => trim($this->input->post("name_en")),
                "detail_th" => $this->input->post("detail_th"),
                "detail_en" => $this->input->post("detail_en"),
                "published" => intval($this->input->post("published")),
                "updated_date" => Calendar::currentDateTime()
            );

            if (!empty($_FILES)) {
                $arr_data_uploaded = $this->uploadMenuIcon();
                if (!empty($arr_data_uploaded)) {
                    $data["menu_icon"] = $arr_data_uploaded["file_name"];
                    // delete old image
                    $arr_result = $this->Page_model->getById($page_id);
                    $this->deleteMenuIcon($arr_result['menu_icon']);
                }
            }

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

    private function uploadMenuIcon()
    {
        $data_uploaded = array();
        $file_element_name = 'menu_icon';

        if ($this->input->post()) {
            $uuid = $this->uuid->v4();
            // config upload
            $config ['upload_path'] = $this->upload_menu_icon_path;
            $config ['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['overwrite'] = FALSE;
            $config['remove_spaces'] = true;
            $config['file_name'] = $uuid;

            // load Upload library
            $this->load->library('upload', $config);
            if (!$this->upload->do_upload($file_element_name)) {
                echo $this->upload->display_errors();
            } else {
                // uploaded data
                $data_uploaded = $this->upload->data();
            }
        }
        return $data_uploaded;
    }

    private function deleteMenuIcon($file_name){
        if (file_exists($this->upload_menu_icon_path . "/" . $file_name)) {
            @unlink($this->upload_menu_icon_path . "/" . $file_name);
        }
    }


}
