<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function __construct(){
		
		parent::__construct();
		$this->load->model('Dashboard_model');
	}

	public function index(){
	
		if(!$this->session->userdata('UserId')){
			header('location:'.base_url());
		}
		else {
			
			$usercounts = $this->Dashboard_model->getRegisterCounts();
			$data['registers'] = $usercounts->ucount;
			
			$schedulecounts = $this->Dashboard_model->getScheduleCounts();
			$data['schedules'] = $schedulecounts->scount;
			
			$workoutcounts = $this->Dashboard_model->getWorkoutCounts();
			$data['workouts'] = $workoutcounts->wcount;
			
			$data['username'] = $this->session->userdata('UserName');
			$this->load->view('common/header',$data);
			$this->load->view('common/sidebar');
			$this->load->view('dashboard');
			$this->load->view('common/footer');
		}
	}
	public function getAllUsers(){
		$result=$this->Dashboard_model->getAllUsers();
		echo json_encode($result);
	}
	
}
?>