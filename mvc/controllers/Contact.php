<?php

// http://localhost/live/Home/Show/1/2

class Contact extends Controller{
	function Home(){
		$GetModel= $this->model("tbl_message");
		$GetMessage = $GetModel ->GetMessage();
		$this->view("master",["Page"=>"contact","PageName"=>"contact","Message"=>$GetMessage]);
	}
	function Submit() {
		$name = $_POST["name"];
		$email = $_POST["email"];
		$phone = $_POST["phone"];
		$message = $_POST["message"];

		$AddModel= $this->model("tbl_message");
		$GetPost = $AddModel ->AddMessage($name, $email, $phone, $message);

		$this->view("master",["Page"=>"thank","PageName"=>"succes"]);
	}
}
?>