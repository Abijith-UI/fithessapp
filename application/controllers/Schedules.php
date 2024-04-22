<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Schedules extends CI_Controller {
	public function __construct(){
		
		parent::__construct();
	  $this->load->model('Schedules_model');
	}

	public function index(){
	
		if(!$this->session->userdata('UserId')){
			header('location:'.base_url());
		}
		else {
			$data['username'] = $this->session->userdata('UserName');
			$this->load->view('common/header',$data);
			$this->load->view('common/sidebar');
			$this->load->view('schedules');
			$this->load->view('common/footer');
		}
	}
	public function schedulee(){
		$data = array(
			'fs_workout'=>$this->input->post('swork'),
			'fs_time'=>$this->input->post('timee'),
			'fs_day'=>$this->input->post('day'),
		);			
		$manage_result=$this->Schedules_model->manage_schedules($data);
		if($data) {
			echo json_encode(array('message'=>'Workout Scheduled'));
		}
		else{
			echo json_encode(array('message'=>'not scheduled'));	
		}	
	}
	public function getAllSchedules(){
		$result=$this->Schedules_model->getAllSchedules();
		echo json_encode($result);
	}
	public function getAlldets(){
		$result=$this->Schedules_model->getAlldets();
		echo json_encode($result);
	}
	public function deleteschedules() {
		$fsid = $this->input->post("fsid");
		if($fsid) {
			$deleteItem = $this->Schedules_model->deleteItem($fsid);
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