
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller{
    public function __construct(){
		
		parent::__construct();
		// $this->load->model('Login_model');
		$this->load->model('Api_Model');
	}
   
    public function userregister(){
		$name = $this->input->post('uname');
        $age = $this->input->post('unage');
        $gmail = $this->input->post('ugmail');
        $weight = $this->input->post('uweight');
        $height = $this->input->post('uheight');
        $password = md5($this->input->post('upassword'));
		
		// echo $name;exit();

		//email exisitng or not
		$useradd = $this->Api_Model->getreg($gmail);
		// echo $useradd;exit();

		if($useradd){
			$res =  array('status'=>201, 'message'=> 'user already existing');
			echo json_encode($res);

		}
        else{
			//create user
			$data = array(
				'FT_UdName' => $name,
				'FT_UdAge' => $age,
                'FT_Udgmail' => $gmail,
				'FT_UdHeight' => $height,
                'FT_UdWeight' => $weight,
                'FT_UdPassword' => $password,

			);
			$res = $this->Api_Model->reguser($data);
			if($res){
				$res=  array('status'=>200, 'message'=> 'successfully registered user');
				echo json_encode($res);
			}else{
				$res =  array('status'=> 404, 'message'=> 'error in registration');
				echo json_encode($res);
			}
		}	
	}

	public function userlogin(){
		$gmail = $this->input->post('cgmail');
		$password = $this->input->post('cpassword');
		$user = $this->Api_Model->login($gmail,$password);
		if($user){
			$user=  array('status'=>200, 'message'=> 'successfully registered user','data'=>$user);
			$this->output
			->set_content_type('application/json','utf-8')
			->set_output(json_encode($user));
		}
		else{
			$user =  array('status'=> 404, 'message'=> 'error in registration');
			$this->output
			->set_content_type('application/json','utf-8')
			->set_output(json_encode($user));
		}
	}
	public function userdetails($userid){
		$name = $this->input->post('dname');
		$gmail = $this->input->post('dgmail');
		$age = $this->input->post('dage');
		$height = $this->input->post('dheight');
		$weight = $this->input->post('dweight');

		$data=array(
			'FT_UdName'=>$name,
			'FT_Udgmail'=>$gmail,
			'FT_UdAge'=>$age,
			'FT_UdWeight'=>$weight,
			'FT_UdHeight'=>$height,

		);
		$userdet = $this->Api_Model->updatedet($userid,$data);
		if($userdet){
			$user=  array('status'=>200, 'message'=> 'successfully registered user');
			$this->output->set_status_header(200)->set_content_type('application/json','utf-8')->set_output(json_encode($user));
		}
		else{
			$user =  array('status'=> 404, 'message'=> 'error in registration');
			$this->output->set_status_header(200)->set_content_type('application/json','utf-8')->set_output(json_encode($user));
		}
	}

	public function getUserDetails(){
		$userid=$this->input->post('id');
		if($userid){
		   $data=$this->Api_Model->getdetails($userid);
		   $response = array('status'=>200,'message'=>'Profile loaded..','data'=>$data);
			// echo json_encode($data);
			$this->output->set_status_header(200)->set_content_type('application/json','utf-8')->set_output(json_encode($response));
		}else{
		   $response = array('status'=>404,'message'=>'failed');
			$this->output->set_status_header(200)->set_content_type('application/json','utf-8')->set_output(json_encode($response));
		}
	}
}

?>