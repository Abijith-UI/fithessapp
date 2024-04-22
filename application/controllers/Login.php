<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct(){
		
		parent::__construct();
		$this->load->model('Login_model');
	}


	
	public function index(){
		$this->load->view('login');
	}
	public function authenticate(){
		
	$email = $this->input->post('email');
	$password = md5($this->input->post('password'));
	$login_result=$this->Login_model->authenticateUser($email,$password);
	if($login_result){
		$this->session->set_userdata('UserId',$login_result->FT_UserId);
		$this->session->set_userdata('UserName',$login_result->FT_UserName);
		echo json_encode(array('message'=>null,
								'status'=>1));
	}
	else{
		echo json_encode(array('message'=>'Invalid user credentials',
								'status'=>0));
	}
}
}
?>
