<?php

/**
 * Created by PhpStorm.
 * User: BERM-PC
 * Date: 21/12/2558
 * Time: 7:14
 */
class Setting_Model extends CI_Model
{

    function getSettings()
    {
        $data = array();
        $this->db->select(" s.* ", FALSE);
        $this->db->from('settings s');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $data = $query->row_array();
        }
        $query->free_result();
        return $data;
    }

    public function apiQuerySettingData($lang = 'th' )
    {
        $data = array();
        $this->db->select("*");
        $this->db->from('settings');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $item = array();
                $item['address'] = ($lang=='th')? $row['address_th']:$row['address_en'];
                $item['website_name'] = $row['website_name'];
                $item['email'] = $row['email'];
                $item['mobile'] = $row['mobile'];
                $item['phone'] = $row['phone'];
                $item['fax'] = $row['fax'];
                $item['map_url'] = $row['map_url'];
                array_push($data , $item);
            }
        }
        $query->free_result();
        return $data;
    }


    function save($data)
    {
        $this->db->insert('settings', $data);
        if ($this->db->insert_id() > 0) {
            return true;
        } else {
            return false;
        }
    }

    function update($data, $id)
    {
        $this->db->where('setting_id', $id);
        $this->db->update('settings', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    function delete($id)
    {
        $this->db->where('setting_id', $id);
        $this->db->delete('settings');
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

}