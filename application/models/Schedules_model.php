<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Schedules_model extends CI_Model {
	public function manage_schedules($data){
		$this->db->insert('ft_schedules',$data);
	}
	public function getAllSchedules(){
		return $this->db->query("select * from ft_schedules")->result();
	}
	public function getAlldets(){
		return $this->db->query("select fw_workout,fw_id from ft_workout")->result();
	}
	public function deleteitem($fsid){
		return $this->db->query("delete from ft_schedules where fs_id = ".$fsid);
	}
}	
?>