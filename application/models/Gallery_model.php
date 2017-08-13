<?php


class Gallery_Model extends CI_Model
{

    public function getById($id)
    {
        $data = array();
        $this->db->select("name_th,name_en");
        $this->db->from('galleries');
        $this->db->where('id', $id);
        $this->db->where('is_deleted=', 0);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }
        $query->free_result();
        return $data;
    }

    public function apiQueryGalleriesData($lang = 'th' , $page_id)
    {
        $data = array();
        $this->db->select("g.id , g.name_th , g.name_en , g.description_th , g.description_en" );
        $this->db->select("gi.id as gallery_image_id, gi.file_name, gi.caption_th, gi.caption_en" );
        $this->db->from('galleries g');
        $this->db->join("galleries_images gi", "gi.gallery_id = g.id" , 'left');
        $this->db->where('g.page_id', $page_id);
        $this->db->where('g.is_deleted=', 0);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $item = array();
                $item['id'] = $row['id'];
                $item['name'] = ($lang=='th')? $row['name_th']:$row['name_en'];
                $item['description'] = ($lang=='th')?$row['description_th']:$row['description_en'];
                $item['images'] = array(
                    'id'=> $row['gallery_image_id'],
                    'image_name'=> $row['file_name'],
                    'caption'=> ($lang=='th')?$row['caption_th']:$row['caption_en']
                );
                array_push($data , $item);
            }
        }
        $query->free_result();
        return $data;
    }

    public function getAll()
    {
        $data = array();
        $this->db->select('*');
        $this->db->from('galleries');
        $this->db->where('is_deleted=', 0);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
        }
        $query->free_result();
        return $data;
    }

    public function getListOfGalleries(){
        $data = array();
        $this->db->select('g.* , ( SELECT gi.file_name FROM galleries_images gi WHERE gi.gallery_id = g.id Order BY order_seq ASC LIMIT 1 ) as file_name ');
        $this->db->select(', ( SELECT gi.gallery_id FROM galleries_images gi WHERE gi.gallery_id = g.id Order BY order_seq ASC LIMIT 1 ) as gallery_id ');
        $this->db->from('galleries g');
        $this->db->where('g.is_deleted=', 0);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
        }
        $query->free_result();
        return $data;
    }

    public function getGalleriesByPageId($page_id){
        $data = array();
        $this->db->select('name_th , name_en , created_date');
        $this->db->from('galleries');
        $this->db->where('page_id' , $page_id);
        $this->db->where('published' , 1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
        }
        $query->free_result();
        return $data;
    }

    public function loadGalleriesDataTable()
    {
        $data = array();
        $rows = array();
        $this->db->select("g.*");
        $this->db->select("p.name_th as page_name_th, p.name_en as page_name_en");
        $this->db->from("galleries g");
        $this->db->join("pages p", "p.id = g.page_id");
        $this->db->where("g.is_deleted", 0);
        $this->db->order_by("g.order_seq", 'ASC');
        $this->db->order_by("g.created_date", 'ASC');
        $query = $this->db->get();

        // echo $this->db->last_query();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $rows[] = array(
                    "id" => $row->id,
                    "page_name"=> (isEnglishLang())?$row->page_name_en:$row->page_name_th,
                    "name_th" => $row->name_th,
                    "name_en" => $row->name_en,
                    "order_seq" => $row->order_seq,
                    "published" => $row->published,
                    "created_date" => Calendar::formatDateTimeToDDMMYYYY($row->updated_date)
                );
            }
        }

        $data['data'] = $rows;
        $query->free_result();
        return $data;
    }


    public function save($data)
    {
        $this->db->insert('galleries', $data);
        if ($this->db->insert_id() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function update($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('galleries', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }


    public function delete($id)
    {
        $data = array('is_deleted' => 1);
        $this->db->where('id', $id);
        $this->db->update('galleries', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

}