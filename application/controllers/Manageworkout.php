<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageworkout extends CI_Controller {
	public function __construct(){
		
		parent::__construct();
	  $this->load->model('Workout_model');
	}

	public function index(){
	
		if(!$this->session->userdata('UserId')){
			header('location:'.base_url());
		}
		else {
			$data['username'] = $this->session->userdata('UserName');
			$this->load->view('common/header',$data);
			$this->load->view('common/sidebar');
			$this->load->view('manageworkout');
			$this->load->view('common/footer');
		}
	}
	public function managess(){
		$data = array(
			'fw_workout'=>$this->input->post('excersice'),
			'fw_sets'=>$this->input->post('set'),
			'fw_reps'=>$this->input->post('rep'),
		);			
		$manage_result=$this->Workout_model->manage_workout($data);
		if($data) {
			echo json_encode(array('message'=>'Exercise inserted succesfully'));
		}
		else{
			echo json_encode(array('message'=>'Exercise not added'));	
		}	
	}
	public function getAllWorkouts(){
		$result=$this->Workout_model->getAllWorkouts();
		echo json_encode($result);
	}
	public function deleteworkouts() {
		$fwid = $this->input->post("fwid");
		if($fwid) {
			$deleteItem = $this->Workout_model->deleteItem($fwid);
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