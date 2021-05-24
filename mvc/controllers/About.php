<?php

// http://localhost/live/Home/Show/1/2

class About extends Controller{
	function Home(){
		$GetModel= $this->model("tbl_post");
		$GetPost = $GetModel ->GetPost();
		$this->view("master",["Page"=>"about","PageName"=>"about"]);
	}
}
?>