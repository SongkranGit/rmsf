<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH . 'core/Admin_controller.php';

class Slideshow extends Admin_Controller
{
    private $upload_path;

    function __construct()
    {
        parent::__construct();
        $this->load->helper('text');
        $this->load->library("Uuid");
        $this->load->library("ImageBase64");
        $this->load->model("Slideshow_model");
        $this->upload_path = realpath(APPPATH . '../uploads/slideshow');
    }

    public function index()
    {
        $this->load->view("admin/slideshow/list_slideshow");
    }

    public function create()
    {
        if ($_SERVER["REQUEST_METHOD"] == "GET") {
            $view_data = array(
                "data" => array(
                    "action" => ACTION_CREATE,
                    "heading_text" => $this->lang->line("slideshow_title_add")
                )
            );
            $this->load->view("admin/slideshow/slideshow_entry", $view_data);

        } else if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $result = array('success' => false, 'messages' => array());

            $data = array(
                "caption_th" => $this->input->post("caption_th"),
                "caption_en" => $this->input->post("caption_en"),
                "published" => intval($this->input->post("published")),
                "order_seq" => 1,
                "created_date" => Calendar::currentDateTime(),
                "updated_date" => Calendar::currentDateTime()
            );

            //$image_file_type = $this->input->post("image_file_type");
            $image_base_64 = $this->input->post("imageBase64");

            $arr_file_info = $this->saveBase64StrImageToFile($image_base_64);

            if (!empty($arr_file_info)) {
                $data["file_name"] = $arr_file_info["file_name"];
            }

            if ($data["file_name"] != null && $data["file_name"] != '') {
                $result['success'] = $this->Slideshow_model->save($data);
            }
            echo json_encode($result);
        }
    }

    public function update($id)
    {
        if ($_SERVER["REQUEST_METHOD"] == "GET") {

            $arr_result = $this->Slideshow_model->getById($id);
            $view_data = array(
                "data" => array(
                    "action" => ACTION_UPDATE,
                    "heading_text" => $this->lang->line("slideshow_title_edit"),
                    "row" => $arr_result
                )
            );
            $this->load->view("admin/slideshow/slideshow_entry", $view_data);

        } else if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $result = array('success' => false, 'messages' => array());
            $data = array(
                "caption_th" => $this->input->post("caption_th"),
                "caption_en" => $this->input->post("caption_en"),
                "published" => intval($this->input->post("published")),
                "updated_date" => Calendar::currentDateTime()
            );

            if (!empty($this->input->post("imageBase64"))) {
                $arr_file_info = $this->saveBase64StrImageToFile($this->input->post("imageBase64"));
                if (!empty($arr_file_info)) {
                    $data["file_name"] = $arr_file_info["file_name"];
                }
            }

            $result['success'] = $this->Slideshow_model->update($data, $id);
            echo json_encode($result);
        }
    }

    public function delete($id)
    {
        if ($id != null) {
            $result = array('success' => false);
            // Delete file
            $data = $this->Slideshow_model->getById($id);
            $path_file = PATH_UPLOADS . "/" . $data["file_name"];
            if (file_exists($path_file)) {
                @unlink($path_file);
            }
            // Delete from database
            $result['success'] = $this->Slideshow_model->delete($id);
            echo json_encode($result);
        }
    }

    public function loadSlideShowDataTable()
    {
        $data = $this->Slideshow_model->loadSlideShowDataTable();
        echo json_encode($data);
    }


    public function updateOrderSeq()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $response = array('success' => false, 'messages' => array());
            $data = array(
                "order_seq" => $this->input->post("order_seq")
            );
            $response["success"] = $this->Slideshow_model->update($data, $this->input->post("rowId"));
            echo json_encode($response);
        }
    }

    public function uploadImage()
    {
        $data_uploaded = array();
        $file_element_name = 'user_files';

        $uuid = $this->uuid->v4();
        $config ['upload_path'] = PATH_UPLOADS;
        $config ['allowed_types'] = 'gif|jpg|png';
        $config['overwrite'] = FALSE;
        $config['file_name'] = $uuid;
        //$config ['max_size'] = '2000';
        //$config ['max_width'] = '2000';
        //$config ['max_height'] = '2000';

        // load Upload library
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload($file_element_name)) {
            echo $this->upload->display_errors();
        } else {
            // uploaded data
            $data_uploaded = $this->upload->data();
            $this->resizeImage($data_uploaded);
        }

        return $data_uploaded;
    }

    private function resizeImage($arr_data_uploaded)
    {
        $this->load->library("SimpleImage");
        $img = new SimpleImage();
        $img->load($arr_data_uploaded["full_path"])->best_fit(1916, 670)->save($arr_data_uploaded["full_path"]);
    }


    private function saveBase64StrImageToFile($base64img)
    {
        $uuid = $this->uuid->v4();
        $image_file_type = "png";
        $data = $data = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $base64img));
        $file = $this->upload_path  . "/" . $uuid . "." . $image_file_type;
        //Save file
        file_put_contents($file, $data);

        $arr_file_info = array();
        $arr_file_info["file_name"] = $uuid . "." . $image_file_type;

        return $arr_file_info;
    }


}
