<?php
class Message extends Controller{
	function home(){
		if(isset($_SESSION["email"])){
			$GetModel= $this->model("tbl_message");
			$GetMessage = $GetModel ->GetMessage();
			$this->view("master",["Page"=>"message","PageName"=>"Message","GetMessage"=>$GetMessage]);
		}else{
			header("Location: ./login/admin");
		}
	}	
}
?>