<?php

class Contact_Model extends CI_Model
{

    public function getById($id)
    {
        $data = array();
        $this->db->select("con.*");
        $this->db->from('contacts con');
        $this->db->where('con.id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }
        $query->free_result();
        return $data;
    }


    public function getAll()
    {
        $data = array();
        $this->db->select('*');
        $this->db->from('contacts');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $data[] = $row;
            }
        }
        $query->free_result();
        return $data;
    }


    public function loadContactsDataTable()
    {
        $data = array();
        $rows = array();
        $this->db->select("*");
        $this->db->from("contacts");
        $this->db->order_by("created_date", 'ASC');
        $query = $this->db->get();

        // echo $this->db->last_query();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $rows[] = array(
                    "id" => $row->id,
                    "name" => $row->name,
                    "phone" => $row->phone,
                    "message" => $row->message,
                    "email" => $row->email,
                    "subject" => $row->subject,
                    "created_date" => Calendar::formatDateTimeToDDMMYYYY($row->created_date)
                );
            }
        }

        $data['data'] = $rows;
        $query->free_result();
        return $data;
    }


    public function save($data)
    {
        $this->db->insert('contacts', $data);
        if ($this->db->insert_id() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function update($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('contacts', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }



    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('contacts');
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

}