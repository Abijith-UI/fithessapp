<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {
	public function authenticateUser($email,$password){
		return $this->db->query("SELECT FT_UserId,FT_UserName,FT_UsertType FROM ft_users WHERE FT_UserEmail='".$email."' and FT_UserPass='".$password."'")->row();
		
	}
}
?>
