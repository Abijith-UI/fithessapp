<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manage_model extends CI_Model {
	public function manage_user($data){
		$this->db->insert('ft_userdet',$data);
	}
	public function getAllUsers(){
		return $this->db->query("select * from ft_userdet")->result();
	}
	public function deleteItem($UdId) {
		return $this->db->query("delete from ft_userdet where FT_UdId = ".$UdId);
	}
}
?>