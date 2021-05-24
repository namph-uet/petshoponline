<?php
class ApiController extends Controller{

	function Search($inputSearch){
		$GetModel= $this->model("tbl_post");
		$GetPost = $GetModel ->Search($inputSearch);

		$result=array();
		foreach($GetPost as $res){ 
			$GetPost=array();
			$GetPost['id']=$res['id'];
			$GetPost['title']=$res['title'];
			$GetPost['type']=$res['type'];
			$GetPost['name']=$res['name'];
			$GetPost['image']=$res['image'];
			$GetPost['origin']=$res['origin'];
			$GetPost['quantity']=$res['quantity'];
			array_push($result, $GetPost);
		}
		echo $res=json_encode($result);
	}

	function CheckQuantity($postId) {
		$GetModel= $this->model("tbl_post");
		$GetPost = $GetModel ->GetQuantity($postId);
		return json_encode($GetPost);
	}
}
?>