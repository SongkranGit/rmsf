<?php

/**
 * Created by PhpStorm.
 * User: BERM-PC
 * Date: 21/12/2558
 * Time: 7:14
 */
class Page_Model extends CI_Model
{

    public function getById($id)
    {
        $data = array();
        $this->db->select("*");
        $this->db->from('pages');
        $this->db->where('id', $id);
        $this->db->where('is_deleted=', 0);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }
        $query->free_result();
        return $data;
    }

    public function getByName($name)
    {
        $data = array();
        $this->db->select("p.* ");
        $this->db->from('pages p');
        $this->db->where('p.name', strtolower($name));
        $this->db->where('p.is_deleted', 0);
        //$this->db->where('published', 1);
        $query = $this->db->get();;
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }
        $query->free_result();
        return $data;
    }

    public function apiQueryPageData( $lang='th', $page_name){
        $data = array();
        $this->db->select("p.*");
        $this->db->from('pages p');
        $this->db->where('p.page_name', strtolower($page_name));
        $this->db->where('p.is_deleted', 0);
        //$this->db->where('published', 1);
        $query = $this->db->get();;
        if ($query->num_rows() > 0) {
            $row = $query->row_array();
            $data['id'] = $row['id'];
            $data['name'] = ($lang=='th')?$row['name_th']:$row['name_en'];
            $data['detail'] = ($lang=='th')?$row['detail_th']:$row['detail_en'];
            $data['language'] = ($lang=='th')?'thai':'english';
        }
        $query->free_result();
        return $data;
    }

    public function getAll()
    {
        $data = array();
        $this->db->select('p.*');
        $this->db->from('pages p');
        $this->db->where('is_deleted', 0);
        $this->db->where('published', 1);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
        }
        $query->free_result();
        return $data;
    }

    public function loadPagesDataTable()
    {
        $data = array();
        $rows = array();
        $this->db->select("p.* ");
        $this->db->from("pages p");
        $this->db->where("p.is_deleted =", 0);
        $this->db->order_by("p.id", 'ASC');
        $query = $this->db->get();

        // echo $this->db->last_query();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $rows[] = array(
                    "id" => $row->id,
                    "name_th" => $row->name_th,
                    "name_en" => $row->name_en,
                    "detail_th" => $row->detail_th,
                    "detail_en" => $row->detail_en,
                    "published" => $row->published,
                    "updated_date" => Calendar::formatDateTimeToDDMMYYYY($row->updated_date)
                );
            }
        }

        $data['data'] = $rows;
        $query->free_result();
        return $data;
    }


    public function save($data)
    {
        $this->db->insert('pages', $data);
        if ($this->db->insert_id() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function saveOrderPages($pages)
    {
        if (count($pages)) {
            foreach ($pages as $order => $page) {
                if ($page['item_id'] != '') {
                    $data = array('parent_id' => (int)$page['parent_id'], 'order' => $order);
                    $this->db->set($data);
                    $this->db->where('id', $page["item_id"]);
                    $this->db->update('pages');
                }
            }
            return true;
        } else {
            return false;
        }
    }


    public function update($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('pages', $data);
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
        $this->db->update('pages', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

}