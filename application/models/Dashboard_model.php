<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Dashboard_model extends CI_Model {
	
	public function getRegisterCounts() {
		return $this->db->query("select count(FT_UdId) as ucount from ft_userdet")->row();
	}
	public function getScheduleCounts() {
		return $this->db->query("select count(fs_id) as scount from ft_schedules")->row();
	}
	
	public function getWorkoutCounts() {
		return $this->db->query("select count(fw_id) as wcount from ft_workout")->row();
	}
	
	public function getAllUsers(){
		return $this->db->query("select * from ft_userdet order by FT_UdId desc limit 0,5")->result();
	}
	
}
?>
