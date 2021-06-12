
<?php 
$row = mysqli_fetch_array($data["Detail"]);
$type ;
if($row["type"] == 1){
	$type = "Little Pug";
}elseif($row["type"] == 2){
	$type = "Big Pug";
}
?>

<header>
<style>
#content {
	height: 300px;
}
</style>
</header>
<div id="body--box__pc" style="height: 100vh;width: 100%;margin: auto;padding-top: 90px">
	<div class="float-left" style="width: 100%;height: 100vh;">
		<div class="container-fluid p-0" style="height: calc(100vh - 100px);display: flex;">
			<?php include("./mvc/views/partials/admin-menu.php"); ?>  
			<div class="p-2" style="width: calc(100% - 220px);height: 100%;">
				<div class="m-0 pl-2 pt-2" style="width: 100%">
					<p class="font-weight-bold mb-1" style="font-size: 150%">Chỉnh sửa sản phẩm</p>
				</div>
				<form action="../EditProductPost" method="post" enctype="multipart/form-data">
					<div class="row m-0 p-2">
						<div class="col-3 p-2">
							<label class="font-weight-bold">Tiêu đề</label>
							<input type="text" value=<?php echo $row['title']; ?> name="title" class="form-control" required>
						</div>
						<div class="col-3 p-2">
							<label class="font-weight-bold">Tên sản phẩm</label>
							<input type="text" name="name" class="form-control" required value="<?php echo $row['title']; ?>">
						</div>
						<div class="col-3 p-2">
							<label class="font-weight-bold">Nguồn gốc</label>
							<select class="form-control" name="origin" id="origin">
								<option value="1">Mỹ</option>
								<option value="2">Nhật Bản</option>
								<option value="3">Trung Quốc</option>
								<option value="4">Úc</option>
								<option value="5">Việt Nam</option>
							</select>
						</div>
						<div class="col-3 p-2">
							<label class="font-weight-bold">Giá</label>
							<input type="number" name="price" value=<?php echo $row['price']; ?> class="form-control" required>
						</div>

						<div class="col-3 p-2">
							<label class="font-weight-bold">Số lượng</label>
							<input type="number" name="quantity" value=<?php echo $row['quantity']; ?> class="form-control" required>
						</div>

						<div class="col-3 p-2">
							<label class="font-weight-bold">Ảnh sản phẩm</label>
							<input type="file" name="upload[]" multiple>
						</div>
						<div class="col-3 p-2">
							<label class="font-weight-bold">Hình nền</label>
							<select class="form-control" id="background" name="background" >
								<option value="1">Hình nền 1</option>
								<option value="2">Hình nền 2</option>
								<option value="3">Hình nền 3</option>
							</select>
						</div>
						<div class="col-9 p-2">
							<label class="font-weight-bold">Mô tả sản phẩm</label>
							<textarea class="form-control" name="content" id="content" required><?php echo $row['content']; ?></textarea>
						</div>
						<input name="id" class="form-control" required value="<?php echo $row['id']; ?>" type="hidden">
						<div class="col-12">
							<button type="submit" class="btn-lg bg float-left text-white">Save</button>
						</div>
					</div>
				</form>
			</div>
		</div>	
	</div>
</div>
<script>
	$("#type-option").val("<?php echo $row["type"]?>");
	$("#origin").val("<?php echo $row["origin"]?>");
	$("#background").val("<?php echo $row["background"]?>");
</script>


