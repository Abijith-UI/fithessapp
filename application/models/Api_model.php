<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_Model extends CI_Model {
    public function getreg($gmail) {
        $this->db->select('*');
        $this->db->from('ft_userdet');
        $this->db->where('FT_Udgmail', $gmail);
        $query = $this->db->get();
        // echo $query;exit();
        return $query->num_rows() > 0; // Returns true if email exists, false otherwise
    }
    public function reguser($data) {
       
        $this->db->insert('ft_userdet', $data);
        return $this->db->affected_rows() > 0;
    }

    public function login($gmail,$password){
        $this->db->select('*');
        $this->db->from('ft_userdet');
        $this->db->where('FT_Udgmail', $gmail);
        $this->db->where('FT_UdPassword', $password);
        return $this->db->get()->row();
        // echo $query;exit();
         
    }

    public function updatedet($userid,$data){
        $this->db->where('FT_UdId',$userid);
        $this->db->update('ft_userdet',$data);
    }
    public function getdetails($userid)
    {
        $query=$this->db->get_where('ft_userdet',array('FT_UdId'=>$userid));
        return $query->result_array();
    }

}
?>