<?php
class tbl_message extends DB{
	public function GetMessage(){
		$qr = "SELECT * FROM message ORDER BY id DESC";
		return mysqli_query($this->con, $qr);
	}

    public function AddMessage($name, $email, $phone, $message){
		$qr = "INSERT INTO message (name,email,phone,message)
		VALUES ('$name', '$email','$phone','$message')";
		return mysqli_query($this->con, $qr);
	}
}
?>