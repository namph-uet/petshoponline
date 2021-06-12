<div  class="container-fluid p-0">
	<img id="banner" src="./public/images/banner/banner1.png" width="100%" style="margin-top: 85px">
</div>
<style type="text/css">
	.post--box:hover{
		transform: scale(1.02);
		transition: 0.3s;
	}
	/* The Modal (background) */
	.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0,0,0); /* Fallback color */
	background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}

	/* Modal Content */
	.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 30%;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
	}

	/* Add Animation */
	@-webkit-keyframes animatetop {
	from {top:-300px; opacity:0} 
	to {top:0; opacity:1}
	}

	@keyframes animatetop {
	from {top:-300px; opacity:0}
	to {top:0; opacity:1}
	}

	/* The Close Button */
	.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
	}

	.close:hover,
	.close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
	}

	.modal-header {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
	}

	.modal-body {padding: 2px 16px;}

	.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
	}
</style>

<div class="container pl-2 pr-2 pt-3 pb-5">
	<p class="font-weight-bold ml-1 mb-1" style="font-size: 180%">Các sản phẩm</p>
	<div class="row m-0">
		<?php include("./mvc/views/partials/home-post.php"); ?>  
	</div>
</div>
<div id="myModal" class="modal">
	<div class="modal-content">
		<div class="modal-header">
			<h2>Hết hàng</h2>
			<span class="close" onclick="closeModel()">&times;</span>
		</div>
		<div class="modal-body">
			<h4>Hiện tại sản phẩm đang tạm hết hàng</h4>
			<p>Mời quý khách chọn sản phẩm khác!</p>
		</div>
	</div>
</div>
