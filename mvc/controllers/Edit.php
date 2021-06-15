<?php
class Edit extends Controller{
	function Page($id){
		$GetModel= $this->model("tbl_post");
		$GetDetailPage = $GetModel ->GetDetailPage($id);
		$GetRelatePost = $GetModel ->GetRelatePost(1);
		$this->view("master",["Page"=>"Edit","PageName"=>"Edit","Detail"=>$GetDetailPage,"Relate"=>$GetRelatePost]);
	}

	function EditProductPost(){
		$GetModel= $this->model("tbl_post");
		$title = $_POST["title"];
		$id=$_POST["id"];
		$content = $_POST["content"];
		$name = $_POST["name"];
		$origin = $_POST["origin"];
		$price = $_POST["price"];
		$background = $_POST["background"];
		$quantity = $_POST["quantity"];
		$image='';
		$total = count($_FILES['upload']['name']);
		if($_FILES['upload']['name'][0] != '') {
			for( $i=0 ; $i < $total ; $i++ ) {
				$tmpFilePath = $_FILES['upload']['tmp_name'][$i];
				$image .=date("h").date("i").date("sa").$_FILES['upload']['name'][$i].',';
				if ($tmpFilePath != ""){
					$newFilePath = "./public/images/product/" .date("h").date("i").date("sa").$_FILES['upload']['name'][$i];
					if(move_uploaded_file($tmpFilePath, $newFilePath)) {
					}
				}
			}
		}	
		
		$InsertToDb = $GetModel->EditPost($title,$content,$name,$origin,$price,$image,$background,$id,$quantity);
		header( "Location: ../Detail/Page/".$id);
	}
}
?>