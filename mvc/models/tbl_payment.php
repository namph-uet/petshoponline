<?php
class tbl_payment extends DB{
	public function WriteInfo($name, $phone, $address,$note,$method,$infocart,$total, $postIds, $quantityOrder){
		$qr = "INSERT INTO tbl_payment (name, phone, address,note,method,infocart,total,active, post_id, quantity_order)
		VALUES ('$name', '$phone', '$address','$note','$method','$infocart','$total',1, '$postIds', '$quantityOrder')";

		$order_postIds = explode(",", $postIds);
		$orderCount = explode(",", $quantityOrder);

		$check = true;

		for($index = 0; $index < count($order_postIds) - 1; $index++) {
			$getQuantityQuery = "SELECT quantity FROM tbl_post WHERE id=$order_postIds[$index]";
			$sqlResult = mysqli_query($this->con, $getQuantityQuery);
			
			while ($row = mysqli_fetch_assoc($sqlResult)) {
				$oldQuantity = (int)$row["quantity"];
			}
			
			if($oldQuantity-$orderCount[$index] < 0) $check = false;
		}

		if($check == false) return false;
		else {
			for($index = 0; $index < count($order_postIds) - 1; $index++) {
				$getQuantityQuery = "SELECT quantity FROM tbl_post WHERE id=$order_postIds[$index]";
				$sqlResult = mysqli_query($this->con, $getQuantityQuery);
				
				while ($row = mysqli_fetch_assoc($sqlResult)) {
					$oldQuantity = (int)$row["quantity"];
				}
	
				$updatePostQuery = "UPDATE tbl_post SET quantity=($oldQuantity-$orderCount[$index]) WHERE id=$order_postIds[$index]";
				mysqli_query($this->con, $updatePostQuery);
	
			}
			mysqli_query($this->con, $qr);
			return true;
		}
		
		
	}
	public function GetPayment(){
		$qr = "SELECT * FROM tbl_payment ORDER BY id DESC";
		return mysqli_query($this->con, $qr);
	}
}
?>
