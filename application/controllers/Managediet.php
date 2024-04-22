<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Managediet extends CI_Controller {
	public function __construct(){
		
		parent::__construct();
	  $this->load->model('Diet_model');
	}

	public function index(){
	
		if(!$this->session->userdata('UserId')){
			header('location:'.base_url());
		}
		else {
			$data['username'] = $this->session->userdata('UserName');
			$this->load->view('common/header',$data);
			$this->load->view('common/sidebar');
			$this->load->view('managediet');
			$this->load->view('common/footer');
		}
	}
	public function managedt(){
		$data = array(
			'Fd_Name'=>$this->input->post('Name'),
			'Fd_breakfast'=>$this->input->post('Breakfast'),
			'Fd_lunch'=>$this->input->post('Lunch'),
			'Fd_dinner'=>$this->input->post('Dinner')
		);			
		$manage_result=$this->Diet_model->manage_diet($data);
		if($data) {
			echo json_encode(array('message'=>'Diet added succesfully'));
		}
		else{
			echo json_encode(array('message'=>'Diet not added'));	
		}	
	}
	public function getAllDiets(){
		$result=$this->Diet_model->getAllDiets();
		echo json_encode($result);
	}
}
?>