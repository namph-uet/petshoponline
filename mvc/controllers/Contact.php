<?php

// http://localhost/live/Home/Show/1/2

class Contact extends Controller{
	function Home(){
		$GetModel= $this->model("tbl_post");
		$GetPost = $GetModel ->GetPost();
		$this->view("master",["Page"=>"contact","PageName"=>"contact"]);
	}
}
?>