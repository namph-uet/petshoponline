<?php
class OutofStock extends Controller{
	function Home(){
		$this->view("master",["Page"=>"outofstock","PageName"=>"outofstock"]);
	}
}
?>