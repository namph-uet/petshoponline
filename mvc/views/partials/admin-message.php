<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V05</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="./public/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./public/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./public/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="./public/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="./public/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="./public/css/util.css">
	<link rel="stylesheet" type="text/css" href="./public/css/main.css">
	<style>
		.container-table100 {
			max-width: 100%;
			margin: 0 auto;
			min-height: 100vh;
			display: -webkit-box;
			display: -webkit-flex;
			display: -moz-box;
			display: -ms-flexbox;
			display: flex;
			flex-wrap: wrap;
			align-items: center;
			justify-content: center;
			padding: 0px;
		}
        .column2th {
            width: 100px;
            margin-left: 20px;
        }
		.column2 {
			width: 100px;
		}
		.column3 {
			width: 100px;
		}
		.column4 {
			width: 100px;
		}
		.wrap-table100 {
			margin-top: 100px;
		}
		.fixed_headers {
			position: fixed;
			top: 88px;
			background: white;
		}
		.col-body {
			margin-top: 190px;
		}
	</style>
</head>
<body>
	<div>
		<div class="container-table100" style="width: 100%">
			<div class="wrap-table100">
				<div class="table100 ver1">
					<div>
						<div class="table100-nextcols">
                            <table class="fixed_headers">
                                <thead>
                                    <tr class="row100 head">
                                        <th class="cell100 column2">Họ tên</th>
                                        <th class="cell100 column3">Email</th>
                                        <th class="cell100 column4">Điện thoại</th>
                                        <th class="cell100 column5">Tin nhắn</th>
                                    </tr>
                                </thead>
                            </table>
							<table>
								<tbody class="col-body">
                                    <?php 
                                        while($row = mysqli_fetch_array($data["GetMessage"])){
                                            echo '
                                                <tr class="row100 body">
                                                    <td class="cell100 column2">'.$row["name"].'</td>
                                                    <td class="cell100 column3">'.$row["email"].'</td>
                                                    <td class="cell100 column4">'.$row["phone"].'</td>
                                                    <td class="cell100 column5">'.$row["message"].'</td>
                                                </tr>
                                            ';
                                        }
                                    ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	
	<script src="./public/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="./public/vendor/bootstrap/js/popper.js"></script>
	<script src="./public/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="./public/vendor/select2/select2.min.js"></script>

	<script src="./public/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})

			$(this).on('ps-x-reach-start', function(){
				$(this).parent().find('.table100-firstcol').removeClass('shadow-table100-firstcol');
			});

			$(this).on('ps-scroll-x', function(){
				$(this).parent().find('.table100-firstcol').addClass('shadow-table100-firstcol');
			});

		});

		
		
		
	</script>

	<script src="./public/js/main.js"></script>

</body>
</html>