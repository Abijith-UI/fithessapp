<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageusers extends CI_Controller {
	public function __construct(){
		
		parent::__construct();
	  $this->load->model('Manage_model');
	}

	public function index(){
	
		if(!$this->session->userdata('UserId')){
			header('location:'.base_url());
		}
		else {
			$data['username'] = $this->session->userdata('UserName');
			$this->load->view('common/header',$data);
			$this->load->view('common/sidebar');
			$this->load->view('manageusers');
			$this->load->view('common/footer');
		}
	}
	public function manages(){
		$data = array(
			'FT_UdName'=>$this->input->post('name'),
			'FT_Udgmail'=>$this->input->post('gmail'),
			'FT_UdPassword'=>md5($this->input->post('password')),
			'FT_UdAge'=>$this->input->post('age'),
			'FT_UdWeight'=>$this->input->post('weight'),
			'FT_UdHeight'=>$this->input->post('height'),
			
			
		);			
		$manage_result=$this->Manage_model->manage_user($data);
		if($data) {
			echo json_encode(array('message'=>'Lets start'));
		}
		else{
			echo json_encode(array('message'=>'not added'));	
		}	
	}
	public function getAllUsers(){
		$result=$this->Manage_model->getAllUsers();
		echo json_encode($result);
	}
	public function deleteUser() {
		$UdId = $this->input->post("UdId");
		if($UdId) {
			$deleteItem = $this->Manage_model->deleteItem($UdId);
			echo json_encode(array("status"=>1,
								"msg"=>"Item deleted successfully."));
		}
		else {
			echo json_encode(array("status"=>0,
								"msg"=>"Invalid parameter value."));
		}
	}
}
?>