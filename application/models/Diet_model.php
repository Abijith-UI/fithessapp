<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Diet_model extends CI_Model {
	public function manage_diet($data){
		$this->db->insert('ft_diet',$data);
	}
	public function getAllDiets(){
		return $this->db->query("select * from ft_diet")->result();
	}
}	
?>