<?php
class Detail extends Controller{
	function Page($id){
		$GetModel= $this->model("tbl_post");
		$GetDetailPage = $GetModel ->GetDetailPage($id);
		$name = $GetModel ->getPostName($id);

		$GetRelatePost = $GetModel ->GetRelatePost($name);
		// $this->view("master",["Page"=>"Page","PageName"=>"Page","Detail"=>$GetDetailPage,"Relate"=>$GetRelatePost]);
	}
}
?>