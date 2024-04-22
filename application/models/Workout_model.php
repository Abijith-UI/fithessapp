<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Workout_model extends CI_Model {
	public function manage_workout($data){
		$this->db->insert('ft_workout',$data);
	}
	public function getAllWorkouts(){
		return $this->db->query("select * from ft_workout")->result();
	}
	
	public function deleteitem($fwid){
		return $this->db->query("delete from ft_workout where fw_id = ".$fwid);
	}
	
}	
?>