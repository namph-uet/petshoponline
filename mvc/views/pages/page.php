<?php 
$row = mysqli_fetch_array($data["Detail"]);

?>
<div class="container" style="padding-top: 105px">
	<div style="width: 100%;">
		<div class="row m-0">
			<?php include("./mvc/views/partials/page-image-slide.php"); ?>
			<div class="col-12 col-md-6 col-lg-8 p-3">
				<p class="font-weight-bold mb-0" style="font-size: 130%"><?php echo $row['name']; ?></p>
				<p><?php echo $row['content']; ?></p>
				<div class="float-left" style="width: 50%">
					<p class="mb-0 cl font-weight-bold" style="overflow: hidden;max-height: 25px">Mã sản phẩm: <?php echo $row['title']; ?></p>
					<p  class="mb-0 cl font-weight-bold" style="overflow: hidden;max-height:25px">Quốc gia: 
					<?php
					switch($row['origin'])
					{
						case 1: 
							echo 'Mỹ';
							break;
						
						case 2: 
							echo 'Nhật Bản';
							break;

						case 3: 
							echo 'Trung Quốc';
							break;

						case 4: 
							echo 'Úc';
							break;
						
						case 5: 
							echo 'Việt Nam';
							break;
						
						default: 
							echo "Việt Nam";
							break;
					}
						
					//  echo $row['origin']; 
					 ?></p>
				</div>
				<p class="mt-4 font-weight-bold mb-0 float-right" style="font-size: 200%"><?php echo number_format($row['price']); ?>	vnd</p>
				<div style="clear: both;"></div>

				<div onclick="addToCart(<?php echo $row['id']; ?>,`<?php echo $row['name']; ?>`,`<?php echo $row['image']; ?>`,<?php echo $row['price']; ?>)" class="btn bg mt-3 text-white float-right ml-2">
					<i class="fa fa-shopping-basket text-white " aria-hidden="true"></i>
				</div>
				<a href="../../Payment/Checkout">
					<div onclick="addToCart(<?php echo $row['id']; ?>,`<?php echo $row['name']; ?>`,`<?php echo $row['image']; ?>`,<?php echo $row['price']; ?>)" class="btn bg mt-3 text-white float-right">Mua<i class="fa fa-hand-paper-o ml-1" aria-hidden="true"></i></div>
				</a>
				<div style="clear: both;"></div>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
	.post--box:hover{
		transform: scale(1.02);
		transition: 0.3s;
	}
</style>
<div class="container pl-2 pr-2 pt-3 pb-5">
	<p class="font-weight-bold ml-1 mb-1" style="font-size: 180%">Đề xuất cho bạn</p>
	<div class="row m-0">		
		<?php include("./mvc/views/partials/page-relate-post.php"); ?> 
	</div>
</div>

<script type="text/javascript">
	function addToCart(id,name,image,price){
		console.log('asdasdad')
  		modal.style.display = "block";
	}
</script>
