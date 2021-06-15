<?php
class tbl_post extends DB{
	public function GetPost(){
		$qr = "SELECT * FROM tbl_post ORDER BY id DESC";
		return mysqli_query($this->con, $qr);
	}
	public function GetDetailPage($id){
		$qr = "SELECT * FROM tbl_post WHERE tbl_post.id=$id";
		return mysqli_query($this->con, $qr);
	}
	public function GetRelatePost($name){
		$qr = "SELECT * FROM tbl_post WHERE tbl_post.name LIKE '%$name%' ORDER BY id DESC";
		return mysqli_query($this->con, $qr);
	}
	// test
	public function Search($inputSearch){
		$qr = "SELECT * FROM tbl_post WHERE tbl_post.name LIKE '%$inputSearch%' LIMIT 6";
		return mysqli_query($this->con, $qr);
	}
	public function AddPost($title,$content,$name,$origin,$quantity,$price,$image,$background){
		$qr = "INSERT INTO tbl_post (title,content,name,origin,quantity,price,image,background,active)
		VALUES ('$title', '$content','$name','$origin','$quantity','$price','$image','$background',1)";
		return mysqli_query($this->con, $qr);
	}

	public function DeleteProduct($id){
		$qr ="DELETE FROM tbl_post WHERE id=$id";
		return mysqli_query($this->con, $qr);
	}

	public function EditPost($title,$content,$name,$origin,$price,$image,$background,$id,$quantity){
		$qr = "";
		if($image != '') {
			$qr = "UPDATE tbl_post SET title='$title',content='$content',name='$name',origin='$origin',
			price='$price',image='$image',background='$background',quantity='$quantity' WHERE id='$id'";
		}
		else
		{
			$qr = "UPDATE tbl_post SET title='$title',content='$content',name='$name',origin='$origin',
			price='$price',background='$background',quantity='$quantity' WHERE id='$id'";
		}
		return mysqli_query($this->con, $qr);
	}

	public function GetQuantity($id) {
		$getQuantityQuery = "SELECT quantity FROM tbl_post WHERE id=$id";
		$sqlResult = mysqli_query($this->con, $getQuantityQuery);
		
		$quantity = 0;
		while ($row = mysqli_fetch_assoc($sqlResult)) {
			$quantity = (int)$row["quantity"];
		}
		return $quantity;
	}

	public function getPostName($id) {
		$getQuantityQuery = "SELECT name FROM tbl_post WHERE id=$id";
		$sqlResult = mysqli_query($this->con, $getQuantityQuery);
		
		$name = "";
		while ($row = mysqli_fetch_assoc($sqlResult)) {
			$name = $row["name"];
		}
		return $name;
	}
}
?>