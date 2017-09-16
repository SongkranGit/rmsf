<?php

/**
 * Created by PhpStorm.
 * User: BERM-PC
 * Date: 21/12/2558
 * Time: 7:14
 */
class Gallery_Images_Model extends CI_Model
{

    public function getTopGalleryId(){
        $data = array();
        $this->db->select("gal.id");
        $this->db->from('galleries gal');
        $this->db->order_by("gal.order_seq", 'ASC');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }

        $query->free_result();
        return $data["id"];
    }

    public function getById($id)
    {
        $data = array();
        $this->db->select("*");
        $this->db->from('galleries_images');
        $this->db->where('id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }
        $query->free_result();
        return $data;
    }

    public function getByGalleryId($gallery_id , $lang = 'th')
    {
        $data = array();
        $this->db->select("gi.*");
        $this->db->from('galleries_images gi');
        $this->db->join('galleries g' , 'g.id = gi.gallery_id' );
        $this->db->where('gi.gallery_id', $gallery_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $item = array();
                $item['gallery_id'] = $row['gallery_id'];
                $item['image_name'] = base_url('uploads/gallery/'.$row['gallery_id'].'/'.$row['file_name']) ;
                $item['caption'] = ($lang=='th')?$row['caption_th']:$row['caption_en'];
                $item['detail'] = ($lang=='th')? strip_tags( $row['detail_th']):strip_tags($row['detail_en']);

                array_push($data , $item);
            }
        }
        $query->free_result();
        return $data;
    }

    public function apiQueryGetAllGalleryImages($arr_gallery_id , $lang){
        $data = array();
        $this->db->select("gi.* , g.published_date  ");
        $this->db->from('galleries_images gi');
        $this->db->join('galleries g' , 'g.id = gi.gallery_id');
        $this->db->where_in('gi.gallery_id', $arr_gallery_id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $item = array();
                $item['gallery_id'] = $row['gallery_id'];
                $item['published_date'] = Calendar::formatDateToDDMMYYYY($row['published_date']);
                $item['image_name'] = base_url('uploads/gallery/'.$row['gallery_id'].'/'.$row['file_name']) ;
                $item['caption'] = ($lang=='th')?$row['caption_th']:$row['caption_en'];
                $item['detail'] = ($lang=='th')? strip_tags( $row['detail_th']):strip_tags($row['detail_en']);

                array_push($data , $item);
            }
        }
        $query->free_result();
        return $data;
    }

    public function loadUploadImageDataTable()
    {
        $gallery_id = $this->uri->segment(4);
        $published =  $this->uri->segment(5);

        $data = array();
        $rows = array();
        $this->db->select("gi.id , gi.gallery_id , gi.caption_th , gi.caption_en");
        $this->db->select("gi.file_name , gi.published , gi.order_seq , g.name_th , g.name_en ");
        $this->db->from("galleries_images gi");
        $this->db->join("galleries g" , 'g.id= gi.gallery_id', 'left');
        $this->db->where("gi.gallery_id" , $gallery_id);
        $this->db->where("gi.gallery_id is not null");
        $this->db->where("gi.published" , $published);
        //$this->db->order_by("gi.created_date", 'ASC');
        $this->db->order_by("gi.order_seq", 'ASC');
        $query = $this->db->get();

         //echo $this->db->last_query();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $rows[] = array(
                    "id" => $row->id,
                    "gallery_id" => $row->gallery_id,
                    "file_name" => $row->file_name,
                    "gallery_name" => isEnglishLang()?$row->name_en : $row->name_th,
                    "order_seq" => $row->order_seq,
                    "caption_th" => mb_strimwidth($row->caption_th, 0, 40, " ..."),
                    "caption_en" =>  mb_strimwidth($row->caption_en, 0, 40, " ..."),
                    "published" => $row->published
                );
            }
        }

        $data['data'] = $rows;
        $query->free_result();
        return $data;
    }

    public function getAll()
    {
        $data = array();
        $this->db->select('*');
        $this->db->from('galleries_images');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
        }
        $query->free_result();
        return $data;
    }

    public function save($data)
    {
        $this->db->insert('galleries_images', $data);
        if ($this->db->insert_id() > 0) {
            return true;
        } else {
            return false;
        }
    }


    public function update($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('galleries_images', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function updateByImageUUID($data, $image_uuid)
    {
        $this->db->where('image_uuid', $image_uuid);
        $this->db->update('galleries_images', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }


    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('galleries_images');
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function deleteByFileName($file_name)
    {
        $this->db->where('file_name', $file_name);
        $this->db->delete('galleries_images');
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }


}
