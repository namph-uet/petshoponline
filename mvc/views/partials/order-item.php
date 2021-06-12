

<?php
while($row = mysqli_fetch_array($data["GetPayment"])){
	$method ;
	if($row["method"] == 1){
		$method = "Momo";
	}elseif($row["method"] == 2){
		$method = "Thanh toán khi nhận hàng";
	}
	echo '<div class="col-12 p-2"><div class=" bg-white p-3 shadow1 " style="display:flex">
	<div style="width: 50%">
	<p>Tên khách hàng: '.$row["name"].'</p>
	<p>Số điện thoại: '.$row["phone"].'</p>
	<p>Địa chỉ nhận hàng: '.$row["address"].'</p>
	<p>Phương thức thanh toán: '.$method.'</p>
	<p class="font-weight-bold" style="font-size:140%">Tổng: '.$row["total"].'	vnd</p>
	</div>
	<div style="width: 50%">
	'.$row["infocart"].'
	</div>
	</div></div>';


}
?>